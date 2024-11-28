part of '_index.dart';

class Produk {
  String id;
  String nama;
  int stok;
  String timeCreated;
  String urlImage;
  Produk({
    this.id = '',
    this.nama = '',
    this.stok = 0,
    this.timeCreated = '',
    this.urlImage = '',
  });

  Produk copyWith({
    String? id,
    String? nama,
    int? stok,
    String? timeCreated,
    String? urlImage,
  }) {
    return Produk(
      id: id ?? this.id,
      nama: nama ?? this.nama,
      stok: stok ?? this.stok,
      timeCreated: timeCreated ?? this.timeCreated,
      urlImage: urlImage ?? this.urlImage,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'nama': nama});
    result.addAll({'stok': stok});
    result.addAll({'time_created': timeCreated});
    result.addAll({'url_image': urlImage});

    return result;
  }

  factory Produk.fromMap(Map<String, dynamic> map) {
    return Produk(
      id: map['id'] ?? '',
      nama: map['nama'] ?? '',
      stok: map['stok']?.toInt() ?? 0,
      timeCreated: map['time_created'] ?? '',
      urlImage: map['url_image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Produk.fromJson(String source) => Produk.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Produk(id: $id, nama: $nama, stok: $stok, timeCreated: $timeCreated, urlImage: $urlImage)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Produk &&
        other.id == id &&
        other.nama == nama &&
        other.stok == stok &&
        other.timeCreated == timeCreated &&
        other.urlImage == urlImage;
  }

  @override
  int get hashCode {
    return id.hashCode ^ nama.hashCode ^ stok.hashCode ^ timeCreated.hashCode ^ urlImage.hashCode;
  }
}
