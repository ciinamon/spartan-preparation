part of '../_index.dart';

class ProdukUpdateCharlie extends StatelessWidget {
  const ProdukUpdateCharlie({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: const InputDecoration(border: OutlineInputBorder()),
            controller: _dt.ctrlId,
            enabled: false,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: const InputDecoration(border: OutlineInputBorder()),
            controller: _dt.ctrlNama,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: const InputDecoration(border: OutlineInputBorder()),
            controller: _dt.ctrlStok,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: const InputDecoration(border: OutlineInputBorder()),
            controller: _dt.ctrlDesc,
          ),
        ),
      ],
    );
  }
}
