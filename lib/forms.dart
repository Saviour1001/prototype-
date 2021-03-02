import 'package:flutter/material.dart';

class MyInvest extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text("Registration Form"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 2.0),
            // ),
            Emails(),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 0.1),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 0.1),
            // ),
            Name(),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 0.1),
            // ),
            ContactNo(),
            //Padding(padding: const EdgeInsets.symmetric(vertical: 0.1)),
            Address(),
            // Padding(
            //  padding: const EdgeInsets.symmetric(vertical: 0.1),
            //         )
          ],
        ));
  }
}

class Emails extends StatefulWidget {
  @override
  _EmailsState createState() => _EmailsState();
}

class _EmailsState extends State<Emails> {
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  ),
                  Text(
                    "Enter your Email Address",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                  ),
                  TextFormField(
                    autocorrect: true,
                    autofocus: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                      alignLabelWithHint: true,
                      hintText: "Enter your email address",
                    ),
                    validator: (emailAddress) {
                      String email = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
                      bool isValid = RegExp(email).hasMatch(emailAddress);

                      if (emailAddress.isEmpty) {
                        return "Please enter a valid Email";
                      }

                      if (!isValid) {
                        return "Email address is not valid";
                      }
                      return null;
                    },
                  )
                ],
              ),
            ),
          )),
    );
  }
}

class Name extends StatefulWidget {
  @override
  _NameState createState() => _NameState();
}

class _NameState extends State<Name> {
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Expanded(child:SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your name",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                ),
                TextFormField(
                  autocorrect: true,
                  autofocus: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 5.0),
                    hintText: "Enter your name",
                  ),
                  validator: (values) {
                    if (values.isEmpty || values.length<3) {
                      return "Enter your name";
                    }
                    return null;
                  },
                )
              ],
            ),
          ),
        )));
  }
}

class ContactNo extends StatefulWidget {
  @override
  _ContactNoState createState() => _ContactNoState();
}

class _ContactNoState extends State<ContactNo> {
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Expanded(child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Enter your contact number",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                ),
                TextFormField(
                  autocorrect: true,
                  autofocus: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 5.0),
                    hintText: "Enter your Contact Number",
                  ),
                  validator: (phoneNumber) {
                    Function(String) phoneNumberValidator = (String phoneNumber) {
                      String p = r'^[2-9]{1}[0-9]{9}$';
                      RegExp regExp = RegExp(p);

                      if (phoneNumber.isEmpty) {
                        return "Please Enter your Phone Number";
                      }

                      if (!regExp.hasMatch(phoneNumber)) {
                        return "PhoneNumber is not valid";
                      }
                    };
                    return null;
                  },
                )
              ],
            ),
          ),
        )));
  }
}

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Expanded(child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your Address",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                ),
                TextFormField(
                  autocorrect: true,
                  autofocus: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 5.0),
                    hintText: "Please enter your address",
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Please enter valid address";
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                      child: ElevatedButton(
                        autofocus: true,
                        onPressed: () {},
                        child: Text(
                          "Submit",
                          textAlign: TextAlign.center,
                        ),
                      )),
                )
              ],
            ),
          ),
        )));
  }
}
