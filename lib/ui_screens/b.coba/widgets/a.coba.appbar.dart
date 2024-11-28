part of '../_index.dart';

class CobaAppbar extends StatelessWidget {
  const CobaAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
