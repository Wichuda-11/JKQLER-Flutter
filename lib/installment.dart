import 'package:flutter/material.dart';
import 'dart:math';
import 'package:intl/intl.dart';

class InstallPage extends StatefulWidget {
  const InstallPage({Key? key}) : super(key: key);
  @override
  State<InstallPage> createState() => _InstallPageState();
}

class _InstallPageState extends State<InstallPage> {
  final formKey = GlobalKey<FormState>();
  String strDisplay = "";
  int intperiod = 0;
  double douprice = 0.0;
  double doudown = 0.0;
  double douinterestRate = 0.0;
  double douInterest = 0.0;
  double douPrincical = 0.0;
  double douPay = 0.0;
  var objFormatDouble2 = NumberFormat('#,##0.00');

  void FormCal() {
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

  void SetPrice(value) {
    setState(() {
      douprice = double.parse(value);
      SetDisplay();
    });
  }

  void SetDown(value) {
    setState(() {
      doudown = double.parse(value);
      SetDisplay();
    });
  }

  void SetPeriod(value) {
    setState(() {
      intperiod = int.parse(value);
      SetDisplay();
    });
  }

  void SetInterestRate(value) {
    setState(() {
      douinterestRate = double.parse(value);
      SetDisplay();
    });
  }

  void calInstallment() {
    douPrincical = (douprice * (1 - doudown / 100));
    douInterest = douPrincical * (douinterestRate / 100)* intperiod;
    douPay = (douPrincical+ douInterest)/ (intperiod*12);
  }

  void SetDisplay() {
    setState(() {
      calInstallment();
      strDisplay =
          'Down payment is ${objFormatDouble2.format(douprice-douPrincical)} THB \nPrincipal is ${objFormatDouble2.format(douPrincical)} THB \nInterest is ${objFormatDouble2.format(douInterest)} THB \nYour installment plan is ${objFormatDouble2.format(douPay)} THB/month x ${intperiod*12} months';
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
            SizedBox(height: 10.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              "Motorcycle Installment",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),),
            SizedBox(height: 10.0),
            priceFormField(),
            downFormField(),
            periodFormField(),
            rateFormField(),
            SizedBox(height: 10.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              '$strDisplay',
              style: TextStyle(fontSize: 20),
            ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                resetButton(),
                calButton(),
                //submitButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget priceFormField() {
    return TextFormField(
      //keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Price(10,000.00-1,000,000.00 THB)",
        hintText: "Input Price",
        icon: Icon(Icons.motorcycle)
      ),
      validator: (value) {
        if (double.parse(value!) < 10000 || double.parse(value) > 1000000) {
          return "Price must be between 10,000.00-1,000,000.00";
        } else {
          return null;
        }
      },
      onSaved: (value) {
        SetPrice(value);
      },
    );
  }

  Widget downFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Down Payment(0.00-50.00 %)",
        hintText: "Input Down Payment",
        icon: Icon(Icons.payments),
      ),
      validator: (value) {
        if (double.parse(value!) < 0 || double.parse(value) > 50) {
          return "Down Payment must be between 0.00-50.00";
        } else {
          return null;
        }
      },
      onSaved: (value) {
        SetDown(value);
      },
    );
  }

  Widget periodFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Period(1-5 yrs)",
        hintText: "Input Period",
        icon: Icon(Icons.calendar_month),
      ),
      validator: (value) {
        if (int.parse(value!) < 1 || int.parse(value) > 5) {
          return "Period must be between 1-5";
        } else {
          return null;
        }
      },
      onSaved: (value) {
        SetPeriod(value);
      },
    );
  }

  Widget rateFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Interest Rate(0.00-5.00 %/yr)",
        hintText: "Input Interest Rate",
        icon: Icon(Icons.attach_money),
      ),
      validator: (value) {
        if (double.parse(value!) < 0 || double.parse(value) > 5) {
          return "Interest Rate must be between 1-100";
        } else {
          return null;
        }
      },
      onSaved: (value) {
        SetInterestRate(value);
      },
    );
  }

  /*Widget submitButton() {
    return ElevatedButton(
      //color: Colors.orangeAccent,
      onPressed: FormSubmit,
      child: Text("Log in"),
    );
  }*/

  Widget resetButton() {
    return ElevatedButton(
      //color: Colors.orangeAccent,
      onPressed: FormReset,
      child: Text("Reset"),
    );
  }

  Widget calButton() {
    return ElevatedButton(
      onPressed: FormCal,
      child: Text("Calculation"),
    );
  }
}
