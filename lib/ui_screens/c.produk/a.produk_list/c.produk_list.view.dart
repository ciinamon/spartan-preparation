part of '_index.dart';

class ProdukListView extends StatelessWidget {
  const ProdukListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProdukListAppbar(),
      ),
      floatingActionButton: ProdukListFab(),
      body: ProdukListCharlie(),
    );
  }
}
