part of '_index.dart';

class ProdukAddCtrl {
  init() => logxx.i(ProdukAddCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<void> add() async {
    nav.toDialog(
      barrierDismissible: false,
      const Center(
        child: CircularProgressIndicator(),
      ),
    );

    await uploadImage();
    final docId = FirebaseFirestore.instance.collection('produk').doc().id;
    final produk = Produk(
      id: docId,
      nama: _dt.ctrlNama.text,
      stok: int.parse(_dt.ctrlStok.text),
      timeCreated: DateTime.now().millisecondsSinceEpoch.toString(),
      urlImage: _dt.url.st,
    );
    final produkDetail = ProdukDetail(
      id: docId,
      item: produk,
      deskripsi: _dt.ctrlDesc.text,
    );
    await FirebaseFirestore.instance.collection('produk').doc(docId).set(produk.toMap());
    await FirebaseFirestore.instance.collection('produk-detail').doc(docId).set(produkDetail.toMap());
    // Data.produkList.st.produkList.st.add(produk);
    Data.produkList.st.produkList.st.insert(0, produk);
    Data.produkList.st.produkList.notify();
    _dt.ctrlNama.clear();
    _dt.ctrlStok.clear();
    _dt.ctrlDesc.clear();
    nav.back();
    nav.back();
  }

  Future<void> pick() async {
    final picker = ImagePicker();
    _dt.rxfile.st = await picker.pickImage(source: ImageSource.gallery);
    _dt.rxfileByte.st = await _dt.rxfile.st!.readAsBytes();
    debugPrint(_dt.rxfile.st.toString());
  }

  Future<void> uploadImage() async {
    final meta = SettableMetadata(contentType: _dt.rxfile.st!.mimeType);
    final name = _dt.rxfile.st!.name;
    if (kIsWeb) {
      final data = _dt.rxfileByte.st!;
      await FirebaseStorage.instance.ref().child(name).putData(data, meta);
      _dt.url.st = await FirebaseStorage.instance.ref().child(name).getDownloadURL();
    } else {
      final data = File(_dt.rxfile.st!.path);
      await FirebaseStorage.instance.ref().child(name).putFile(data, meta);
    }
  }
}
