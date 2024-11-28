part of '_index.dart';

class CobaView extends StatelessWidget {
  const CobaView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CobaAppbar(),
      ),
      floatingActionButton: CobaFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CobaCharlie(),
            CobaDelta(),
            CobaEcho(),
          ],
        ),
      ),
    );
  }
}
