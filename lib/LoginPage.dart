import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_assignment/SignupPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Image.asset('images/aesthetic.jpg', fit: BoxFit.cover)
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(20),
            color: Color.fromRGBO(0, 0, 255, 0.2),
            child: SingleChildScrollView(
              child: Form(
                key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        print(value);
                        if(value! == ''){
                          return 'Please enter email login';
                        }
                        bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
                        if(!emailValid){
                          return 'Please enter valid email';
                        }
                      },
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.white),
                          focusedErrorBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          )
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value! == '') {
                          return 'Please enter password login';
                        }
                      },
                      keyboardType: TextInputType.visiblePassword,
                      cursorColor: Colors.white,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      style: TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white),
                          focusedErrorBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          )
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: double.infinity, // <-- match_parent
                        child: ElevatedButton(style: ElevatedButton.styleFrom(
                            primary: Colors.brown
                        ),
                            onPressed: () {
                              if(formkey.currentState!.validate()){
                                print('Hurrah');
                              }
                              else{
                                print('Something is wrong');
                              }
                            },
                            child: Text('Log In'))),
                    Text('or'),
                    SizedBox(
                        width: double.infinity, // <-- match_parent
                        child: ElevatedButton(style: ElevatedButton.styleFrom(
                            primary: Colors.brown
                        ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupPage()));
                            },
                            child: Text('Sign Up'))),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}