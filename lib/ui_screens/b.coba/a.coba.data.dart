part of '_index.dart';

class CobaData {
  final rxTitle = 'Coba'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;
}
