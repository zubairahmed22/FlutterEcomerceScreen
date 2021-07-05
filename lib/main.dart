import 'dart:async';
import 'package:flutter/material.dart';
import '../SlideWidget/Slider_item.dart';
import "../Widget/Slider.dart";
import 'Product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (currentPage < 2) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      _pageController.animateToPage(currentPage,
          duration: Duration(milliseconds: 300), curve: Curves.bounceIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  onPageChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffF9F9F9),
            title: Center(
              child: Text(
                "Ecommerce App",
                style: TextStyle(color: Colors.black),
              ),
            ),
            actions: [
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
              )
            ],
          ),
          body: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Items",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View More",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
              Column(children: <Widget>[
                Container(
                    height: 300,
                    margin: EdgeInsets.only(top: 10),
                    child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: onPageChanged,
                      itemCount: slideList.length,
                      itemBuilder: (ctx, i) => Slideritem(i),
                    ))
              ]),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 185),
                    child: Text(
                      "More Categories",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.chair,
                                  color: Colors.purple,
                                  size: 18,
                                ),
                                Text(
                                  "Clothes",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Row(
                                children: [
                                  Text("5 items"),
                                ],
                              ))
                        ],
                      ),

                      /// second column
                      ///
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.charging_station_outlined,
                                  color: Colors.purple,
                                  size: 18,
                                ),
                                Text(
                                  "Electronic",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Row(
                                children: [
                                  Text("29 items"),
                                ],
                              ))
                        ],
                      ),

                      Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.house,
                                  color: Colors.purple,
                                  size: 18,
                                ),
                                Text(
                                  "HouseHolds",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 50),
                              child: Row(
                                children: [
                                  Text("29 items"),
                                ],
                              ))
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Popular item",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View More",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Column(
                  children: [
                    Container(
                      width: 160,
                      height: 120,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            "https://www.mercedes-benz.com/en/eq/concept-cars/vision-eqs/_jcr_content/image/MQ6-12-image-20190910094823/00-mercedes-benz-vision-eqs-show-car-mercedes-benz-eq-2560x1440.jpeg",
                            fit: BoxFit.fill,
                          )),
                    ),

                    // Text and start heading
                    /// Heading Text
                    Container(
                      margin: EdgeInsets.only(right: 40, top: 10),
                      child: Text(
                        "Mercedes Benz",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),

                    ///text container

                    Container(
                      margin: EdgeInsets.only(left: 0),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 17),
                          Icon(Icons.star, color: Colors.amber, size: 17),
                          Icon(Icons.star, color: Colors.amber, size: 17),
                          Icon(Icons.star, color: Colors.amber, size: 17),
                          Container(
                            margin: EdgeInsets.only(left: 5, top: 5),
                            child: Text(
                              "5.0(23 Reviews)",
                              style: TextStyle(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),

                /// second product Row
                Column(
                  children: [
                    Container(
                      width: 160,
                      height: 120,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh_XX8Z4mFu0mU2lMBXmg719lFFETqpe7lrA&usqp=CAU",
                            fit: BoxFit.fill,
                          )),
                    ),

                    // Text and start heading
                    /// Heading Text
                    Container(
                      margin: EdgeInsets.only(right: 40, top: 10),
                      child: Text(
                        "Mackbook Air",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),

                    ///text container

                    Container(
                      margin: EdgeInsets.only(left: 0),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 17),
                          Icon(Icons.star, color: Colors.amber, size: 17),
                          Icon(Icons.star, color: Colors.amber, size: 17),
                          Icon(Icons.star, color: Colors.amber, size: 17),
                          Container(
                            margin: EdgeInsets.only(left: 5, top: 5),
                            child: Text(
                              "5.0(23 Reviews)",
                              style: TextStyle(),
                            ),
                          )
                        ],
                      ),
                    ),

                    /// second product Row
                  ],
                ),
              ]),

              //second row

              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Column(
                  children: [
                    Container(
                      width: 160,
                      height: 120,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            "https://cdn.vox-cdn.com/thumbor/2C-mZegZvVMWDMJWqNyOiZg3vBM=/0x0:2040x1360/1200x800/filters:focal(857x517:1183x843)/cdn.vox-cdn.com/uploads/chorus_image/image/69168448/vpavic_4547_20210421_0022.0.jpg",
                            fit: BoxFit.fill,
                          )),
                    ),

                    // Text and start heading
                    /// Heading Text
                    Container(
                      margin: EdgeInsets.only(right: 40, top: 10),
                      child: Text(
                        "Iphone 12",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),

                    ///text container

                    Container(
                      margin: EdgeInsets.only(left: 0),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 17),
                          Icon(Icons.star, color: Colors.amber, size: 17),
                          Icon(Icons.star, color: Colors.amber, size: 17),
                          Icon(Icons.star, color: Colors.amber, size: 17),
                          Container(
                            margin: EdgeInsets.only(left: 5, top: 5),
                            child: Text(
                              "5.0(23 Reviews)",
                              style: TextStyle(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),

                /// second product Row
                Column(
                  children: [
                    Container(
                      width: 160,
                      height: 120,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp8on_8hJ9ALkQ5TORXBK99o6Qs4pWD_p3hw&usqp=CAU",
                            fit: BoxFit.fill,
                          )),
                    ),

                    // Text and start heading
                    /// Heading Text
                    Container(
                      margin: EdgeInsets.only(right: 40, top: 10),
                      child: Text(
                        "Note Ultra 20",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),

                    ///text container

                    Container(
                      margin: EdgeInsets.only(left: 0),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 17),
                          Icon(Icons.star, color: Colors.amber, size: 17),
                          Icon(Icons.star, color: Colors.amber, size: 17),
                          Icon(Icons.star, color: Colors.amber, size: 17),
                          Container(
                            margin: EdgeInsets.only(left: 5, top: 5),
                            child: Text(
                              "5.0(23 Reviews)",
                              style: TextStyle(),
                            ),
                          )
                        ],
                      ),
                    ),

                    /// second product Row
                  ],
                ),
              ]),
            ],
          ),
          floatingActionButton: new FloatingActionButton(
              elevation: 0.0,
              child: new Icon(Icons.search),
              backgroundColor: Colors.purple,
              onPressed: () {}),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text("Home"),
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  title: Text("Favorite"),
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  title: Text("shoping"),
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("Profile"),
                  backgroundColor: Colors.white)
            ],
          ),
        ));
  }
}
