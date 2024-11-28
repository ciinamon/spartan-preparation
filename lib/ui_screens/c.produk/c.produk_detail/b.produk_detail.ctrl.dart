part of '_index.dart';

class ProdukDetailCtrl {
  init() => logxx.i(ProdukDetailCtrl, '...');

  Future<ProdukDetail> getProdukDetail() async {
    final result = await FirebaseFirestore.instance.collection('produk-detail').doc(_dt.selectedId.st).get();

    final produkDetail = ProdukDetail.fromMap(result.data()!);
    return produkDetail;
  }

  void toUpdatePage() {
    Data.produkUpdate.st.ctrlId.text = _dt.produkDetail.st.id;
    Data.produkUpdate.st.ctrlNama.text = _dt.produkDetail.st.item.nama;
    Data.produkUpdate.st.ctrlStok.text = _dt.produkDetail.st.item.stok.toString();
    Data.produkUpdate.st.ctrlDesc.text = _dt.produkDetail.st.deskripsi;
    nav.to(Routes.produkUpdate);
  }

  Future<void> delete() async {
    nav.toDialog(const Center(child: CircularProgressIndicator()));
    await FirebaseFirestore.instance.collection('produk').doc(_dt.selectedId.st).delete();
    await FirebaseFirestore.instance.collection('produk-detail').doc(_dt.selectedId.st).delete();

    Data.produkList.st.produkList.st.removeWhere(
      (element) => element.id == _dt.selectedId.st,
    );

    Data.produkList.st.produkList.notify();

    // final listx = [...Data.produkList.st.produkList.st];

    // listx.removeWhere(
    //   (element) => element.id == _dt.selectedId.st,
    // );

    // Data.produkList.st.produkList.st = listx;

    nav.back();
    nav.back();
  }
}
