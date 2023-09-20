import 'package:flutter/material.dart';
import 'package:furrl_frontend_assignment/Constants/message_constants.dart';
import 'package:furrl_frontend_assignment/Constants/named_routes.dart';
import 'package:furrl_frontend_assignment/CustomWidget/app_bar.dart';
import 'package:furrl_frontend_assignment/CustomWidget/buttons.dart';
import 'package:furrl_frontend_assignment/CustomWidget/hash_tags.dart';
import 'package:furrl_frontend_assignment/CustomWidget/message_and_hash.dart';
import 'package:furrl_frontend_assignment/CustomWidget/photo_name.dart';
import 'package:furrl_frontend_assignment/CustomWidget/post.dart';
import 'package:furrl_frontend_assignment/UI/Colors/custom_colors.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const Appbar(withBackIcon: true, title: "Kevin's Frame"),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: PhotoName(showFollowerCount: false),
          ),
          const MessageAndHash(),
          const Post(showProfile: false),
          const SizedBox(height: 20),
          HollowButton(
              title: 'Edit Frame',
              onPress: () {
                Navigator.pushNamed(context, NamedRoutes.edit);
              })
        ],
      ),
    ));
  }
}
