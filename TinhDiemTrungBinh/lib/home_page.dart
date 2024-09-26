import 'dart:convert';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController toanController = TextEditingController();
  TextEditingController vanController = TextEditingController();
  TextEditingController anhController = TextEditingController();
  String KetQua = '';
  String result = '';


  String get validate {
    try
    {
      double.parse(toanController.text.trim());
    }
    on FormatException 
    {
      return 'Điểm toán không phải là số!';
    }
    try
    {
      double.parse(vanController.text.trim());
    }
    on FormatException 
    {
      return 'Điểm văn không phải là số!';
    }
    try
    {
      double.parse(anhController.text.trim());
    }
    on FormatException 
    {
      return 'Điểm anh không phải là số!';
    }
    return 'ischecked';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(        
          //backgroundColor: Theme.of(context).colorScheme.inversePrimary, // màu mạc định
          backgroundColor: const Color.fromARGB(255, 120, 219, 123),       
          title: Center(
            child: Text ('Calculate Average', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
          ), 
        ),
        body: SingleChildScrollView(
          child: Padding
          (
            padding: const EdgeInsets.symmetric(horizontal: 20.0).copyWith(top: 40.0, bottom: 20.0),
            child: Column(
              children: [
                const Text('Nhập Điểm', style: TextStyle(color:  Colors.red, fontSize: 20.0),),
                //Textbox nhập điểm toán
                const SizedBox(height: 20.0),
                TextField(
                  controller: toanController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                    hintText: 'Nhập điểm toán',
                    hintStyle: const TextStyle(color: Colors.grey),
                    labelText: 'Điểm toán',
                  ),
                  textInputAction: TextInputAction.next,
                ),
                //Textbox nhập điểm văn
                const SizedBox(height: 20.0),
                TextField(
                  controller: vanController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                    hintText: 'Nhập điểm văn',
                    hintStyle: const TextStyle(color: Colors.grey),
                    labelText: 'Điểm văn',
                  ),
                  textInputAction: TextInputAction.next,
                ),
                //Textbox nhập điểm anh
                const SizedBox(height: 20.0),
                TextField(
                  controller: anhController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                    hintText: 'Nhập điểm anh',
                    hintStyle: const TextStyle(color: Colors.grey),
                    labelText: 'Điểm anh',
                  ),
                  textInputAction: TextInputAction.done,
                ),
                //Button tính
                const SizedBox(height: 40.0),
                ElevatedButton
                (
                  onPressed: (){
                    result = "";
                    setState(() {});
                    if(validate != 'ischecked')
                    {
                      final snackBar = SnackBar(content: Text(validate));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      return;
                    }
                    double Toan = double.parse(toanController.text.trim());
                    double Van = double.parse(vanController.text.trim());
                    double Anh = double.parse(anhController.text.trim());
                    result = ((Toan + Van + Anh)/3).toStringAsFixed(2);
                    if(double.parse(result) >= 9)
                    {
                      KetQua = 'Xuất sắc';
                    }
                    else if(double.parse(result) < 9 && double.parse(result) >= 8)
                    {
                      KetQua = 'Giỏi';
                    }
                    else if(double.parse(result) < 8 && double.parse(result) >= 6.5)
                    {
                      KetQua = 'Khá';
                    }
                    else if(double.parse(result) < 6.5 && double.parse(result) >= 5)
                    {
                      KetQua = 'Trung bình';
                    }
                    else
                    {
                      KetQua = 'Yếu';
                    }
                  },
                  style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey)),
                  child: const Text('Tính điểm trung bình', style: TextStyle(color: Colors.yellow, fontSize: (16.8))),
                ),
                const SizedBox(height: 30.0),
                Row(
                  children: [
                    const Text('Điểm trung bình: ',style: TextStyle(color: Colors.brown, fontSize: (16.8))),
                    Text(result, style: const TextStyle(color: Colors.red, fontSize: (16.8))),
                  ],
                ),
                const Divider(height: 16.0, thickness: 1, color: Colors.grey,),
                Row(
                  children: [
                    const Text('Xếp loại: ',style: TextStyle(color: Colors.brown, fontSize: (16.8))),
                    Text(KetQua, style: const TextStyle(color: Colors.red, fontSize: (16.8))),                                   
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}