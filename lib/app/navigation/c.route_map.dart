part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    Routes.home: (RouteData data) => const HomeView(),
    Routes.sampleSatu: (RouteData data) => const SampleSatuView(),
    Routes.sampleDua: (RouteData data) => const SampleDuaView(),
    Routes.sampleTiga: (RouteData data) => const SampleTigaView(),
    Routes.coba: (RouteData data) => const CobaView(),
    Routes.produkAdd: (RouteData data) => const ProdukAddView(),
    Routes.produkList: (RouteData data) => const ProdukListView(),
    Routes.produkDetail: (RouteData data) => const ProdukDetailView(),
    Routes.produkUpdate: (RouteData data) => const ProdukUpdateView(),
  };
}
