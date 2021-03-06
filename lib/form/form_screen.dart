import 'package:books_app/form/widget/widget_textformfield.dart';
import 'package:flutter/material.dart';

import 'custom_dialog.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key key}) : super(key: key);

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _namacontroller = TextEditingController();
  TextEditingController _alamatcontroller = TextEditingController();
  TextEditingController _mobilecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();

  TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);
  DateTime _date = DateTime(2021, 09, 12);

  String _nama;
  String _alamat;
  String _notelp;
  String _email ;
  String _jk = "";
  String _hobi = "";
  bool baca = false;
  bool renang = false;
  bool game = false;
  String tanggal = "";
  String waktu = "";

  String validateNama(String value){
    if(value.isEmpty){
      return "Nama tidak boleh kosong";
    }
  }

  String validateEmail(String value) {
    Pattern pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value) || value == null)
      return 'harap masukan Email yang valid';
    else
      return null;
  }

  String validateMobile(String value) {
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return 'Nomor Telepon tidak boleh kosong';
    }
    else if (!regExp.hasMatch(value)) {
      return 'Harap masukan nomor telepon dengan benar';
    }
    return null;
  }


  String validateAlamat(String value){
    if(value.isEmpty){
      return "Alamat tidak boleh kosong";
    }
  }


  void _selectDate() async {
    final DateTime newDate = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2017, 1),
      lastDate: DateTime(2022, 7),
      helpText: 'Select a date',
    );
    if (newDate != null) {
      setState(() {
        _date = newDate;
      });
    }
  }

  void _selectTime() async {
    final TimeOfDay newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }


  Widget _buildNama(){
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: WidgetTextFormField(
          labelText: "Masukan Nama",
          hintText: "nama",
          controller: _namacontroller,
          inputType: TextInputType.text,
          validator: validateNama,
        )
    );
  }

  Widget _buildAlamat(){
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: WidgetTextFormField(
          labelText: "Masukan Alamat",
          hintText: "Alamat",
          maxLines: 3,
          controller: _alamatcontroller,
          inputType: TextInputType.text,
          validator: validateAlamat,
        )
    );
  }

  Widget _buildnotelp(){
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: WidgetTextFormField(
          labelText: "Masukan Nomor Telepon",
          hintText: "08xxxxxxxx",
          controller: _mobilecontroller,
          inputType: TextInputType.phone,
          validator: validateMobile,
        )
    );
  }

  Widget _buildEmail(){
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: WidgetTextFormField(
          labelText: "Masukan Email",
          hintText: "xxxx@youremail",
          controller: _emailcontroller,
          inputType: TextInputType.emailAddress,
          validator: validateEmail,
        )
    );
  }

  Widget _buildGender(){
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Jenis Kelamin"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text("Laki-Laki"),
                  Radio(
                      value: "Laki-laki",
                      groupValue: _jk,
                      onChanged: (String value){
                        setState(() {
                          _jk = value;
                        });
                      }
                  ),
                ],
              ),
              Row(
                children: [
                  Text("Perempuan"),
                  Radio(
                      value: "Perempuan",
                      groupValue: _jk,
                      onChanged: (String value){
                        setState(() {
                          _jk = value;
                        });
                      }
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHobi(){
    return Padding(
      padding: EdgeInsets.only(top: 6, left: 12, right: 12, bottom: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Hobi"),
          Row(
            children: [
              Checkbox(
                  value: baca,
                  onChanged: (bool value){
                    setState(() {
                      baca = value;
                    });
                  }
              ),
              Text("Membaca"),
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: renang,
                  onChanged: (bool value){
                    setState(() {
                      renang = value;
                    });
                  }
              ),
              Text("Berenang"),
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: game,
                  onChanged: (bool value){
                    setState(() {
                      game = value;
                    });
                  }
              ),
              Text("Main Games"),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTimePicker(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Selected time: ${_time.format(context)}',
        ),
        SizedBox(height: 8),
        ElevatedButton(
          onPressed: _selectTime,
          child: Text('SELECT TIME'),
        ),
      ],
    );
  }

  Widget _buildDatePicker(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$_date',
        ),
        SizedBox(height: 8),
        ElevatedButton(
          onPressed: _selectDate,
          child: Text('SELECT DATE'),
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Form App"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildNama(),
                _buildAlamat(),
                _buildEmail(),
                _buildnotelp(),
                _buildGender(),
                _buildHobi(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _buildTimePicker(),
                    _buildDatePicker(),
                  ],
                ),
                SizedBox(
                  height: 90,
                ),
                ElevatedButton(
                    onPressed: (){
                      if(!_formKey.currentState.validate()){
                        return;
                      }

                      setState(() {
                        _nama = _namacontroller.text;
                        _alamat = _alamatcontroller.text;
                        _notelp = _mobilecontroller.text;
                        _email = _emailcontroller.text;
                      });

                      _hobi = (baca ? 'Membaca, ' : '')+
                          (renang ? 'Berenang, ' : '') +
                          ( game ? 'Bermain games' : '');

                      if(_jk.isEmpty || _hobi.isEmpty){
                        final snackbar = SnackBar(content: const Text("Data belum lengkap"),
                          action: SnackBarAction(
                            label: 'Lengkapi',
                            onPressed: () {
                            },
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      }else{
                        showDialog(context: context,
                            builder: (BuildContext context){
                              return CustomDialog(
                                nama: _nama,
                                alamat: _alamat,
                                email: _email,
                                notelp: _notelp,
                                jk: _jk,
                                hobi: _hobi,
                                tanggal : _date.toString(),
                                waktu : _time.format(context),
                              );
                            });
                      }
                    },

                    child: Text("SUBMIT"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
