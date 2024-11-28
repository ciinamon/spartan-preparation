part of '../_index.dart';

class ProdukUpdateFab extends StatelessWidget {
  const ProdukUpdateFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.save),
      onPressed: () {
        _ct.update(
          _dt.ctrlId.text,
          ProdukDetail(
            item: Produk(
              id: _dt.ctrlId.text,
              nama: _dt.ctrlNama.text,
              stok: int.parse(_dt.ctrlStok.text),
            ),
            deskripsi: _dt.ctrlDesc.text,
          ),
        );
        // _ct.increaseCounter();
        // _ct.updateRandom();
      },
    );
  }
}
