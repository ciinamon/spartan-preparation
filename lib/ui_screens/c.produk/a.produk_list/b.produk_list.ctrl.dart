part of '_index.dart';

class ProdukListCtrl {
  init() => logxx.i(ProdukListCtrl, '...');

  void loadMore() {
    _dt.produkList.stateAsync = getProdukList();
  }

  Future<List<Produk>> getProdukList() async {
    final db = FirebaseFirestore.instance;
    var ref = db.collection('produk').orderBy('time_created', descending: true).limit(3);
    if (_dt.produkList.st.isNotEmpty) {
      final timeCreated = _dt.produkList.st.last.timeCreated;
      ref = db.collection('produk').orderBy('time_created', descending: true).startAfter([timeCreated]).limit(3);
    }
    final result = await ref.get();
    final List<Produk> listx = [];
    for (var element in result.docs) {
      listx.add(Produk.fromMap(element.data()));
    }
    return listx;
  }

  void toDetail(String id) {
    Data.produkDetail.st.selectedId.st = id;
    nav.to(Routes.produkDetail);
  }
}
