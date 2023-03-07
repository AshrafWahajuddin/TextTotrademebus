import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trademebus/logic/navigation/navigation_cubit.dart';
import 'package:trademebus/presentation/screens/BabyScreen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 130,

              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),

              child: Stack(

                children: [
                  Positioned(
                    top: 35,
                    left: 340,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Container(
                        height: 00,
                        width: 00,
                        color: Color.fromRGBO(250, 250, 250, 0.1),


                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'YOUR BALANCE',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white
                          ),
                        ),
                        Text(
                          '£ 10,000.60',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Up by 0.04% since you strarted investing',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

            ),
          ],
        ),

        Positioned(
          top: 140,
          left: 37,

          child: Container(
            height: 140,
            width: 300,

            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(47, 125, 121, 0.3),
                  offset: Offset(0, 6),
                  blurRadius: 12,
                  spreadRadius: 6,
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),

            child: Column(
              children: [
                SizedBox(height: 07),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Smith Portfolio',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text('12Nov22',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 08,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        '0.04%(£0.60)',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.cyan[100],
                            backgroundImage: AssetImage(
                                "assets/images/fidelity_01-min.png",
                              ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.cyan[100],
                            backgroundImage: AssetImage(
                                "assets/images/InvescoUK.png"
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.cyan[100],
                            backgroundImage: AssetImage(
                                "assets/images/umbrela.png"
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 13,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.account_circle_outlined,
                              color: Colors.black,
                              size: 19,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return BlocProvider<NavigationCubit>(
                                    create: (context) => NavigationCubit(),
                              child: MaterialApp(
                              theme: ThemeData(primarySwatch: Colors.blue),
                              home: BabyScreen(),
                              ),
                              );
                                },
                              ),);
                            },
                            child:Text(
                              'individual',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color.fromARGB(255, 216, 216, 216),
                              ),
                            ),),


                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
