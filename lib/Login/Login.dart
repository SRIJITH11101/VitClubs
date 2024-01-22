import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vitclubs/Firebase_auth/firebase_auth_svs.dart';
import 'package:vitclubs/Home.dart';
import 'package:vitclubs/Login/FormContainerWidget.dart';
import 'package:vitclubs/Login/Signup.dart';
import 'package:vitclubs/Toast/toast.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  bool _SigningIn = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Container(
                //height: 785,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/loginBG1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    _Vitimg(),
                    SizedBox(
                      height: 105,
                    ),
                    _Logindetails(),
                    SizedBox(height: 67),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _Vitimg() {
    return SizedBox(
      height: 102,
      width: 320,
      child: Image.asset('images/vitaplogo.png'),
    );
  }

  Widget _Logindetails() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), color: Colors.white70),
        height: 430,
        width: 360,
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'USER LOGIN',
              style: TextStyle(
                color: Color(0xFFFF6966),
                fontSize: 32,
                fontFamily: 'Georgia',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25),
            FormContainerWidget(
              controller: _emailController,
              icon: Icon(Icons.email_outlined),
              hintText: "Email",
              isPasswordField: false,
            ),
            SizedBox(height: 20),
            FormContainerWidget(
              controller: _passwordController,
              icon: Icon(Icons.lock_outline),
              hintText: "Password",
              isPasswordField: true,
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () => _signIn(),
              child: Container(
                height: 55,
                width: 310,
                decoration: BoxDecoration(
                    color: Color(0xFFFF6966),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: _SigningIn
                      ? CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : Text(
                          "LOGIN",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 15, color: Colors.black87),
                ),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const signup()));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(221, 13, 103, 229)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _signIn() async {
    setState(() {
      _SigningIn = true;
    });
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.loginEandP(email, password);
    setState(() {
      _SigningIn = false;
    });
    if (user != null) {
      showToast(message: "User successfully Loged in");
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    } else {
      showToast(message: "Login unsuccessful");
    }
  }
}
