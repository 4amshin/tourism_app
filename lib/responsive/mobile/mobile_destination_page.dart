import 'package:flutter/material.dart';

import 'package:tourism_app/Models/tourism_place.dart';
import 'package:tourism_app/components/booking_button.dart';
import 'package:tourism_app/components/favorite_button.dart';

class MobileDestinationPage extends StatefulWidget {
  final TourismPlace place;
  const MobileDestinationPage({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  State<MobileDestinationPage> createState() => _MobileDestinationPageState();
}

class _MobileDestinationPageState extends State<MobileDestinationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Stack(
                  children: [
                    _mainImage(),
                    _topIcon(),
                    _favoriteIcon(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      widget.place.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'font2',
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        _openHours(),
                        const SizedBox(width: 10),
                        _ticket(),
                      ],
                    ),
                    const SizedBox(height: 10),
                    _moreImage(),
                    const SizedBox(height: 10),
                    Text(
                      widget.place.description,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    _bookingButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _mainImage() {
    return Container(
      height: MediaQuery.of(context).size.height / 2 + 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(widget.place.imageAsset),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 20,
            offset: const Offset(0, 10),
          )
        ],
      ),
    );
  }

  _topIcon() {
    return Positioned(
      top: 20,
      right: 10,
      left: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          const CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  _favoriteIcon() {
    return Positioned(
      bottom: 0,
      right: 10,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 15,
              offset: const Offset(0, 3),
            )
          ],
        ),
        transform: Matrix4.translationValues(0, 20, 0),
        child: const CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          child: FavoriteButton(),
        ),
      ),
    );
  }

  _openHours() {
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0.1,
              blurRadius: 5,
              offset: const Offset(3, 5),
            )
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.access_time_filled,
              color: Colors.deepOrange,
              size: 28,
            ),
            const SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Open Hours',
                  style: TextStyle(
                    fontFamily: 'font2',
                    fontSize: 11,
                    color: Colors.grey.withOpacity(0.8),
                  ),
                ),
                Text(
                  widget.place.openTime,
                  style: const TextStyle(
                    fontFamily: 'font2',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _ticket() {
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0.1,
              blurRadius: 5,
              offset: const Offset(3, 5),
            )
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(
                'assets/icon/receipt.png',
                color: Colors.deepOrange,
                scale: 22,
              ),
            ),
            const SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ticket Price',
                  style: TextStyle(
                    fontFamily: 'font2',
                    fontSize: 11,
                    color: Colors.grey.withOpacity(0.8),
                  ),
                ),
                Text(
                  widget.place.ticketPrice,
                  style: const TextStyle(
                    fontFamily: 'font2',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _moreImage() {
    return SizedBox(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: widget.place.imageUrls.map((assets) {
          return Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(assets),
            ),
          );
        }).toList(),
      ),
    );
  }

  _bookingButton() {
    return const Padding(
      padding: EdgeInsets.only(top: 15, bottom: 15),
      child: BookingButton(),
    );
  }
}
