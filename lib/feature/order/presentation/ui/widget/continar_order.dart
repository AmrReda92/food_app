



import 'package:flutter/material.dart';

class ContinarOrder extends StatelessWidget {
  const ContinarOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Container(
                      width: double.infinity,
                      height: 500,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 235, 235, 235),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 27,
                          vertical: 20
                        ),
                        child: Column(
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Burger",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600),),
                                Text("28",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: const Color.fromARGB(255, 69, 187, 255)),),
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                children: [
                                  Image.asset("assets/images/Star 1.png"),
                                Text("4.9 (3k+ Rating)"),
                                ],
                              ),
                                
                               
                                Align(alignment: AlignmentGeometry.centerRight,
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black),
                                          borderRadius: BorderRadius.circular(100)
                                          ),
                                        
                                        child: Icon(Icons.add),),
                                        SizedBox(width: 10,),
                                        Text("02",style: TextStyle(fontSize: 20),),
                                         SizedBox(width: 10,),
                                        Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black),
                                          borderRadius: BorderRadius.circular(100)
                                          ),
                                        
                                        child: Icon(Icons.remove),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                              width: 230,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 168, 255, 179)
                              ),
                            child: Row(
                              children: [
                                Icon(Icons.location_on_outlined,size: 45,),
                                Text("Delivery Address \nDhaka, Bangladesh"),
                              ],
                            ),
                          ),
                          
                          Container(
                            width: 70,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 228, 141, 255)
                              ),
                            child: Icon(Icons.no_sim),
                          )
                          ],),
                            
                          
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                        ;
  }
}