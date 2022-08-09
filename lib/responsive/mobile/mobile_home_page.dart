import 'package:flutter/material.dart';
import 'package:tourism_app/Models/tourism_place.dart';
import 'package:tourism_app/Screens/destination_page.dart';
import 'package:tourism_app/components/bottom_navbar.dart';
import 'package:tourism_app/components/favorite_button.dart';

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({Key? key}) : super(key: key);

  @override
  State<MobileHomePage> createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Wisata Kambo',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'font2',
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                Icon(
                  Icons.notifications,
                  size: 27,
                  color: Colors.black,
                ),
                // SizedBox(
                //   height: 25,
                //   child: Image.asset(
                //     'assets/icon/bell.png',
                //     color: Colors.black,
                //   ),
                // ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          SizedBox(
            height: MediaQuery.of(context).size.height - 250,
            child: PageView.builder(
                itemCount: tourismPlaceList.length,
                controller: PageController(viewportFraction: 0.7),
                onPageChanged: (int index) => setState(() => _index = index),
                itemBuilder: (context, index) {
                  final TourismPlace place = tourismPlaceList[index];
                  return Transform.scale(
                    scale: index == _index ? 1 : 0.7,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DestinationPage(
                              place: place,
                            ),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height - 350,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(place.imageAsset),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      spreadRadius: 1,
                                      blurRadius: 20,
                                      offset: const Offset(10, 10),
                                    )
                                  ],
                                ),
                              ),
                              const Positioned(
                                right: 15,
                                bottom: 15,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  child: FavoriteButton(),
                                ),
                              ),
                              // Positioned(
                              //   left: 15,
                              //   bottom: 20,
                              //   child: Text(
                              //     place.name,
                              //     style: const TextStyle(
                              //       fontSize: 20,
                              //       color: Colors.white,
                              //       fontFamily: 'font2',
                              //       fontWeight: FontWeight.normal,
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                          Text(
                            place.name,
                            style: const TextStyle(
                              fontSize: 25,
                              fontFamily: 'font2',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: BottomNavBar(),
      ),
    );
  }
}
