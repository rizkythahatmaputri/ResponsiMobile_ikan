import 'package:flutter/material.dart';
import 'package:tugas_ikan/model/ikan.dart';

class IkanForm extends StatefulWidget {
  final Ikan? ikan;

  IkanForm({Key? key, this.ikan}) : super(key: key);

  @override
  _IkanFormState createState() => _IkanFormState();
}

class _IkanFormState extends State<IkanForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  String judul = "TAMBAH IKAN";
  String tombolSubmit = "SIMPAN";

  //final _idController = TextEditingController();
  final _namaIkanController = TextEditingController();
  final _jenisIkanController = TextEditingController();
  final _warnaIkanController = TextEditingController();
  final _habitatIkanController = TextEditingController();

  @override
  void initState() {
    super.initState();
    isUpdate();
  }

  isUpdate() {
    if (widget.ikan != null) {
      setState(() {
        judul = "UBAH IKAN";
        tombolSubmit = "UBAH";
        //_idController.text = widget.ikan!.id.toString();
        _namaIkanController.text = widget.ikan!.namaIkan!;
        _jenisIkanController.text = widget.ikan!.jenisIkan!;
        _warnaIkanController.text = widget.ikan!.warnaIkan!;
        _habitatIkanController.text = widget.ikan!.habitatIkan!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(judul)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                //_idTextField(),
                _namaIkanTextField(),
                _jenisIkanTextField(),
                _warnaIkanTextField(),
                _habitatIkanTextField(),
                _buttonSubmit(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget _idTextField() {
  //   return TextFormField(
  //     decoration: const InputDecoration(labelText: "ID"),
  //     keyboardType: TextInputType.number,
  //     controller: _idController,
  //     validator: (value) {
  //       if (value!.isEmpty) {
  //         return "ID harus diisi";
  //       }
  //       return null;
  //     },
  //   );
  // }

  Widget _namaIkanTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Nama Ikan"),
      keyboardType: TextInputType.text,
      controller: _namaIkanController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Nama Ikan harus diisi";
        }
        return null;
      },
    );
  }

  Widget _jenisIkanTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Jenis Ikan"),
      keyboardType: TextInputType.text,
      controller: _jenisIkanController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Jenis Ikan harus diisi";
        }
        return null;
      },
    );
  }

  Widget _warnaIkanTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Warna Ikan"),
      keyboardType: TextInputType.text,
      controller: _warnaIkanController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Warna Ikan harus diisi";
        }
        return null;
      },
    );
  }

  Widget _habitatIkanTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Habitat Ikan"),
      keyboardType: TextInputType.text,
      controller: _habitatIkanController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Habitat Ikan harus diisi";
        }
        return null;
      },
    );
  }

  Widget _buttonSubmit() {
    return OutlinedButton(
      child: Text(tombolSubmit),
      onPressed: () {
        var validate = _formKey.currentState!.validate();
        if (validate) {
          if (!_isLoading) {
            if (widget.ikan != null) {
              ubah();
            } else {
              simpan();
            }
          }
        }
      },
    );
  }

  simpan() {
    setState(() {
      _isLoading = true;
    });
    Ikan createIkan = Ikan(id: null);
    createIkan.namaIkan = _namaIkanController.text;
    createIkan.jenisIkan = _jenisIkanController.text;
    createIkan.warnaIkan = _warnaIkanController.text;
    createIkan.habitatIkan = _habitatIkanController.text;

    // Implementasi penyimpanan ke database atau API di sini
    // Gantilah dengan logika penyimpanan sesuai dengan kebutuhan aplikasi Anda

    setState(() {
      _isLoading = false;
    });
  }

  ubah() {
    setState(() {
      _isLoading = true;
    });
    Ikan updateIkan = Ikan(id: null);
    updateIkan.namaIkan = _namaIkanController.text;
    updateIkan.jenisIkan = _jenisIkanController.text;
    updateIkan.warnaIkan = _warnaIkanController.text;
    updateIkan.habitatIkan = _habitatIkanController.text;

    // Implementasi pembaharuan data ke database atau API di sini
    // Gantilah dengan logika pembaharuan sesuai dengan kebutuhan aplikasi Anda

    setState(() {
      _isLoading = false;
    });
  }
}