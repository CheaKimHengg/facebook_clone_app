import 'package:flutter/material.dart';
import 'package:hello_flutter_app/component/forget_screen.dart';
import 'package:hello_flutter_app/component/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(18),
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Login to',
            style: TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          const Text(
            'meet new people',
            style: TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),

          const SizedBox(
            height: 150,
          ),

          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.indigo),
              ),
              labelText: 'Email',
              labelStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
              hintText: 'Please enter your email',
              suffixIcon: Icon(
                Icons.email_rounded,
                color: Colors.indigo,
              ),
              // prefix: Icon(
              //   Icons.sentiment_dissatisfied,
              //   color: Colors.indigo,
              // ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const TextField(
            obscureText: true,
            obscuringCharacter: "*",
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.indigo),
              ),
              labelText: "Password",
              labelStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
              hintText: 'Please enter your password',
              suffixIcon: Icon(
                Icons.lock_outline_rounded,
                color: Colors.indigo,
              ),
            ),
          ),

          const SizedBox(
            height: 24,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  final route =
                  MaterialPageRoute(builder: (context) => ForgetScreen());
                  Navigator.pushReplacement(context, route);
                },
                child: Text(
                  'Forget Password',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 40,
          ),

          SizedBox(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: Colors.indigo,
              elevation: 0,
              padding: const EdgeInsets.symmetric(vertical: 19),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          // Container(
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(6),
          //     border: Border.all(
          //       color: Colors.indigo,
          //     ),
          //   ),
          //   width: double.infinity,
          //   child: RawMaterialButton(
          //     padding: const EdgeInsets.symmetric(vertical: 19),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: const [
          //         Icon(Icons.facebook,),
          //         SizedBox(height: 16,),
          //         Text('Sign in with facebook',
          //           style: TextStyle(
          //             fontWeight: FontWeight.bold,
          //             fontSize: 18,
          //             color: Colors.indigo,
          //           ),
          //         ),
          //       ],
          //     ),
          //     onPressed: () {},
          //   ),
          // ),
          SizedBox(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: Colors.indigo,
              elevation: 0,
              padding: const EdgeInsets.symmetric(vertical: 19),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Text(
                'Sign in with Metaverse',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              TextButton(
                  onPressed: () {
                    final route =
                    MaterialPageRoute(builder: (context) => RegisterScreen());
                    Navigator.pushReplacement(context, route);
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black
                    ),
                  ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
