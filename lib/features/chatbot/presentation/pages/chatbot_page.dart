import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:kit/core/di/get_it.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/features/chatbot/data/models/chat_bot_response_dto.dart';
import 'package:kit/features/chatbot/presentation/bloc/chatbot_bloc.dart';
import 'package:kit/shared/widgets/back_appbar.dart';

class ChatbotPage extends StatefulWidget {
  const ChatbotPage({super.key});

  @override
  State<ChatbotPage> createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<ChatbotPage> {
  late final InMemoryChatController _chatController;
  final Set<String> _insertedMessageIds = {};

  @override
  void initState() {
    super.initState();
    // all event initial
    _chatController = InMemoryChatController();
  }

  @override
  void dispose() {
    _chatController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChatbotBloc>()..add(ChatBotInitial()),
      child: Scaffold(
        backgroundColor: context.appTheme.surfaceColor,
        appBar: AppBar(
          backgroundColor: context.appTheme.surfaceColor,
          surfaceTintColor: context.appTheme.surfaceColor,
          elevation: 0,
          leading: const BackAppbar(),
          title: Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundColor: context.appTheme.primaryColor,
                child: Icon(
                  Icons.smart_toy_outlined,
                  size: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Grok',
                    style: context.textStyle.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'AI Assistant',
                    style: context.textStyle.bodySmall?.copyWith(
                      color: context.appTheme.textSubtle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: BlocConsumer<ChatbotBloc, ChatbotState>(
          listenWhen: (previous, current) => 
            previous.messages.length != current.messages.length ||
            previous.status != current.status,
          listener: (context, state) {
            if(state.status == ChatbotStatus.initial && state.messages.isNotEmpty)  {
              _syncMessages(state);
              return;
            }
            log('Chatbot state changed: ${state.messages.length} messages, status: ${state.status}');
            // insert new messages to chat controller
            if (state.messages.isNotEmpty) {
              final chatMessage = TextMessage(
                id: state.messages.last.id,
                authorId: state.messages.last.role,
                createdAt: state.messages.last.createdAt,
                text: state.messages.last.content,
              );
              if (!_insertedMessageIds.contains(chatMessage.id)) {
                _insertedMessageIds.add(chatMessage.id);
                _chatController.insertMessage(chatMessage);
              }
            }
            
            // Show error if needed
            if (state.status == ChatbotStatus.error && state.errorMessage != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errorMessage!)),
              );
            }
          },
          buildWhen: (previous, current) =>
            previous.status != current.status,
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: Chat(
                    chatController: _chatController,
                    currentUserId: 'user',
                    resolveUser: (UserID id) async {
                      return User(id: id, name: 'John Doe');
                    },
                    onMessageSend: (text) {
                      context.read<ChatbotBloc>().add(SendMessage(message: text));
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  void _syncMessages(ChatbotState state) {
    // Only insert messages that haven't been inserted yet
    final newMessages = state.messages
        .where((msg) => !_insertedMessageIds.contains(msg.id))
        .map((msg) {
      _insertedMessageIds.add(msg.id);
      return TextMessage(
        authorId: msg.role,
        id: msg.id,
        createdAt: msg.createdAt,
        text: msg.content,
      );
    }).toList();

    if (newMessages.isNotEmpty) {
      // Reverse to show newest at bottom
      _chatController.insertAllMessages(newMessages);
    }
  }
  Widget _buildTextMessage(
    BuildContext context,
    TextMessage message, {
    required int index,
  }) {
    final isUser = message.authorId == 'user';
  
    return Container(
      margin: EdgeInsets.only(
        left: isUser ? 48 : 8,
        right: isUser ? 8 : 48,
        top: 4,
        bottom: 4,
      ),
      child: Row(
        mainAxisAlignment:
            isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isUser) ...[
            CircleAvatar(
              radius: 16,
              backgroundColor: context.appTheme.primaryColor,
              child: const Icon(
                Icons.smart_toy_outlined,
                size: 18,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 8),
          ],
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: isUser
                    ? context.appTheme.primaryColor
                    : context.appTheme.surfaceColor.withAlpha(200),
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(20),
                  topRight: const Radius.circular(20),
                  bottomLeft: Radius.circular(isUser ? 20 : 4),
                  bottomRight: Radius.circular(isUser ? 4 : 20),
                ),
                border: isUser
                    ? null
                    : Border.all(
                        color: context.appTheme.textSubtle.withAlpha(50),
                      ),
              ),
              child: Text(
                message.text,
                style: context.textStyle.bodyMedium?.copyWith(
                  color: isUser
                      ? Colors.white
                      : context.appTheme.onSurfaceColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


}

class _ChatInput extends StatefulWidget {
  const _ChatInput({
    required this.onSendPressed,
    required this.isSending,
  });

  final void Function(String) onSendPressed;
  final bool isSending;

  @override
  State<_ChatInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<_ChatInput> {
  final _textController = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _handleSend() {
    final text = _textController.text.trim();
    if (text.isNotEmpty && !widget.isSending) {
      widget.onSendPressed(text);
      _textController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: context.appTheme.surfaceColor,
        border: Border(
          top: BorderSide(
            color: context.appTheme.textSubtle.withAlpha(30),
          ),
        ),
      ),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: context.appTheme.onSurfaceColor.withAlpha(10),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: TextField(
                  controller: _textController,
                  focusNode: _focusNode,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    hintText: 'Message Grok...',
                    hintStyle: context.textStyle.bodyMedium?.copyWith(
                      color: context.appTheme.textSubtle,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                  ),
                  style: context.textStyle.bodyMedium,
                  onSubmitted: (_) => _handleSend(),
                ),
              ),
            ),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: _handleSend,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: context.appTheme.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: widget.isSending
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : const Icon(
                        Icons.arrow_upward_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
