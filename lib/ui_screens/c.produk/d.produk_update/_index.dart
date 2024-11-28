import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projeku/dt_domains/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.produk_update.data.dart';
part 'b.produk_update.ctrl.dart';
part 'c.produk_update.view.dart';
part 'widgets/a.produk_update.appbar.dart';
part 'widgets/b.produk_update.fab.dart';
part 'widgets/c.produk_update.charlie.dart';
part 'widgets/d.produk_update.delta.dart';
part 'widgets/e.produk_update.echo.dart';

ProdukUpdateData get _dt => Data.produkUpdate.st;
ProdukUpdateCtrl get _ct => Ctrl.produkUpdate;
