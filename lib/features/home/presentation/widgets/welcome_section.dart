import 'dart:isolate';
import 'package:flutter/material.dart';
import 'package:flutter_isolate/flutter_isolate.dart';
import 'package:kit/core/extensions/context.dart';
import 'package:kit/features/home/presentation/widgets/color_changing_ball.dart';
import 'package:kit/shared/widgets/app_button.dart';

@pragma('vm:entry-point')
void computeLargeNumber(SendPort sendPort)async {
  final ReceivePort receivePort = ReceivePort();
  sendPort.send(receivePort.sendPort);
  int timeDelay = 2000;
  receivePort.listen((message) {
    if(message is String && message == 'boost_speed'){
      debugPrint('Isolate boosting speed');
      timeDelay = 100;
      return;
    }
    if (message is String && message == 'start') {
      debugPrint('Isolate started computation');

      () async {
        for (int i = 0; i < 100; i++) {
          debugPrint('timeDelay: $timeDelay');
          sendPort.send(i);
          await Future.delayed(Duration(milliseconds: timeDelay));
        }
        receivePort.close();
      }();
      return;
    }
  });
  
}

/// Welcome section displaying the app introduction
class WelcomeSection extends StatefulWidget {
  const WelcomeSection({super.key});

  @override
  State<WelcomeSection> createState() => _WelcomeSectionState();
}

class _WelcomeSectionState extends State<WelcomeSection> {

  int _computedValue = 0;
  bool isPerform = false;
  FlutterIsolate? _isolate;
  @override
  void dispose() {
    _isolate?.kill(priority: Isolate.immediate);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final l10n = context.locale;
    
    return Center(
      child: Semantics(
        label: l10n.welcomeSection,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            ColorChangingBall(),
            Text(
              l10n.welcomeTitle,
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              _computedValue.toString(),
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: 100,
              child: AppButton.elevated(
                isDisabled : isPerform,
                onPressed: () async{ 
                  var port = ReceivePort(); 
                  SendPort? workerSendPort; 
                  setState(() { isPerform = true; _computedValue = 0; }); 
                  port.listen((message) { 
                    if(message is int){ 
                      setState(() { _computedValue = message; }); 
                    }

                    if(message is int && message == 5){ //stop isolate when reaching 45 
                      workerSendPort!.send('boost_speed'); 
                      return; 
                    } 
                    if(message is SendPort){ //sendPort to isolate 
                      workerSendPort = message; workerSendPort!.send('start'); 
                      return; 
                    } 
                    if(message == 99){ 
                      setState(() { isPerform = false; }); 
                      port.close(); 
                      _isolate?.kill(priority: Isolate.immediate); 
                    } 
                  }); 
                  _isolate = await FlutterIsolate.spawn(computeLargeNumber, port.sendPort); 
                },
                text: 'Compute',
                padding: const EdgeInsets.symmetric(vertical: 6),
              ),
            )
          ],
        ),
      ),
    );
  }
}
