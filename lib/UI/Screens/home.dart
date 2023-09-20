import 'package:flutter/material.dart';
import 'package:furrl_frontend_assignment/Constants/message_constants.dart';
import 'package:furrl_frontend_assignment/CustomWidget/genre_row.dart';
import 'package:furrl_frontend_assignment/CustomWidget/header.dart';
import 'package:furrl_frontend_assignment/CustomWidget/message.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: const [
          Header(),
          Message(message: MessageConstants.offerMessage),
          GenreRow()
        ],
      ),
    ));
  }
}
