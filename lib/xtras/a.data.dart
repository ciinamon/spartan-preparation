part of '_index.dart';

abstract class Data {
  static Injected<HomeData> get home => _homeData;
  static Injected<SampleSatuData> get sampleSatu => _sampleSatuData;
  static Injected<SampleDuaData> get sampleDua => _sampleDuaData;
  static Injected<SampleTigaData> get sampleTiga => _sampleTigaData;
  static Injected<CobaData> get coba => _cobaData;
  static Injected<ProdukListData> get produkList => _produkListData;
  static Injected<ProdukAddData> get produkAdd => _produkAddData;
  static Injected<ProdukDetailData> get produkDetail => _produkDetailData;
  static Injected<ProdukUpdateData> get produkUpdate => _produkUpdateData;
}

final _homeData = RM1.inj(HomeData(), Ctrl.home.init);
final _sampleSatuData = RM1.inj(SampleSatuData(), Ctrl.sampleSatu.init);
final _sampleDuaData = RM1.inj(SampleDuaData(), Ctrl.sampleDua.init);
final _sampleTigaData = RM1.inj(SampleTigaData(), Ctrl.sampleTiga.init);
final _cobaData = RM1.inj(CobaData(), Ctrl.coba.init);
final _produkListData = RM1.inj(ProdukListData(), Ctrl.produkList.init);
final _produkAddData = RM1.inj(ProdukAddData(), Ctrl.produkAdd.init);
final _produkDetailData = RM1.inj(ProdukDetailData(), Ctrl.produkDetail.init);
final _produkUpdateData = RM1.inj(ProdukUpdateData(), Ctrl.produkUpdate.init);
