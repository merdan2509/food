import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:management/constants.dart';
import 'package:management/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isCheked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/shape7.png"),
          Spacer(),
          Center(
            child: Column(
              children: [
                Text("Hos geldiniz",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: defaultPadding * 2,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black54)),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Container(
                          height: 10,
                          width: 10,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              Icons.email_outlined,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                        ),
                        disabledBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Email adress",
                        hintStyle: TextStyle(color: Colors.black26)),
                  ),
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black54)),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Container(
                          height: 10,
                          width: 10,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              Icons.lock_outline,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                        ),
                        disabledBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.black26)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Row(
                    children: [
                      Checkbox(
                          value: isCheked,
                          checkColor: Colors.white,
                          activeColor: Colors.orange,
                          side: BorderSide(width: 1, color: Colors.orange),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          onChanged: (bool? value) {
                            setState(() {
                              isCheked = value!;
                            });
                          }),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Tazeden synansyn",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {},
                      child: Text("Giris",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600))),
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                RichText(
                    text: TextSpan(
                        text: "Senin akkaundyn yok?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        children: <TextSpan>[
                      TextSpan(
                          text: "Sign Up",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SignUp()));
                            })
                    ]))
              ],
            ),
          ),
          Spacer(),
          Image.asset("assets/images/shape6.png"),
        ],
      ),
    );
  }
}
