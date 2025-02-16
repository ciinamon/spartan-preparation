import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projeku/firebase_options.dart';

import 'app/_index.dart';

void main() async {
  //todo: uncomment line below to init repo.mock files
  // await Mocks.instance.init();
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await inits();

  runApp(const App());
}
