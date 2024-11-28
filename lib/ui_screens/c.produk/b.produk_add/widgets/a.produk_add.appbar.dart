part of '../_index.dart';

class ProdukAddAppbar extends StatelessWidget {
  const ProdukAddAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
