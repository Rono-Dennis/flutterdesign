import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
          // padding: const EdgeInsets.all(32),
          children: [
            buildBackground(),
            buildBackground(),
            // buildBurger(),
          ],
        ));
  }

  // child: Image.asset("assets/part-alternation.png"),
  // Expanded(child: Container()),
  // const TextWidget(text:"Milao", color: Colors.black87,size: 30,


  buildBackground() {
    return Card(
      color: Colors.cyan,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28),
      ),
      child: Container(
        width: 160,
        height: 160,
        child: Column(
          mainAxisSize: MainAxisSize.min,
         mainAxisAlignment: MainAxisAlignment.center,
         children: const [
           Icon(Icons.upload_outlined, color: Colors.black45,),
           SizedBox(height: 16,),
           Text("Active",
             style: TextStyle(
                 fontSize: 24,
                 fontWeight: FontWeight.bold,
                 color: Colors.black
             ),
           ),
           SizedBox(height: 8,),
           Text("2 Times a day",
             style: TextStyle(
                 fontSize: 14,
                 fontWeight: FontWeight.bold,
                 color: Colors.black
             ),
           ),
         ],
        ),
      ),
    );
  }

  buildBurger() {
    return ClipRRect(
      borderRadius:BorderRadius.circular(20),
    child: Container(
      padding: const EdgeInsets.all(12),
      color: Colors.black45,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/icons8-upload-32.png", width: 200, height: 200,
          ),
          const Text("Image 1",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),)
        ],
      ),
    ),
    );
  }
}
