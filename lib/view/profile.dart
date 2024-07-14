import 'package:flutter/material.dart';
import 'package:ui_design/view/account.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (int index) {},
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: "Dashboard",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_travel_outlined),
              label: "Cart",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity_outlined),
              label: "Profile",
              backgroundColor: Colors.black),
        ],
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("asset/download1.jpg"),
                  radius: 60,
                ),
                Positioned(
                  bottom: 15,
                  right: 0,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Wade Warren",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            const SizedBox(height: 15,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Account()));
              },
              child: const ListTile(
                leading: Icon(Icons.perm_identity_outlined,color: Colors.black38,),
                title: Text("My Account",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600,),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,size: 20,),
              ),
            ),
            const Divider(
              indent: 70,
              endIndent: 10,
              color: Colors.black12,
              height: 1,
            ),
            const ListTile(
              leading: Icon(Icons.card_travel_outlined,color: Colors.black38,),
              title: Text("My Order",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600,),),
              trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,size: 20,),
            ),
            const Divider(
              indent: 70,
              endIndent: 10,
              color: Colors.black12,
              height: 1,
            ),
            const ListTile(
              leading: Icon(Icons.home_filled,color: Colors.black38,),
              title: Text("My Address",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600,),),
              trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,size: 20,),
            ),
            const Divider(
              indent: 70,
              endIndent: 10,
              color: Colors.black12,
              height: 1,
            ),
            const ListTile(
              leading: Icon(Icons.payment,color: Colors.black38,),
              title: Text("Payment Method",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600,),),
              trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,size: 20,),
            ),
            const Divider(
              indent: 70,
              endIndent: 10,
              color: Colors.black12,
              height: 1,
            ),
            const ListTile(
              leading: Icon(Icons.favorite,color: Colors.black38,),
              title: Text("My Wishlist",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600,),),
              trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,size: 20,),
            ),
            const Divider(
              indent: 70,
              endIndent: 10,
              color: Colors.black12,
              height: 1,
            ),
            const ListTile(
              leading: Icon(Icons.settings,color: Colors.black38,),
              title: Text("Account Setting",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600,),),
              trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,size: 20,),
            ),
            const Divider(
              indent: 70,
              endIndent: 10,
              color: Colors.black12,
              height: 1,
            ),
            const ListTile(
              leading: Icon(Icons.logout_sharp,color: Colors.black,),
              title: Text("Logout",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600,),),
              trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,size: 20,),
            ),
            const Divider(
              indent: 70,
              endIndent: 10,
              color: Colors.black12,
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
