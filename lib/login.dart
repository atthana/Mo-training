import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Explicit
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Method
  Widget inputField(String labelText,
      {bool obscureText, TextEditingController controller}) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
          )),
    );
  }

  Widget loginButton() {
    return Container(
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
          color: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
          child: Text(
            'Login',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          onPressed: () {
            print('Pressed');
            onPress();
          }),
    );
  }

  onPress() {
    String username = usernameController.text;
    String password = passwordController.text;
    print(username);
    print(password);
  }

  Widget showLogo() {
    return Image(height: 200.0, image: AssetImage('images/codium.png'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mo Training'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                showLogo(),
                SizedBox(
                  height: 20.0,
                ),
                inputField('Username',
                    obscureText: false, controller: usernameController),
                SizedBox(
                  height: 20.0,
                ),
                inputField('Password',
                    obscureText: true, controller: passwordController),
                SizedBox(
                  height: 20.0,
                ),
                loginButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
