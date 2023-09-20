import 'package:flutter/material.dart';
import 'package:furrl_frontend_assignment/UI/Colors/custom_colors.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);
  final double iconSize = 40;
  final Color iconColor = CustomColors.grey;
  final TextStyle textStyle =
      const TextStyle(color: CustomColors.purple, fontSize: 36);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Furrl', style: textStyle),
          Row(
            children: [
              Icon(Icons.search, size: iconSize, color: iconColor),
              Icon(Icons.bookmark_border, size: iconSize, color: iconColor),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Icon(Icons.shopping_bag_outlined,
                      size: iconSize, color: iconColor),
                  const CircleAvatar(
                    radius: 9,
                    backgroundColor: CustomColors.purple,
                    child: Text(
                      '12',
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
