import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:english_words/english_words.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:projeku/dt_domains/_models/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.produk_add.data.dart';
part 'b.produk_add.ctrl.dart';
part 'c.produk_add.view.dart';
part 'widgets/a.produk_add.appbar.dart';
part 'widgets/b.produk_add.fab.dart';
part 'widgets/c.produk_add.charlie.dart';
part 'widgets/d.produk_add.delta.dart';
part 'widgets/e.produk_add.echo.dart';

ProdukAddData get _dt => Data.produkAdd.st;
ProdukAddCtrl get _ct => Ctrl.produkAdd;
