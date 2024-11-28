part of '_index.dart';

class ProdukListData {
  final rxTitle = 'Produk List'.inj();

  final produkList = RM.injectFuture<List<Produk>>(
    () => _ct.getProdukList(),
    initialState: [],
    stateInterceptor: (currentSnap, nextSnap) {
      if (nextSnap.hasData) {
        debugPrint(nextSnap.toString());
        return nextSnap.copyToHasData([
          ...currentSnap.state,
          ...nextSnap.state,
        ]);
      }
      return nextSnap;
    },
  );
}
