part of '../_index.dart';

class ProdukListCharlie extends StatelessWidget {
  const ProdukListCharlie({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => _dt.produkList.refresh(),
      child: OnBuilder.orElse(
        listenTo: _dt.produkList,
        onError: (error, refreshError) => Text(error.toString()),
        // onWaiting: () => const Center(child: CircularProgressIndicator()),
        orElse: (data) => ListView(
          children: [
            ...List.generate(
              _dt.produkList.st.length,
              (index) {
                final item = _dt.produkList.st[index];
                return OnReactive(
                  () => Card(
                    color: item.id == Data.produkDetail.st.selectedId.st ? Colors.black : null,
                    child: ListTile(
                      leading: SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.network(item.urlImage),
                      ),
                      title: Text(item.nama),
                      subtitle: Text(item.id.toString()),
                      onTap: () => _ct.toDetail(item.id),
                      // selected: item.id == Data.produkDetail.st.selectedId.st,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
