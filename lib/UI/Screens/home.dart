import 'package:flutter/material.dart';
import 'package:furrl_frontend_assignment/Constants/message_constants.dart';
import 'package:furrl_frontend_assignment/CustomWidget/genre_row.dart';
import 'package:furrl_frontend_assignment/CustomWidget/app_bar.dart';
import 'package:furrl_frontend_assignment/CustomWidget/message.dart';
import 'package:furrl_frontend_assignment/CustomWidget/post.dart';
import 'package:furrl_frontend_assignment/UI/Colors/custom_colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: CustomColors.lightGrey,
      body: Column(
        children: const [
          Appbar(withBackIcon: false,title: 'Furrl',),
          Message(message: MessageConstants.offerMessage),
          GenreRow(),
          SizedBox(height: 10),
          Post(showProfile: true,image: null)
        ],
      ),
    ));
  }
}
