import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_tutorial/main_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff292C31),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 140,),
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Color(0xff292C31),
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(20, 20),
                      blurRadius: 60,
                      color: Color(0xff292C31),
                      inset: true,
                    ),
                    BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 30,
                      color: Color(0xff0B0D0F),
                      inset: true,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 14.0,left: 10,right: 10),
                  child: Image.asset('assets/images/thumb.png',color: Color(0xffABDED8),),
                ),
              ),
            ),
            SizedBox(height: 35,),
          const Text(
              'Touch Id sensor to verify \ntransaction.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600,letterSpacing: 1.2,color: Colors.white),),
            SizedBox(height: 15,),
            const Text(
              'Please verify your Identity Using Touch ID and \nproceed transaction.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Stack(
                children: [
                  Image.asset('assets/images/globe.png'),
                  Positioned(
                    top: 70,
                    left: 150,
                    child: Container(
                      height: 110,
                      width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(20, 20),
                          blurRadius: 60,
                          color: Color(0xff292C31),
                          inset: true,
                        ),
                        BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 30,
                          color: Color(0xff0B0D0F),
                          inset: true,
                        ),
                      ],
                    ),
                      child: Center(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>MainScreen()));
                          },
                          child: CircleAvatar(
                            backgroundColor: Color(0xffABDED8),
                            radius: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('-',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black),),
                                Icon(Icons.arrow_forward,color: Colors.black,),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
