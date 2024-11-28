part of '../_index.dart';

class ProdukDetailFab extends StatelessWidget {
  const ProdukDetailFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.edit),
      onPressed: () {
        // _ct.increaseCounter();
        // _ct.updateRandom();
        // nav.to(Routes.produkUpdate);
        _ct.toUpdatePage();
      },
    );
  }
}
