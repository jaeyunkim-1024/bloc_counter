import 'dart:async';

class CountBloc {
  int _count = 0;

  final StreamController _countSubject = StreamController.broadcast();

  Stream get count => _countSubject.stream;

  add() {
    _count++;
    _countSubject.sink.add(_count);
  }

  remove() {
    _count--;
    _countSubject.sink.add(_count);
  }

  dispose() {
    _countSubject.close();
  }
}
