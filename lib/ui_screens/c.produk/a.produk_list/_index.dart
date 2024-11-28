import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projeku/dt_domains/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.produk_list.data.dart';
part 'b.produk_list.ctrl.dart';
part 'c.produk_list.view.dart';
part 'widgets/a.produk_list.appbar.dart';
part 'widgets/b.produk_list.fab.dart';
part 'widgets/c.produk_list.charlie.dart';
part 'widgets/d.produk_list.delta.dart';
part 'widgets/e.produk_list.echo.dart';

ProdukListData get _dt => Data.produkList.st;
ProdukListCtrl get _ct => Ctrl.produkList;
