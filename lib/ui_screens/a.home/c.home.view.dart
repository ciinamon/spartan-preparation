part of '_index.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: HomeAppbar(),
      ),
      // floatingActionButton: HomeFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // OnReactive(
            //   () => rxfileByte.st == null
            //       ? const Text('null')
            //       : SizedBox(
            //           height: 100,
            //           width: 100,
            //           child: Image.memory(rxfileByte.st!),
            //         ),
            // ),

            // const SizedBox(height: 30),
            // ElevatedButton(
            //   onPressed: () => pick(),
            //   child: const Text("Pick"),
            // ),
            // const SizedBox(height: 30),
            // ElevatedButton(
            //   onPressed: () => upload(),
            //   child: const Text("Upload"),
            // ),
            // const SizedBox(height: 30),
            // OnReactive(
            //   () => url.st.isEmpty
            //       ? const Text('empty')
            //       : SizedBox(
            //           height: 100,
            //           width: 100,
            //           child: Image.network(url.st),
            //         ),
            // ),
            // ElevatedButton(
            //   onPressed: () => nav.to(Routes.produkList),
            //   child: const Text("Go to produklist"),
            // ),
          ],
        ),
      ),
    );
  }
}

// final rxfile = RM.inject<XFile?>(() => null);
// final rxfileByte = RM.inject<Uint8List?>(() => null);
// final url = RM.inject<String>(() => '');

// Future<void> pick() async {
//   final picker = ImagePicker();
//   rxfile.st = await picker.pickImage(source: ImageSource.gallery);
//   rxfileByte.st = await rxfile.st!.readAsBytes();
//   debugPrint(rxfile.st.toString());
// }

// Future<void> upload() async {
//   final meta = SettableMetadata(contentType: rxfile.st!.mimeType);
//   final name = rxfile.st!.name;
//   if (kIsWeb) {
//     final data = rxfileByte.st!;
//     await FirebaseStorage.instance.ref().child(name).putData(data, meta);
//     url.st = await FirebaseStorage.instance.ref().child(name).getDownloadURL();
//   } else {
//     final data = File(rxfile.st!.path);
//     await FirebaseStorage.instance.ref().child(name).putFile(data, meta);
//   }
// }
