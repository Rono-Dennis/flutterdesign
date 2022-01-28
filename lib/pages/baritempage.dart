import 'package:flutter/material.dart';
import 'package:flutterdesign/pages/homepage.dart';
import 'package:flutterdesign/widgets/textwidget.dart';
class BarItemPage extends StatefulWidget {
  const BarItemPage({Key? key}) : super(key: key);

  @override
  _BarItemPageState createState() => _BarItemPageState();
}

class _BarItemPageState extends State<BarItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.grey),
          onPressed: () {
            // passing this to our root
            Navigator.of(context).pop();
          },
        ),
        actions: [
          // Navigate to the Search Screen
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const HomePage())),
              icon: const Icon(Icons.search, color: Colors.black87,))
        ],
      ),

      body:SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15,),
            SizedBox(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      // color: const Color(0xffFFFFFF),
                      padding: const EdgeInsets.only(top:3, left: 35, right: 20),
                      child: const Center(
                        child:TextWidget(
                        text:"Companies", color: Colors.black,size: 30,), ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    padding: const EdgeInsets.only(top:3, left: 85,),
                    child: const Icon(Icons.graphic_eq),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff7AA65E)
                    ),

                  )
                ],
              ),
              height: 60,
            ),
          ],
        ),
      )

    );
  }
}