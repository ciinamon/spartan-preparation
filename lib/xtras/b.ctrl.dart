part of '_index.dart';

abstract class Ctrl {
  static HomeCtrl get home => HomeCtrl();
  static SampleSatuCtrl get sampleSatu => SampleSatuCtrl();
  static SampleDuaCtrl get sampleDua => SampleDuaCtrl();
  static SampleTigaCtrl get sampleTiga => SampleTigaCtrl();
  static CobaCtrl get coba => CobaCtrl();
  static ProdukListCtrl get produkList => ProdukListCtrl();
  static ProdukAddCtrl get produkAdd => ProdukAddCtrl();
  static ProdukDetailCtrl get produkDetail => ProdukDetailCtrl();
  static ProdukUpdateCtrl get produkUpdate => ProdukUpdateCtrl();
}
