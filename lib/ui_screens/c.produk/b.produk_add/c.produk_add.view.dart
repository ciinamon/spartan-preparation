part of '_index.dart';

class ProdukAddView extends StatelessWidget {
  const ProdukAddView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProdukAddAppbar(),
      ),
      floatingActionButton: ProdukAddFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProdukAddCharlie(),
            // ProdukAddDelta(),

            // ProdukAddEcho(),
          ],
        ),
      ),
    );
  }
}
