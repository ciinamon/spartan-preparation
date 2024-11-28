part of '../_index.dart';

class ProdukDetailCharlie extends StatelessWidget {
  const ProdukDetailCharlie({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnBuilder.all(
          listenTo: _dt.produkDetail,
          onWaiting: () => const Center(child: CircularProgressIndicator()),
          onError: (error, refreshError) => Text(error),
          onData: (data) => Column(
            children: [
              Text(data.item.id.toString()),
              Text(data.item.stok.toString()),
              Text(data.item.nama.toString()),
              Text(data.deskripsi),
            ],
          ),
        )
      ],
    );
  }
}
