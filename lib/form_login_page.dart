import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  String strDisplay = "";
  String strUsername = "";
  String strPassword = "";
  int intAge = 1;

  void FormSubmit() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
    }
  }

  void FormReset() {
    formKey.currentState!.reset();
    setState(() {
      strDisplay = "";
    });
  }

  void SetUsername(value) {
    setState(() {
      strUsername = value;
      SetDisplay();
    });
  }

  void SetPassword(value) {
    setState(() {
      strPassword = value;
      SetDisplay();
    });
  }

  void SetAge(value) {
    setState(() {
      intAge = int.parse(value);
      SetDisplay();
    });
  }

  void calAge() {
    setState(() {
      formKey.currentState!.save();
      SetDisplay();
    });
  }

  void SetDisplay() {
    setState(() {
      strDisplay = 'Hello! $strUsername your password is $strPassword, next year you will be ${intAge + 1} years old';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            SizedBox(height: 100.0),
            usernameFormField(),
            passwordFormField(),
            ageFormField(),
            SizedBox(height: 20.0),
            Text(
              '$strDisplay',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                resetButton(),
                calButton(),
                submitButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget usernameFormField() {
    return TextFormField(
      //keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Username",
        hintText: "Input Username",
        icon: Icon(Icons.person),
      ),
      validator: (value) {
        if (value!.length < 3) {
          return "username must be more than 3 letters";
        } else {
          return null;
        }
      },
      onSaved: (value) {
        SetUsername(value);
      },
    );
  }

  Widget passwordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Input Password",
        icon: Icon(Icons.lock),
      ),
      validator: (value) {
        if (value!.length < 4) {
          return "password must be more than 4 letters";
        } else {
          return null;
        }
      },
      onSaved: (value) {
        SetPassword(value);
      },
    );
  }

  Widget ageFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Age(1-100 yrs)",
        hintText: "Input Age",
        icon: Icon(Icons.calendar_month),
      ),
      validator: (value) {
        if (int.parse(value!) < 1 || int.parse(value) > 100) {
          return "age must be between 1-100";
        } else {
          return null;
        }
      },
      onSaved: (value) {
        SetAge(value);
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      //color: Colors.orangeAccent,
      onPressed: FormSubmit,
      child: Text("Log in"),
    );
  }

  Widget resetButton() {
    return ElevatedButton(
      //color: Colors.orangeAccent,
      onPressed: FormReset,
      child: Text("Reset"),
    );
  }

  Widget calButton() {
    return ElevatedButton(
      onPressed: FormSubmit,
      child: Text("Calculation"),
    );
  }
}
