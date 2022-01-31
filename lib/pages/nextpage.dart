import 'package:flutter/material.dart';
import 'package:flutterdesign/pages/homepage.dart';
import 'package:flutterdesign/widgets/cardswidget.dart';
import 'package:flutterdesign/widgets/textwidget.dart';

import 'DetailsPage.dart';
class BarItemPage extends StatefulWidget {
  const BarItemPage({Key? key}) : super(key: key);

  @override
  _BarItemPageState createState() => _BarItemPageState();
}

class _BarItemPageState extends State<BarItemPage> {
  int detailsIndex = 0;
  @override
    Widget build(BuildContext context) {

    List<DataDetails> details =[
      DataDetails(
        image: 'amazon.jpg',
        text1: 'Amazon.com',
        text2: '4.8',
        text3: 'New york, USA',
        text4: '1 Vacancy',

      ),
      DataDetails(
        image: 'Bank-Of-America.png',
        text1: 'Bank of America',
        text2: '4.3',
        text3: 'Birmingham, UK',
        text4: '3 Vacancy',

      ),
      DataDetails(
        image: 'comcast.jpg',
        text1: 'Comcast',
        text2: '4.1',
        text3: 'Montreal, Quebec',
        text4: '1 Vacancy',

      ),
      DataDetails(
        image: 'dell.jpg',
        text1: 'Dell Technologies',
        text2: '3.9',
        text3: 'New york, USA',
        text4: '2 Vacancy',

      ),
      DataDetails(
        image: 'leaf.png',
        text1: 'Emerson Electric',
        text2: '3.8',
        text3: 'Liverpool, UK',
        text4: '0 Vacancy',

      ),
      DataDetails(
        image: 'fedEx.png',
        text1: 'FedEx',
        text2: '2.6',
        text3: 'New york, USA',
        text4: '1 Vacancy',

      ),
      DataDetails(
        image: 'starbucks.png',
        text1: 'Starbucks',
        text2: '1.7',
        text3: 'Toronto, Ontario',
        text4: '1 Vacancy',

      ),
    ];
      var width = MediaQuery.of(context).size.width;
      var height = MediaQuery.of(context).size.height;
      return SafeArea(child: Scaffold(
        backgroundColor: Color(0xffF8F6F5),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 0,
            leading:
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.grey),
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const HomePage())),
            ),
            actions: [
              // Navigate to the Search Screen
              IconButton(
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const HomePage())),
                  icon: const Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.black87,
                  ))
            ],
          ),
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          overflow: Overflow.visible,
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 19,),
                Container(
                  padding: const EdgeInsets.only(top: 25,),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment. spaceEvenly,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                              bottom: 15, top: 11),
                          width: 120,
                          height: 65,
                          child: TextWidget(
                            text: "Companies",
                            color: Colors.black54,
                            size: 20,
                          )),
                      Card(
                        color: const Color(0xff7AA65E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          // padding: const EdgeInsets.only(
                          //     left: 15, bottom: 15, top: 12),
                          width: 140,
                          height: 50,
                          // width: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              SizedBox(
                                child: TextWidget(
                                  text: "Worldwide",
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              Icon(Icons.add_road_outlined, color: Colors.white, size: 20,),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Flexible(
                  child:
                  ListView.builder(
                    itemCount: details.length,
                    padding: const EdgeInsets.all(32),
                    itemBuilder: (BuildContext context, int index) {

                      return RawMaterialButton(
                        child: CardsWidget(image: details[index].image, text4: details[index].text4, text3: details[index].text3, text2: details[index].text2, text1: details[index].text1,

                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                image: details[index].image,
                                text1: details[index].text1,
                                text2: details[index].text2,
                                text3: details[index].text3,
                                text4: details[index].text4,
                                index: index,
                              ),
                            ),
                          );
                        },
                      );


                    },

                  ),
                )
              ],
            )

          ],
        ),
      ));

    }
    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.white,
    //     elevation: 0,
    //     leading: IconButton(
    //       icon: const Icon(Icons.arrow_back, color: Colors.grey),
    //       onPressed: () {
    //         // passing this to our root
    //         Navigator.of(context).pop();
    //       },
    //     ),
    //     actions: [
    //       // Navigate to the Search Screen
    //       IconButton(
    //           onPressed: () => Navigator.of(context)
    //               .push(MaterialPageRoute(builder: (_) => const HomePage())),
    //           icon: const Icon(Icons.search, color: Colors.black87,))
    //     ],
    //
    //   ),
    //
    //   body:SingleChildScrollView(
    //     child: Column(
    //       children: [
    //         const SizedBox(height: 15,),
    //         SizedBox(
    //           child: Row(
    //             children: [
    //               Expanded(
    //                 child: Container(
    //                   // color: const Color(0xffFFFFFF),
    //                   padding: const EdgeInsets.only(top:3, left: 35, right: 20),
    //                   child: const Center(
    //                     child:TextWidget(
    //                     text:"Companies", color: Colors.black,size: 30,), ),
    //                 ),
    //               ),
    //
    //               buildBackground()
    //
    //             ],
    //           ),
    //           height: 60,
    //         ),
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //
    //       ],
    //
    //     ),
    //
    //   ),
    //
    //
    // );
  }
class DataDetails {
  final String image;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  DataDetails({
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });
}
