
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/model.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    IconButton(
    style: IconButton.styleFrom(
    backgroundColor: Colors.white,
    padding: EdgeInsets.all(20)),
    onPressed: () {},
    icon: Icon(
    Icons.apps_outlined,color: Colors.black,
    size: 35,
    ),
    iconSize: 20,
    ), Text(
    ' Shopkart',
    style: GoogleFonts.roboto(
    textStyle: TextStyle(
    color: KprimaryColor,
    fontSize: 30,
    fontWeight: FontWeight.w500,
    ),
    ),
    ),

    IconButton(
    style: IconButton.styleFrom(
    backgroundColor: Colors.white,
    padding: EdgeInsets.all(20)),
    onPressed: () {},
    icon: Icon(
    Icons.add_alert_outlined,
    color: Colors.black87,
    size: 30,
    ),
    iconSize: 35),
    ]
    );
  }
}
