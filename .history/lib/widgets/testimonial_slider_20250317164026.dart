import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_portfolio/colors.dart';

class TestimonialsSection extends StatelessWidget {
  final List<String> testimonials = [
    '“Amazing work! Exceeded expectations.”',
    '“Reliable and delivers on time. Highly recommended.”',
    '“Fantastic Flutter skills and a great communicator.”',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: maincolor,
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        children: [
          Text('Testimonials', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.grey )),
          SizedBox(height: 20),
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              height: 160,
              aspectRatio: 10/9
            ),
            items: testimonials.map((text) {
              return Card(
                color: Colors.grey,
                elevation: 4,
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Center(child: Text(text, style: TextStyle(fontSize: 18),textAlign: TextAlign.center,)),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
