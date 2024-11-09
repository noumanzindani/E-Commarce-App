import 'package:flutter/material.dart';

class NewArrivals extends StatelessWidget {
  const NewArrivals({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children:[
      Column(
        children:[ Container(child: Image.network("https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/024f1b83-37ae-4687-9ff2-390cc9d82117/NIKE+SB+PS8.png",width: 150,height: 150,fit: BoxFit.cover,),
          height: 150,
          width: 150,
          decoration: BoxDecoration(color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12) ),
        ),
       const SizedBox(
          height: 5,
        ),
        // article name
        const Text("The Marc Jacobs",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        //basic info
        const Text("data",style: TextStyle(fontSize: 16),),
        //Prices
       const Text("\$190.90",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
      
      ]),
    ]);
  }
}
