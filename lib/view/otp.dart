import 'package:flutter/material.dart';
class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,elevation: 0,
        leading: const Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("asset/otp.png"),
            const SizedBox(height: 10,),
            const Text("Enter OTP",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,),),
            const SizedBox(height: 15,),
            const Text("We have sent the code to",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w300,fontSize: 14,),),
            const SizedBox(height: 5,),
            const Text("(+44)555-0120",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14,),),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey
                  ),
                ),
                const SizedBox(width: 20,),
                Container(
                  height: 50,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey
                  ),
                ),
                const SizedBox(width: 20,),
                Container(
                  height: 50,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey
                  ),
                ),
                const SizedBox(width: 20,),
                Container(
                  height: 50,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("This Code will expire in "),
                Text("55 sec",style: TextStyle(color: Colors.cyan),)
              ],
            ),
            const SizedBox(height: 20,),
            const Text("Resend OTP",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14,),),
            const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.cyanAccent,
                ),
                child: const Center(child: Text("Verify",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15,),)),
              ),
            )

            

          ],
        ),
      ),
    );
  }
}
