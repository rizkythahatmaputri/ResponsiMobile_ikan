//import 'package:http/http.dart' as http;

class Ikan {
  String? id;
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
        id: obj['id'],
        namaIkan: obj['nama'],
        jenisIkan: obj['jenis'],
        habitatIkan: obj['habitat'],
        warnaIkan: obj['warna']);
  }
}
