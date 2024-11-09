import 'package:eapp/utils/discount_card.dart';
import 'package:eapp/utils/new_arrivals.dart';
import 'package:eapp/utils/popular.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomapageView extends StatefulWidget {
  const HomapageView({super.key});

  @override
  State<HomapageView> createState() => _HomapageViewState();
}

class _HomapageViewState extends State<HomapageView> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //appbar
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        actions: const [
          Icon(
            Icons.search,
            size: 20,
            color: Colors.grey,
          )
        ],
      ),

      //darwer
      drawer: Drawer(
        backgroundColor: Colors.grey.shade300,
      ),

      //Body
      
      body: ListView(children: [
        Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(height: 35,),
            Container(
              height: 250,
              width: 500,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: const [
                  DiscountCard(),
                  DiscountCard(),
                  DiscountCard(),
                  DiscountCard(),
                ],
              ),
            ),
          ]),
          Column(children: [
            const SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.grey.shade600,
                    paintStyle: PaintingStyle.fill)),
            const SizedBox(
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "New Arrivals",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 160,
                ),
                Text(
                  "View All",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.grey.shade100,
                  height: 235,
                  width: 250,
                  child: PageView(children: const [
                    NewArrivals(),
                    NewArrivals(),
                    NewArrivals(),
                    NewArrivals()
                  ]),
                ),
                const SizedBox(
                  width: 25,
                ),
                Container(
                  color: Colors.grey.shade100,
                  height: 235,
                  width: 250,
                  child: PageView(children: const [
                    NewArrivals(),
                    NewArrivals(),
                    NewArrivals(),
                    NewArrivals()
                  ]),
                )
              ],
            ),
            const Column(
              children: [],
            )
          ]),
          const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Popoular",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  Text(
                    "View All",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Column(
            children: [
              PopularScreen(
                  brand: "Nike", 
                  article: "Jordn 3", 
                  rating: 4.0, 
                  prices: 1205),
                  PopularScreen(
                    brand:"adidas" ,
                     article: "SAMBA OG",
                     rating: 4.5, 
                     prices: 1450.00),
                  PopularScreen(
                    brand:"BIDAN" ,
                     article: "Galaxy",
                     rating: 3.5, 
                     prices: 450.90),
                  PopularScreen(
                    brand:"Lous" ,
                     article: "MArk 4",
                     rating: 2.5, 
                     prices: 170.00),
                  PopularScreen(
                    brand:"Coustus" ,
                     article: "Meta Z",
                     rating: 5.0, 
                     prices: 170.00),
                  PopularScreen(
                    brand:"Balaciaga" ,
                     article: "Drag 101",
                     rating: 4.0, 
                     prices: 150.00)
            ],
          )
        ]),
      ]),
      bottomNavigationBar:const GNav(
        gap: 5,
        tabs: [
        GButton(icon: Icons.home,text: "Home",),
        GButton(icon: Icons.trolley,text: "Cart",),
        GButton(icon: Icons.add_alert_rounded,text: "Notification",),
        GButton(icon: Icons.person_rounded ,text:"Account ")
        
      ]),
    );
  }
}





// Container(
//           child: Icon(Icons.favorite),
//           alignment:Alignment(0.8,-0.8),
//           height: 150,
//           width: 150,
//           decoration: BoxDecoration(color: Colors.blue.shade200,
//           borderRadius: BorderRadius.circular(12) ),
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         // article name
//         Text("The Marc Jacobs",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
//         //basic info
//         Text("data",style: TextStyle(fontSize: 16),),
//         //Prices
//         Text("\$190.90",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),



// Column(children:ListView(children: [Container(height: 200,width: 200,child: PopularScreen(),)],)
//      ,)







//  [Container(
//         height: 200,
//         width: 200,
//         color: Colors.red,
//         child: PopularScreen(),
//       )]