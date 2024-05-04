import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:transparent_image/transparent_image.dart';

class MealDetailItem extends StatelessWidget {
  const MealDetailItem({super.key, required this.meal});
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(meal.imageUrl))
      ],
    );
  }
}
