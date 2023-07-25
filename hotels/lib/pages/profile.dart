// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hotels/pages/auth/signin.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: Column(
            children: [
              Center(
                  child: Text(
                'Profile',
                style: TextStyle(color: Colors.white, fontSize: 25),
              )),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
              // mmmmmmmmmmmmmmmmmmmmmmmmmmmmm user name mmmmmmmmmmmmmmmmmmmmmm
              ListTile(
                leading: Text('Daniyal',
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              ),
              // mmmmmmmmmmmmmmmmmmmmmmmmmmmmm Account setting mmmmmmmmmmmmmmmmmmmmmm
              ListTile(
                leading: Text('Account Setting',
                    style: TextStyle(color: Colors.white, fontSize: 22)),
              ),
              ListTile(
                minLeadingWidth: 1,
                leading: Icon(
                  Icons.personal_injury,
                  color: Colors.orange,
                ),
                title: Text('Personal information',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.orange,
                ),
              ),
              ListTile(
                minLeadingWidth: 1,
                leading: Icon(
                  Icons.notifications_active,
                  color: Colors.orange,
                ),
                title: Text('Notification',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.orange,
                ),
              ),
              ListTile(
                minLeadingWidth: 1,
                leading: Icon(
                  Icons.payments,
                  color: Colors.orange,
                ),
                title: Text('Payments and payouts',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.orange,
                ),
                onTap: () => Get.to(() => Payment()),
              ),
              ListTile(
                minLeadingWidth: 1,
                leading: Icon(
                  Icons.business_center,
                  color: Colors.orange,
                ),
                title: Text('Business Trips',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.orange,
                ),
              ),
              ListTile(
                minLeadingWidth: 1,
                leading: Icon(
                  Icons.translate_outlined,
                  color: Colors.orange,
                ),
                title: Text('Language',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.orange,
                ),
              ),
              //mmmmmmmmmmmmmm second Account setting mmmmmmmmmmmm
              ListTile(
                leading: Text('Account Setting',
                    style: TextStyle(color: Colors.white, fontSize: 22)),
              ),
              ListTile(
                minLeadingWidth: 1,
                leading: Icon(
                  Icons.home,
                  color: Colors.orange,
                ),
                title: Text('Rent out your home',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.orange,
                ),
              ),
              ListTile(
                minLeadingWidth: 1,
                leading: Icon(
                  Icons.info_outlined,
                  color: Colors.orange,
                ),
                title: Text('Hosting Information',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.orange,
                ),
              ),
              ListTile(
                minLeadingWidth: 1,
                leading: Icon(
                  Icons.logout,
                  color: Colors.orange,
                ),
                title: Text('Log Out',
                    style: TextStyle(color: Colors.orange, fontSize: 16)),
                onTap: () => Get.to(() => Signin()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// mmmmmmmmmmmmmmmmmmmmmmmm
//Payment section of the page
// mmmmmmmmmmmmmmmmmmmmmmmm

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int radios = 1;
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('Payment',
            style: TextStyle(color: Colors.white, fontSize: 16)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(6),
              child: Column(
                children: [
                  ListTile(
                    minLeadingWidth: 1,
                    leading: Text('Payment Method',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    trailing: Text('Add New Card',
                        style: TextStyle(color: Colors.orange, fontSize: 16)),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Card(
                        child: ListTile(
                      minLeadingWidth: 0.1,
                      leading: Icon(
                        Icons.paypal,
                        color: Colors.black,
                      ),
                      title: Text('PayPal',
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                      trailing: Radio(
                        activeColor: Colors.orange,
                        value: 1,
                        groupValue: radios,
                        onChanged: (value) {
                          setState(() {
                            radios = value!;
                          });
                        },
                      ),
                    )),
                  ),
                  //mmmmmmmmmmmmmmmm
                  SizedBox(
                    height: 40,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Card(
                        child: ListTile(
                      minLeadingWidth: 0.1,
                      leading: Icon(
                        Icons.g_mobiledata,
                        size: 30,
                        color: Colors.black,
                      ),
                      title: Text('Google Pay',
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                      trailing: Radio(
                        activeColor: Colors.orange,
                        value: 2,
                        groupValue: radios,
                        onChanged: (value) {
                          setState(() {
                            radios = value!;
                          });
                        },
                      ),
                    )),
                  ),
                  //mmmmmmmmmmmmmmmmmmmmmmmmmmmmm
                  SizedBox(
                    height: 40,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Card(
                        child: ListTile(
                      minLeadingWidth: 0.1,
                      leading: Icon(
                        Icons.apple,
                        color: Colors.black,
                      ),
                      title: Text('Apple Pay',
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                      trailing: Radio(
                        activeColor: Colors.orange,
                        value: 3,
                        groupValue: radios,
                        onChanged: (value) {
                          setState(() {
                            radios = value!;
                          });
                        },
                      ),
                    )),
                  ),
                  //mmmmmmmmmmmmmmmmmmmmmmmmmmm
                  SizedBox(
                    height: 150,
                  ),

                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(19)),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.amber),
                              padding: MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 70))),
                          onPressed: () {},
                          child: Text(
                            'Continue',
                            style: TextStyle(fontSize: 25),
                          )),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
