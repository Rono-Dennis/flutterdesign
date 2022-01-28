import 'package:flutter/material.dart';
import 'package:flutterdesign/widgets/Textwidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top:47, left: 20),
              child: Row(
                children: [
                  const Icon(Icons.menu, size: 30, color: Colors.black54,),
                  Expanded(child: Container()),
                  Positioned(child: CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.asset("assets/profile.jpg"),
                    ),

                  ),
                  right: 0,
                  top: 0,),
                ],
              ),
            ),
            SizedBox(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      // color: const Color(0xffFFFFFF),
                      padding: const EdgeInsets.only(top:3, left: 125, ),
                      child: Center(
                          child:
                          Image.asset("assets/part-alternation.png"),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top:13, right: 115),
                    child: const TextWidget(text:"Milao", color: Colors.black87,size: 30,

                    ),),
                ],
              ),
              height: 60,
            ),
            Container(
              padding: const EdgeInsets.only(top:15, left: 55, right: 10),
              // width: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 280,
                    child: TextWidget(
                      text:"You deserve a job that loves you back", color: Colors.black,size: 30,),
                  ),
                   ],
              ),
            ),

            const SizedBox(height: 15,),
            SizedBox(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      // color: const Color(0xffFFFFFF),
                      padding: const EdgeInsets.only(top:3, left: 35, right: 20),
                      child: Center(
                        child:
                        TextFormField(
                            autofocus: false,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.search),
                              contentPadding: const EdgeInsets.fromLTRB(
                                  20, 15, 20, 15),
                              hintText: "Search job or companies",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),

                              ),
                              // fillColor: const Color(0xffFFFFFF),
                            )
                        ),

                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: const Icon(Icons.graphic_eq),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                  )
                ],
              ),
              height: 60,
            ),

            const SizedBox(height: 22,),
             Row(
               children: [
                 Expanded(child: Container()),
                 buildBackground(),
                 Expanded(child: Container()),
                 buildBackground1(),
                 Expanded(child: Container()),
               ],
             ),

            Container(
              padding: const EdgeInsets.only(top:30, left: 25,),
              // width: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(
                    width: 280,
                    child: TextWidget(
                      text:"Best-of List", color: Colors.black,size: 20,),
                  ),
                ],
              ),
            ),

            Row(
              children: [
                Expanded(child: Container()),
                buildBackground2(),
                Expanded(child: Container()),
                buildBackground3(),
                Expanded(child: Container()),
              ],
            )



   ],
        ),
      ),
    );
  }

  buildBackground() {
    return Card(
      color: const Color(0xffE1F3F4),
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
            SizedBox(
              width: 100,
              child: Text("Create Job Alert",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildBackground1() {
    return Card(
      color: Color(0xffE1F0D7),
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
            Icon(Icons.add_alert_sharp, color: Colors.black45,),
            SizedBox(height: 16,),
            SizedBox(
              width: 100,
              child: Text("Create Job Alert",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildBackground2() {
    return Card(
      color: const Color(0xffEFDFD0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28),
      ),
      child: SizedBox(
        width: 160,
        height: 160,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.account_balance_wallet_outlined, color: Colors.black45,),
            SizedBox(height: 16,),
            SizedBox(
              width: 130,
              child: Text("Best Company to work",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildBackground3() {
    return Card(
      color: const Color(0xffE7EAF4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28),
      ),
      child: SizedBox(
        width: 160,
        height: 160,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.add_business, color: Colors.black45,),
            SizedBox(height: 16,),
            SizedBox(
              width: 130,
              child: Text("Best Job for You",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
