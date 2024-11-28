import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projeku/dt_domains/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.produk_detail.data.dart';
part 'b.produk_detail.ctrl.dart';
part 'c.produk_detail.view.dart';
part 'widgets/a.produk_detail.appbar.dart';
part 'widgets/b.produk_detail.fab.dart';
part 'widgets/c.produk_detail.charlie.dart';
part 'widgets/d.produk_detail.delta.dart';
part 'widgets/e.produk_detail.echo.dart';

ProdukDetailData get _dt => Data.produkDetail.st;
ProdukDetailCtrl get _ct => Ctrl.produkDetail;
