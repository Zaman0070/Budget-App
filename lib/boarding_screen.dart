import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_tutorial/main_screen.dart';
class BoardingScreen extends StatefulWidget {
  const BoardingScreen({Key? key}) : super(key: key);

  @override
  State<BoardingScreen> createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff292c31),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 140,),
            Center(
              child:
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Color(0xff292c31),
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(20,20),
                      blurRadius: 60,
                      color: Color(0xff292c31),
                      inset : true,
                    ),
                  ]
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 14,left: 10,right: 10),
                  child: Image.asset('assets/images/thumb.png',color: Color(0xffabded8),),

                ),
              ),
            ),
            SizedBox(height: 35,),
            const Text('Touch Id sensor to verify \n transaction.',
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w600,letterSpacing: 1.2,color: Colors.white
            ),

            ),
            SizedBox(height: 15,),
             Text('Please verify your Identity Using Touch ID and \nproceed transaction.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,letterSpacing: 1.2,color: Colors.grey.shade400
              ),
            ),
            SizedBox(height: 35,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
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
                            color: Color(0xff292c31),
                            inset: true,
                          ),
                          BoxShadow(
                            offset: Offset(0, 20),
                            blurRadius: 30,
                            color: Color(0xff0b0d0f),
                            inset: true,
                          )
                        ]
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>const MainScreen()));
                          },
                          child: CircleAvatar(
                            backgroundColor: Color(0xffabded8),
                            radius: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('-',style: TextStyle(fontWeight: FontWeight.w900),),
                                Icon(Icons.arrow_forward,color: Colors.black,)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
