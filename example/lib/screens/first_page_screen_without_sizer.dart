import 'package:example/util/constant.dart';
import 'package:example/util/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageFirstPageScreenWithoutSizer extends StatefulWidget {
  const PageFirstPageScreenWithoutSizer({super.key});

  @override
  PageFirstPageScreenWithoutSizerState createState() =>
      PageFirstPageScreenWithoutSizerState();
}

class PageFirstPageScreenWithoutSizerState
    extends State<PageFirstPageScreenWithoutSizer> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          widMainImg(),
          Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                widTitle(),
                const SizedBox(
                  height: 20,
                ),
                widDesc(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget widMainImg() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Image.asset(
        Constant.img1,
        height: MediaQuery.of(context).size.height / 2,
      ),
    );
  }

  Widget widTitle() {
    return Text(
      Strings.appName,
      style: GoogleFonts.lato(
        textStyle: const TextStyle(
          fontSize: 35,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget widDesc() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Text(
        Strings.appDesc,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(
          textStyle: const TextStyle(
            height: 1.3,
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
