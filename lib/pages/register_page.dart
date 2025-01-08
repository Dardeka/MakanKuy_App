import 'package:app_makankuy/databases/database_service.dart';
import 'package:app_makankuy/pages/login_page.dart';
import 'package:app_makankuy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final DatabaseService _databaseService = DatabaseService.instance;
  bool _isObscure = true;
  
  final userName = TextEditingController();
  final phoneNum = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  String? _userName = null;
  String? _phoneNum = null;
  String? _email = null;
  String? _password = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green2,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 75,
                backgroundColor: green1,
              ),
              SizedBox(height: 10),
              Text('MakanKuy!', style: adlam20,
              ),
              SizedBox(height: 50),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(0, 254, 254, 254),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: palYel, width: 1),
                ),
                child: Column(
                  children: [
                    TextField(
                      controller: userName,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: grey,
                        hintText: 'Nama Pengguna',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _userName = value;
                        }); 
                      },
                    ),
                    SizedBox(height: 30),
                    TextField(
                      controller: phoneNum,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: grey,
                        hintText: 'Nomor Hp',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _phoneNum = value;
                        });
                      },
                    ),
                    SizedBox(height: 30),
                    TextField(
                      controller: email,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: grey,
                        hintText: 'email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _email = value;
                        });
                      },
                    ),
                    SizedBox(height: 30),
                    TextField(
                      controller: password,
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: grey,
                        hintText: 'kata sandi',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure ? Icons.visibility : Icons.visibility_off,
                            color: black,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure; // Ubah status visibility
                            });
                          },
                        ),
                      ),
                      onChanged: (value){
                        setState(() {
                          _password = value;
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          if(_userName == null || _userName == "" || _phoneNum == null || _phoneNum == "" || _email == null || _email == "" || 
                          _password == null || _password == ""
                          ) return;
                          _databaseService.addUser(_userName!, _email!, _phoneNum!, _password!);
                          setState(() {
                            _userName = null; 
                            _phoneNum = null;
                            _email = null;
                            _password = null;
                          });
                          final users = await _databaseService.getUsers();
                          for(var user in users){
                            print('User ID: ${user.id}, Username: ${user.userName}, Email: ${user.email}, Phone Number: ${user.phoneNum}, Password: ${user.password},');
                          }
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                        },
                      style: ElevatedButton.styleFrom(backgroundColor: red,
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      ), 
                      child: Text('Daftar', style: TextStyle(color: white, fontSize: 16,),),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                child: RichText(text: TextSpan(text: 'Silahkan', style: TextStyle(color: Colors.white, fontSize: 14),
                children: [
                  TextSpan(text: ' Masuk ', style: TextStyle(color: red, fontWeight: FontWeight.bold,
                  ),
                  ),
                  TextSpan(
                    text: 'bila Anda sudah memiliki Akun',
                  ),
                ],),),
              ),
            ],
          ),
        ),
     ),
);
}
}