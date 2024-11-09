
import 'package:flutter/material.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Container(
              height: 125,
              width: 250,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                   height: 20.0,
                   width: 60.0,
                   padding:const EdgeInsets.all(15),
                   decoration: BoxDecoration(
                   color: Colors.grey.shade300,
                   borderRadius:BorderRadius.circular(12)
                    ), 
                  child: 
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [const
                    Text("50% Off",style:TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                    const Text("On everything today",style:TextStyle(fontSize: 30),),
                    const SizedBox(height: 10,),
                    const Text("With Code:FSCREATION",style:TextStyle(fontSize:17)),
                    const SizedBox(height: 15,),
                    Container(
                      height:50,
                      width: 120,
                      decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:BorderRadius.circular(24)
                      ),
                      child:
                      
                      const Center(
                        child: Text("Get Now",
                        style:TextStyle(
                        color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold) ,),
                      ),
                    )
                  ],
                  ),
                ),],
              ),
            ),
          );
  }
}



// PageView(children: [PageView(scrollDirection: Axis.vertical,
//        children: [ Column(
//         children: [Row(mainAxisAlignment: MainAxisAlignment.center,
//           children: [Container(
//             height: 250,
//             width: 500,
//             child: PageView(
//               scrollDirection: Axis.horizontal,
//               children: [
//                 DiscountCard(),
//                 DiscountCard(),
//                 DiscountCard(),
//                 DiscountCard(),],
//             ),
//           ),
//         ])],),
//    ])],),