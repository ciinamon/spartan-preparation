part of '_index.dart';

class ProdukUpdateView extends StatelessWidget {
  const ProdukUpdateView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProdukUpdateAppbar(),
      ),
      floatingActionButton: ProdukUpdateFab(),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProdukUpdateCharlie(),
          // ProdukUpdateDelta(),
          // ProdukUpdateEcho(),
        ],
      ),
    );
  }
}
