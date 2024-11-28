part of '_index.dart';

class CobaCtrl {
  init() => logxx.i(CobaCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
