import 'package:flutter/cupertino.dart';

class TextWidget extends StatelessWidget {

  final double size;
  final String text;
  final Color color;


  const TextWidget({Key? key, required this.size, required this.text, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold
      ),
    );
  }
}
