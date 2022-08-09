import 'package:flutter/material.dart';

class BookingButton extends StatelessWidget {
  const BookingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Book now',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'font2',
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        Positioned(
            top: 5,
            right: 10,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_sharp,
                size: 20,
                color: Colors.white,
              ),
            ))
      ],
    );
  }
}
