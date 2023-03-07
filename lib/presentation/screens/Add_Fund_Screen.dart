import 'package:flutter/material.dart';

class Add_Fund_Screen extends StatefulWidget {
  const Add_Fund_Screen({Key? key}) : super(key: key);

  @override
  State<Add_Fund_Screen> createState() => _Add_Fund_ScreenState();
}

class _Add_Fund_ScreenState extends State<Add_Fund_Screen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children:[
          Column(
              children:[
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

                    ),
                ),
              ]
          ),
        ],
    );
  }
}
