import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_resturant/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  const FoodTile({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.only(left: 25),
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(food.imagePath, height: 140),
          Text(food.name, style: GoogleFonts.dmSerifDisplay(fontSize: 20)),

          SizedBox(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${food.price}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellowAccent),
                    Text(food.rating),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
