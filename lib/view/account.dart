import 'package:flutter/material.dart';
import 'package:ui_design/view/otp.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool isSelected = false;
  void iteamSwitch(bool value) {
    setState(() {
      isSelected = isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Account Setting",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ListTile(
            title: const Text(
              "Notification",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Switch(
              value: isSelected,
              onChanged: iteamSwitch,
              activeColor: Colors.red,
            ),
          ),
          const ListTile(
            title: Text(
              "Language setting",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Text(
              "EN",
              style: TextStyle(
                  color: Colors.cyanAccent,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,),
            ),
          ),
          const ListTile(
              title: Text(
            "Contact Us",
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          )),
          const ListTile(
              title: Text(
            "Help",
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          )),
          const ListTile(
              title: Text(
            "Terms and Conditions",
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          )),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Otp()));
            },
            child: const ListTile(
                title: Text(
              "Privacy & policy",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),),
          ),
          const SizedBox(height: 80,),
          const Text("Version 1.1",style: TextStyle(
            fontWeight: FontWeight.w200,
          ),),
          const Divider(
            indent: 210,
            endIndent: 210,
            height: 1,
            color: Colors.black12,
          )
        ],
      ),
    );
  }
}
