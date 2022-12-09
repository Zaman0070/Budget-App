import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff292c31),
      body: SafeArea(
        child:Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/menu.png',height: 45,color: Colors.grey.shade400,),
                    Image.asset('assets/images/man.png',height: 40,)
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: EdgeInsets.only(left: 85),
                child: Text('Available Blance',style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 15
                ),),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('\$4500.0',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w900),),
                  SizedBox(width: 50,),
                  Stack(
                    children: [
                      Image.asset('assets/images/box.png',),
                      Positioned(
                        top: 12,
                        left: 6,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0,10),
                                color: Color(0xff0b0d0f),
                                blurRadius: 12
                              ),
                            ],
                            color: Color(0xffabded8),
                          ),
                          child: Icon(Icons.calendar_month_sharp),

                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Padding(
                padding: EdgeInsets.only(left: 100),
                child: Stack(
                  children: [
                    Image.asset('assets/images/bubble.png',height: 50,color: Color(0xffabded8),),
                    Positioned(
                      top: 4,
                      left: 16,
                      child: Column(
                        children: [
                          Text('\$1520',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
                          Text('Mar 04 2021',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 8),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 10,
                decoration: BoxDecoration(
                  color: Color(0xff0b0d0f).withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 10,
                      width: 145,
                      decoration: BoxDecoration(
                        color: Color(0xffabded8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Container(
                        height: 70,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Color(0xffabded8),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Image.asset('assets/images/gift.png',height: 45,),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Shopping',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                  Text('\$300.00',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w900),),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Container(
                        height: 70,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Color(0xffabded8),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Image.asset('assets/images/car.png',height: 45,),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Shopping',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                  Text('\$300.00',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w900),),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Stack(
                    children: [
                      Image.asset('assets/images/button.png'),
                      Positioned(
                          top: 10,
                          left: 10,
                          child: Image.asset('assets/images/groceries.png',height: 28,color: Colors.grey.shade500,)),
                    ],
                  ),
                  SizedBox(width: 25,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Groceries',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                      Text('Just Now',style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.w400,fontSize: 12),)

                    ],
                  ),
                  Spacer(),
                  Text('\$45.00',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w900),)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Stack(
                    children: [
                      Image.asset('assets/images/button.png'),
                      Positioned(
                          top: 10,
                          left: 10,
                          child: Image.asset('assets/images/laundry.png',height: 28,color: Colors.grey.shade500,)),
                    ],
                  ),
                  SizedBox(width: 25,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Laundry',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                      Text('Mar, 04, 2021 10:00',style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.w400,fontSize: 12),)

                    ],
                  ),
                  Spacer(),
                  Text('\125.00',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w900),)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Stack(
                    children: [
                      Image.asset('assets/images/button.png'),
                      Positioned(
                          top: 10,
                          left: 10,
                          child: Image.asset('assets/images/burger.png',height: 28,color: Colors.grey.shade500,)),
                    ],
                  ),
                  SizedBox(width: 25,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('KFC',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                      Text('Mar, 04, 2021 10:00',style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.w400,fontSize: 12),)

                    ],
                  ),
                  Spacer(),
                  Text('\125.00',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w900),)
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        gradient: LinearGradient(
          colors: [Color(0xff0b0d0f).withOpacity(0.4),Color(0xff292c31),Color(0xff292c31),Color(0xff292c31)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0,0.0001,0.9,1],
        ),
        backgroundColor: Color(0xff292c31),
        activeColor: Color(0xffabded8),
        elevation: 0,
        style: TabStyle.react,
        items: [
          TabItem(icon: Icons.home_outlined),
          TabItem(icon: Icons.electric_bolt),
          TabItem(icon: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset('assets/images/user.png',color: Colors.grey.shade400,),
          )),
          TabItem(icon: Stack(
            children: [
              Image.asset('assets/images/bell.png',color: Colors.grey.shade400,),
              Positioned(
                right: 0,
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xffabded8),
                ),
              ),
            ],
          )),
        ],
        initialActiveIndex: 1,
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}
