part of '_index.dart';

class ProdukDetailView extends StatelessWidget {
  const ProdukDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProdukDetailAppbar(),
      ),
      floatingActionButton: ProdukDetailFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProdukDetailCharlie(),
            // ProdukDetailDelta(),
            // ProdukDetailEcho(),
          ],
        ),
      ),
    );
  }
}
