import 'package:app_makankuy/pages/home_page.dart';
import 'package:app_makankuy/theme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true; 

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
              const SizedBox(height: 10),
              Text('MakanKuy!', style: adlam20,
              ),
              const SizedBox(height: 50),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(0, 254, 254, 254),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: palYel, width: 1),
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: grey,
                        hintText: 'email/username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),

                      ),
                    ),
                    const SizedBox(height: 30),
                    TextField(
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
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                        },
                      style: ElevatedButton.styleFrom(backgroundColor: red,
                      padding: const EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      ), 
                      child: Text('Masuk', style: TextStyle(color: white, fontSize: 16,),),),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  //buat ke halaman register
                },
                child: RichText(text: TextSpan(text: 'Silahkan', style: const TextStyle(color: Colors.white, fontSize: 14),
                children: [
                  TextSpan(text: ' Daftar ', style: TextStyle(color: red, fontWeight: FontWeight.bold,
                  ),
                  ),
                  const TextSpan(
                    text: 'bila Anda belum memiliki Akun',
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
