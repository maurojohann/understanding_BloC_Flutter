import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color secundaryColor = Color.fromARGB(255, 26, 41, 72);
    final Color primaryColor = Color.fromARGB(255, 241, 112, 33);
    return Scaffold(
      backgroundColor: secundaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
            ),
            SizedBox(
              child: Form(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  padding:
                      EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
                  // height: 280,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'login',
                        style: TextStyle(color: primaryColor),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 28),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 28),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'CPF',
                        ),
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        onChanged: (value) => {},
                      ),
                      Padding(padding: EdgeInsets.only(top: 28)),
                      ElevatedButton(
                        child: Text('enter'.toUpperCase()),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
