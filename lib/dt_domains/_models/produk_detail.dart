part of '_index.dart';

class ProdukDetail {
  String id;
  Produk item;
  String deskripsi;
  ProdukDetail({
    this.id = '',
    required this.item,
    this.deskripsi = '',
  });

  ProdukDetail copyWith({
    String? id,
    Produk? item,
    String? deskripsi,
  }) {
    return ProdukDetail(
      id: id ?? this.id,
      item: item ?? this.item,
      deskripsi: deskripsi ?? this.deskripsi,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'item': item.toMap()});
    result.addAll({'deskripsi': deskripsi});

    return result;
  }

  factory ProdukDetail.fromMap(Map<String, dynamic> map) {
    return ProdukDetail(
      id: map['id'] ?? '',
      item: Produk.fromMap(map['item']),
      deskripsi: map['deskripsi'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdukDetail.fromJson(String source) => ProdukDetail.fromMap(json.decode(source));

  @override
  String toString() => 'ProdukDetail(id: $id, item: $item, deskripsi: $deskripsi)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProdukDetail && other.id == id && other.item == item && other.deskripsi == deskripsi;
  }

  @override
  int get hashCode => id.hashCode ^ item.hashCode ^ deskripsi.hashCode;
}
