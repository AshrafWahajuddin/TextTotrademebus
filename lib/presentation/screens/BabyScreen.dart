import 'package:flutter/material.dart';

import 'package:trademebus/logic/navigation/navigation_cubit.dart';
import 'package:trademebus/presentation/screens/Add_Fund_Screen.dart';
import 'package:trademebus/presentation/screens/Sell_Portfolio_Screen.dart';
import 'package:trademebus/widgets/trancationCard.dart';

class BabyScreen extends StatefulWidget {
  const BabyScreen({Key? key}) : super(key: key);

  @override
  State<BabyScreen> createState() => _BabyScreenState();
}

class _BabyScreenState extends State<BabyScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              title: Text('Smiths Portfolio'),

            ),
            Expanded(child: Column(
                children: [
                  Padding(padding: const EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                    bottom: 16.0,
                    top: 32.0,
                  ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Text('Add_Fund', ),
                          Text('See All', ),
                        ]
                    ),
                  ),
                  Flexible(flex: 1,child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                    TransactionCard(
//                        color: Colors.white,
                        child:Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.cyan[100],
                              backgroundImage: AssetImage(
                                "assets/images/fidelity_01-min.png",
                              ),
                            ),
                          ],
                        ),
                      title: 'Fidility Index UK P Acc',
                      subTitle: 'People and planet',
                      price: '£ 2,000.02 ', letter: '',
                      ),
                      TransactionCard(
//                        color: Colors.white,
                        child:Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.cyan[100],
                              backgroundImage: AssetImage(
                                "assets/images/fidelity_01-min.png",
                              ),
                            ),
                          ],
                        ),
                        title: 'Invesco UK Eq High',
                        subTitle: 'Social',
                        price: '£ 2,000.02 ', letter: '',
                      ),
                      TransactionCard(
//                        color: Colors.white,
                        child:Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.cyan[100],
                              backgroundImage: AssetImage(
                                "assets/images/fidelity_01-min.png",
                              ),
                            ),
                          ],
                        ),
                        title: 'L&G Global Technology',
                        subTitle: 'Smart Technology',
                        price: '£ 2,000.02 ', letter: '',
                      ),
                    ],

                  ),)
                ],
            ),),
            Expanded(child:Column(
                children:[
            Padding(padding: const EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              bottom: 16.0,
              top: 32.0,
            ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Text('Transaction', ),

                  ]
              ),
            ),
                  Flexible(flex: 1,child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      TransactionCard(
//                        color: Colors.white,
                        child:Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.cyan[100],
                              backgroundImage: AssetImage(
                                "assets/images/fidelity_01-min.png",
                              ),
                            ),
                          ],
                        ),
                        title: 'Fidility Index UK P Acc',
                        subTitle: 'Buy Order! 12 nov 22',
                        price: '£ 2,000.02 ', letter: '',
                      ),
                      TransactionCard(
//                        color: Colors.white,
                        child:Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.cyan[100],
                              backgroundImage: AssetImage(
                                "assets/images/fidelity_01-min.png",
                              ),
                            ),
                          ],
                        ),
                        title: 'Invesco UK Eq High',
                        subTitle: 'Buy Order! 12 nov 22',
                        price: '£ 2,000.02 ', letter: '',
                      ),
                      TransactionCard(
//                        color: Colors.white,
                        child:Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.cyan[100],
                              backgroundImage: AssetImage(
                                "assets/images/fidelity_01-min.png",
                              ),
                            ),
                          ],
                        ),
                        title: 'L&G Global Technology',
                        subTitle: 'Buy Order! 12 nov 22',
                        price: '£ 2,000.02 ', letter: '',
                      ),
                    ],

                  ),)
                ]
            ))

          ],
        ),


      ),

    );
  }
}