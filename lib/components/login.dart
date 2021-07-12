import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
    String checkTextField='';
  @override
  Widget build(BuildContext context) {
    void showAlertDialogue() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Close",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
              backgroundColor: Colors.grey,
              title: Text(
                'Sign In',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
              content: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Account",
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  _customTextField(
                    "Your username or email",
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Password",
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  _customTextField("Password"),
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      child: Text("Forget password"),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    children: [
                      MaterialButton(
                        height: 40.0,
                        color: Colors.green,
                        child: new Text('Login'),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      MaterialButton(
                        height: 40.0,
                        color: Colors.green,
                        child: new Text('Register'),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            );
          });
    }

    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
      child: InkWell(
        child: Container(
          // height:10.0 ,
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Text(
              "LOG IN",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        onTap: () {
          showAlertDialogue();
        },
      ),
    );
  }

  _customTextField(String hint) {
    return TextFormField(
      onChanged: (value) {
        checkTextField=value;
      },
      decoration: InputDecoration(
        fillColor: Colors.white70,
        filled: true,
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    );
  }
}
