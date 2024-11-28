part of '../_index.dart';

class ProdukListFab extends StatelessWidget {
  const ProdukListFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        // _ct.increaseCounter();
        // _ct.updateRandom();
        nav.to(Routes.produkAdd);
      },
    );
  }
}
