part of '_index.dart';

class ProdukUpdateCtrl {
  init() => logxx.i(ProdukUpdateCtrl, '...');

  Future<void> update(String id, ProdukDetail produkDetail) async {
    nav.toDialog(
      const Center(child: CircularProgressIndicator()),
    );
    final dataProduk = produkDetail.item.toMap();
    final dataProdukDetail = produkDetail.toMap();
    await FirebaseFirestore.instance.collection('produk').doc(id).update(dataProduk);
    await FirebaseFirestore.instance.collection('produk-detail').doc(id).update(dataProdukDetail);

    Data.produkDetail.st.produkDetail.st = produkDetail;

    final index = Data.produkList.st.produkList.st.indexWhere(
      (element) => element.id == id,
    );

    Data.produkList.st.produkList.st[index] = produkDetail.item;

    Data.produkDetail.st.produkDetail.notify();
    Data.produkList.st.produkList.notify();

    _dt.ctrlNama.clear();
    _dt.ctrlStok.clear();
    _dt.ctrlDesc.clear();
    nav.back();
    nav.back();
  }
}
