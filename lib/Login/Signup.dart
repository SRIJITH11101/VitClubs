import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vitclubs/Firebase_auth/firebase_auth_svs.dart';
import 'package:vitclubs/Home.dart';
import 'package:vitclubs/Login/FormContainerWidget.dart';
import 'package:vitclubs/Login/Login.dart';
import 'package:vitclubs/Toast/toast.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  bool _SigningUp = false;
  TextEditingController _usenameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usenameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
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
                    _SignUpdetails(context),
                    //SizedBox(height: 67),
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

  Widget _SignUpdetails(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), color: Colors.white70),
      height: 430,
      width: 360,
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Text(
            'USER SIGNUP',
            style: TextStyle(
              color: Color.fromARGB(255, 220, 86, 83),
              fontSize: 32,
              fontFamily: 'Georgia',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 25),
          FormContainerWidget(
            icon: Icon(Icons.account_circle_outlined),
            controller: _usenameController,
            hintText: "UserName",
            isPasswordField: false,
          ),
          SizedBox(height: 20),
          FormContainerWidget(
            icon: Icon(Icons.email_outlined),
            controller: _emailController,
            hintText: "Email",
            isPasswordField: false,
          ),
          SizedBox(height: 20),
          FormContainerWidget(
            icon: Icon(Icons.lock_outline),
            controller: _passwordController,
            hintText: "Password",
            isPasswordField: true,
          ),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () => _signUp(),
            child: Container(
              height: 55,
              width: 310,
              decoration: BoxDecoration(
                  color: Color(0xFFFF6966),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: _SigningUp
                    ? CircularProgressIndicator(color: Colors.white)
                    : Text(
                        "SIGN UP",
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
                "Already have an account?  ",
                style: TextStyle(fontSize: 15, color: Colors.black87),
              ),
              // SizedBox(width: 2),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Login',
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
    );
  }

  void _signUp() async {
    setState(() {
      _SigningUp = true;
    });
    String username = _usenameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signupEandP(email, password, username);
    setState(() {
      _SigningUp = false;
    });
    if (user != null) {
      showToast(message: "User successfully created");
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Home(name: username)));
    } else {
      showToast(message: "SignUp unsuccessful");
    }
  }
}
