import 'dart:async';

class Debounce {
  Duration delay;
  Timer? _timer;

  Debounce(
    this.delay,
  );

  void call(void Function() callback) {
    _timer?.cancel();
    _timer = Timer(delay, callback);
  }

  void dispose() {
    _timer?.cancel();
  }
    /// For asynchronous callbacks (like API calls)
  Future<void> callAsync(Future<void> Function() callback) async {
    _timer?.cancel();
    final completer = Completer<void>();

    _timer = Timer(delay, () async {
      try {
        await callback();
        completer.complete();
      } catch (e, st) {
        completer.completeError(e, st);
      }
    });

    return completer.future;
  }
}