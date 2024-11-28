part of '../_index.dart';

class ProdukListAppbar extends StatelessWidget {
  const ProdukListAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
      actions: [
        OutlinedButton(
          onPressed: () => _ct.loadMore(),
          child: OnBuilder.all(
            onWaiting: () => const Text('loading...'),
            onError: (error, refreshError) => Text(error),
            onData: (data) => const Text('load more'),
            listenTo: _dt.produkList,
          ),
        )
      ],
    );
  }
}
