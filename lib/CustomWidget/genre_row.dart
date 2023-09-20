import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furrl_frontend_assignment/UI/Colors/custom_colors.dart';

class GenreRow extends StatefulWidget {
  const GenreRow({Key? key}) : super(key: key);
  @override
  State<GenreRow> createState() => _GenreRowState();
}

List _genre = [];

class _GenreRowState extends State<GenreRow> {
  @override
  void initState() {
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: ListView.builder(
          itemCount: _genre.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 45,
                    backgroundColor: CustomColors.purple,
                    child: CircleAvatar(
                      radius: 43,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(_genre[index]['image_url'].toString()),
                      ),
                    ),
                  ),
                ),
                Text(_genre[index]['text'].toString())
              ],
            );
          }),
    );
  }

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/data/genre.json');
    final data = await json.decode(response);
    setState(() {
      _genre = data["data"];
    });
  }
}
