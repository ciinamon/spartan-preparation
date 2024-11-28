part of '_index.dart';

class ProdukAddData {
  final ctrlNama = TextEditingController();
  final ctrlStok = TextEditingController();
  final ctrlDesc = TextEditingController();

  final rxTitle = 'Produk Add'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final produk1 = Produk(
    nama: 'beras',
    stok: 200,
  );

  final produk1detail = ProdukDetail(
      item: Produk(
        nama: 'beras',
        stok: 200,
      ),
      deskripsi:
          'ini adalah beras berkualitas impor dari negara jerman anda harus membelinya karena ini murah meriah ya jadi kamu harus beli');

  final rxfile = RM.inject<XFile?>(() => null);
  final rxfileByte = RM.inject<Uint8List?>(() => null);
  final url = RM.inject<String>(() => '');
}
