part of '../_index.dart';

class CobaCharlie extends StatelessWidget {
  const CobaCharlie({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${_dt.rxCounter.st}')),
        OnReactive(() => Text('${_dt.rxRandom.st}')),
      ],
    );
  }
}
