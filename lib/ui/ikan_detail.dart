import 'package:flutter/material.dart';
import 'package:tugas_ikan/bloc/ikan_bloc.dart';
import 'package:tugas_ikan/model/ikan.dart';
import 'package:tugas_ikan/ui/ikan_form.dart';
import 'package:tugas_ikan/ui/ikan_page.dart';
import 'package:tugas_ikan/widget/warning_dialog.dart';

class IkanDetail extends StatefulWidget {
  final Ikan? ikan;

  IkanDetail({Key? key, this.ikan}) : super(key: key);

  @override
  _IkanDetailState createState() => _IkanDetailState();
}

class _IkanDetailState extends State<IkanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Ikan'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Nama Ikan: ${widget.ikan!.namaIkan}",
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              "Jenis Ikan: ${widget.ikan!.jenisIkan}",
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              "Warna Ikan: ${widget.ikan!.warnaIkan}",
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              "Habitat Ikan: ${widget.ikan!.habitatIkan}",
              style: TextStyle(fontSize: 18.0),
            ),
            _tombolHapusEdit()
          ],
        ),
      ),
    );
  }

  Widget _tombolHapusEdit() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        OutlinedButton(
          child: Text("EDIT"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => IkanForm(
                  ikan: widget.ikan!,
                ),
              ),
            );
          },
        ),
        OutlinedButton(
          child: const Text("DELETE"),
          onPressed: () => confirmHapus(),
        ),
      ],
    );
  }

  void confirmHapus() {
    AlertDialog alertDialog = AlertDialog(
      content: const Text("Yakin ingin menghapus data ini?"),
      actions: [
        // Tombol hapus
        OutlinedButton(
          child: const Text("YA"),
          onPressed: () {
            IkanBloc.delete(widget.ikan!.id as String?).then((value) {
              if (value) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const IkanPage(),
                ));
              } else {
                showDialog(
                  context: context,
                  builder: (context) => const WarningDialog(
                    description: "Gagal menghapus data. Silakan dicoba lagi.",
                  ),
                );
              }
            }).catchError((error) {});

            Navigator.pop(context);
          },
        ),
        // Tombol batal
        OutlinedButton(
          child: const Text("Batal"),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );

    showDialog(builder: (context) => alertDialog, context: context);
  }
}
