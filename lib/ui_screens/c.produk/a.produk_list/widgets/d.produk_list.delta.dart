part of '../_index.dart';

class ProdukListDelta extends StatelessWidget {
  const ProdukListDelta({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => nav.to(Routes.produkDetail),
      child: const Text(
        "go to detail",
      ),
    );
  }
}
