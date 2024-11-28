part of '../_index.dart';

class ProdukAddFab extends StatelessWidget {
  const ProdukAddFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.upload),
      onPressed: () {
        _ct.add();
        // _ct.increaseCounter();
        // _ct.updateRandom();
      },
    );
  }
}
