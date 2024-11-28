part of '_index.dart';

class ProdukDetailData {
  final rxTitle = 'Produk Detail'.inj();

  final selectedId = ''.inj();

  final produkDetail = RM.injectFuture<ProdukDetail>(
    () => _ct.getProdukDetail(),
  );
}
