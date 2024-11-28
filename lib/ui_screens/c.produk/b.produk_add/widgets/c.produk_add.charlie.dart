part of '../_index.dart';

class ProdukAddCharlie extends StatelessWidget {
  const ProdukAddCharlie({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnReactive(
          () => _dt.rxfileByte.st == null
              ? const Text('null')
              : SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.memory(_dt.rxfileByte.st!),
                ),
        ),
        OnReactive(
          () => _dt.url.st.isEmpty
              ? const Text('empty')
              : SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.network(_dt.url.st),
                ),
        ),
        ElevatedButton(
          onPressed: () => _ct.pick(),
          child: const Text("Pick"),
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
        ElevatedButton(
          onPressed: () {
            _dt.ctrlNama.text = generateWordPairs().take(2).join(' ');
            _dt.ctrlStok.text = Random().nextInt(100).toString();
            _dt.ctrlDesc.text = generateWordPairs().take(10).join(' ');
          },
          child: const Text("Generate input"),
        ),
      ],
    );
  }
}
