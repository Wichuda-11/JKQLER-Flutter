import 'package:flutter/material.dart';
import 'dart:math';
import 'package:intl/intl.dart';

class SavingPage extends StatefulWidget {
  const SavingPage({Key? key}) : super(key: key);
  @override
  State<SavingPage> createState() => _SavingPageState();
}

class _SavingPageState extends State<SavingPage> {
  final formKey = GlobalKey<FormState>();
  String strDisplay = "";
  int intperiod = 0;
  double douAmount = 0.0;
  double douinterestRate = 0.0;
  double douInterest = 0.0;
  double douPrincipal = 0.0;
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

  void ResetDisplay() {
    setState(() {
      strDisplay = "";
    });
  }

  void SetPrice(value) {
    setState(() {
      douPrincipal = double.parse(value);
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
      douinterestRate = double.parse(value)/100;
      SetDisplay();
    });
  }

  void SetInterest(value) {
    setState(() {
      douInterest = double.parse(value);
      SetDisplay();
    });
  }

  void calInstallment() {
    
    douAmount = douPrincipal * pow((1+douinterestRate/1),1*intperiod);
  }

  void SetDisplay() {
    setState(() {
      calInstallment();
      strDisplay =
          'Your saving become ${objFormatDouble2.format(douAmount)} THB ';
    }
    );
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
                "Saving",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            priceFormField(),
            rateFormField(),
            periodFormField(),  
            Padding(
              padding: const EdgeInsets.all(45.0),
            child: Align(
              alignment: Alignment.centerLeft,    
                child: Text(
                '$strDisplay',
                style: TextStyle(fontSize: 20),
              ),
            ),
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
          labelText: "Principal(1,000.00-1,000,000.00 THB)",
          hintText: "Input Price",
          icon: Icon(Icons.payments)),
      validator: (value) {
        if (double.parse(value!) < 1000 || double.parse(value) > 1000000) {
          return "Price must be between 1,000.00-1,000,000.00";
        } else {
          ResetDisplay();
          return null;
        }
      },
      onSaved: (value) {
        SetPrice(value);
      },
    );
  }

  Widget rateFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Interest Rate(0.00-20.00 %/yr)",
        hintText: "Input Interest Rate",
        icon: Icon(Icons.currency_exchange),
      ),
      validator: (value) {
        if (double.parse(value!) < 0 || double.parse(value) > 20) {
          return "Interest Rate must be between 1-20";
        } else {
          ResetDisplay();
          return null;
        }
      },
      onSaved: (value) {
        SetInterestRate(value);
      },
    );
  }



  Widget periodFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Period(1-100 yrs)",
        hintText: "Input Period",
        icon: Icon(Icons.calendar_month),
      ),
      validator: (value) {
        if (int.parse(value!) < 1 || int.parse(value) > 100) {
          return "Period must be between 1-100";
        } else {
          ResetDisplay();
          return null;
        }
      },
      onSaved: (value) {
        SetPeriod(value);
      },
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
      onPressed: FormCal,
      child: Text("Calculation"),
    );
  }
}
