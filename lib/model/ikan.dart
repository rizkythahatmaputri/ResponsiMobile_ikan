//import 'package:http/http.dart' as http;

class Ikan {
  int? id;
  String? namaIkan;
  String? jenisIkan;
  String? warnaIkan;
  String? habitatIkan;
  Ikan(
      {this.id,
      this.namaIkan,
      this.jenisIkan,
      this.warnaIkan,
      this.habitatIkan});

  factory Ikan.fromJson(Map<String, dynamic> obj) {
    return Ikan(
      id: int.parse(obj['id'].toString()),
      namaIkan: obj['nama_ikan'].toString(),
      jenisIkan: obj['jenis_ikan'].toString(),
      warnaIkan: obj['warna_ikan'].toString(),
      habitatIkan: obj['habitat_ikan'].toString(),
    );
  }
}
