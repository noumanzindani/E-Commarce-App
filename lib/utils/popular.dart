import 'package:flutter/material.dart';

class PopularScreen extends StatelessWidget {
  final double prices;
  final String brand;
  final String article;
  final double rating;

  const PopularScreen({super.key,
  required this.brand,
  required this.article,
  required this.rating,
  required this.prices});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12)),
                  height: 130,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(child: Image.network("https://assets.adidas.com/images/w_383,h_383,f_auto,q_auto,fl_lossy,c_fill,g_auto/d106efa95e584b79bd505034dfeb3bfb_9366/kaptir-3.0-shoes.jpg"),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            height: 90,
                            width: 90,
                            margin: const EdgeInsets.all(12.0),
                          ),
                           Column(
                            children: [
                              //barnd name
                               Text(
                                ""+brand.toString(),
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),

                              //Article name
                              Text(""+article.toString()),

                              SizedBox(
                                height: 8,
                              ),

                              //rating
                              Row(
                                children: [
                                  Text(
                                    ""+rating.toString(),
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.star)
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                          ),
                           Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              // Prices
                              Text(
                                "\$"+prices.toString(),
                                style:const TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}


// MediaQuery.of(context).size.width*2
// MediaQuery.of(context).size.width*0.1