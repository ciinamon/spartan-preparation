part of '../_index.dart';

class ProdukUpdateAppbar extends StatelessWidget {
  const ProdukUpdateAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
