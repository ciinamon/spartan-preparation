part of '../_index.dart';

class ProdukDetailAppbar extends StatelessWidget {
  const ProdukDetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
      actions: [
        OutlinedButton(
          onPressed: () => _ct.delete(),
          child: const Text('Delete'),
        ),
      ],
    );
  }
}
