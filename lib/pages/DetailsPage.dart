import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterdesign/pages/nextpage.dart';
import 'package:flutterdesign/pages/homepage.dart';
import 'package:flutterdesign/widgets/textwidget.dart';

class DetailsPage extends StatefulWidget {
  final String image;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final int index;

  DetailsPage(
      {required this.image,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.index});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
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
    //               .push(MaterialPageRoute(builder: (_) => const ProfilePage())),
    //           icon: const Icon(Icons.search, color: Colors.black87,))
    //     ],
    //
    //   ),
    //   backgroundColor: Colors.white,
    //   body: SafeArea(
    //     child: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       crossAxisAlignment: CrossAxisAlignment.stretch,
    //       children: <Widget>[
    //         SizedBox(
    //           height: 35,
    //         ),
    //         // Image.asset(widget.image),
    //         Text(
    //           widget.text1,
    //           style: TextStyle(
    //             fontSize: 25,
    //             fontWeight: FontWeight.w600,
    //             color: Colors.black,
    //           ),
    //           textAlign: TextAlign.center,
    //         ),
    //         // SizedBox(
    //         //   height: 40,
    //         // ),
    //         Expanded(
    //
    //           child: FittedBox(
    //             fit:  BoxFit.contain,
    //             child: Container(
    //               padding: EdgeInsets.symmetric(
    //                 horizontal: 10,
    //                 vertical: 10,
    //               ),
    //               decoration: BoxDecoration(
    //                 color: Colors.black26,
    //                 borderRadius: BorderRadius.only(
    //                   topLeft: Radius.circular(30),
    //                   topRight: Radius.circular(30),
    //                 ),
    //               ),
    //               child: Row(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Card(
    //                     color: const Color(0xff7AA65E),
    //                     shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.circular(14),
    //                     ),
    //                     child: Container(
    //                       alignment: Alignment.center,
    //                       padding: const EdgeInsets.only( left: 15,right: 15,bottom: 15,top: 12),
    //                         width: 120,
    //                         height: 45,
    //                       child: Text("Worldwide",
    //                               style: TextStyle(
    //                                   fontSize: 16,
    //                                   fontWeight: FontWeight.bold,
    //                                   color: Colors.white
    //                               ),
    //                             ),
    //                     ),
    //                   ),
    //                    Container(
    //                      padding: const EdgeInsets.only( left: 15,right: 15,bottom: 15,top: 15),
    //                      child: Text("Worldwide",
    //                        style: TextStyle(
    //                            fontSize: 16,
    //                            fontWeight: FontWeight.bold,
    //                            color: Colors.black54
    //                        ),
    //                      ),
    //                    ),
    //                    Container(
    //                      padding: const EdgeInsets.only( left: 15,right: 15,bottom: 15,top: 15),
    //                      child: Text("Worldwide",
    //                        style: TextStyle(
    //                            fontSize: 16,
    //                            fontWeight: FontWeight.bold,
    //                            color: Colors.black54
    //                        ),
    //                      ),
    //                    ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //         Expanded(
    //           child: FittedBox(
    //             // fit: ,
    //             child: Container(
    //               padding: EdgeInsets.symmetric(
    //                 horizontal: 10,
    //                 vertical: 10,
    //               ),
    //               decoration: BoxDecoration(
    //                 color: Colors.black26,
    //                 borderRadius: BorderRadius.only(
    //                   topLeft: Radius.circular(30),
    //                   topRight: Radius.circular(30),
    //                 ),
    //               ),
    //               child: Row(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Card(
    //                     color: const Color(0xff7AA65E),
    //                     shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.circular(14),
    //                     ),
    //                     child: Container(
    //                       alignment: Alignment.center,
    //                       padding: const EdgeInsets.only( left: 15,right: 15,bottom: 15,top: 12),
    //                         width: 120,
    //                         height: 45,
    //                       child: Text("Worldwide",
    //                               style: TextStyle(
    //                                   fontSize: 16,
    //                                   fontWeight: FontWeight.bold,
    //                                   color: Colors.white
    //                               ),
    //                             ),
    //                     ),
    //                   ),
    //                    Container(
    //                      padding: const EdgeInsets.only( left: 15,right: 15,bottom: 15,top: 15),
    //                      child: Text("Worldwide",
    //                        style: TextStyle(
    //                            fontSize: 16,
    //                            fontWeight: FontWeight.bold,
    //                            color: Colors.black54
    //                        ),
    //                      ),
    //                    ),
    //                    Container(
    //                      padding: const EdgeInsets.only( left: 15,right: 15,bottom: 15,top: 15),
    //                      child: Text("Worldwide",
    //                        style: TextStyle(
    //                            fontSize: 16,
    //                            fontWeight: FontWeight.bold,
    //                            color: Colors.black54
    //                        ),
    //                      ),
    //                    ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return Scaffold(
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
                MaterialPageRoute(builder: (_) => const BarItemPage())),
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
          // title: TextWidget(
          //   text: widget.text1,
          //   color: Colors.black,
          //   size: 30,
          // ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 15,),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment. spaceEvenly,
                  children: [
                    Column(children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(88.0)),
                        ),
                        child: Image.asset("assets/"+widget.image),
                        ),

              Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                              bottom: 15, top: 11),
                          // width: 100,
                          height: 65,
                          child: TextWidget(
                            text: widget.text1,
                            color: Colors.black54,
                            size: 20,
                          ))],),

                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 25,),
                // padding: const EdgeInsets.only(top: 15, left: 55, right: 10),
                // width: 3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment. spaceEvenly,
                  children: [
                    Card(
                      color: const Color(0xff7AA65E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15, top: 12),
                        width: 140,
                        height: 50,
                        // width: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SizedBox(
                              child: TextWidget(
                                text: "Overview",
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(
                               bottom: 15, top: 11),
                        width: 120,
                        height: 65,
                        child: TextWidget(
                          text: "Reviews",
                          color: Colors.black54,
                          size: 20,
                        )),
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(
                               bottom: 15, top: 11),
                        // width: 100,
                        height: 65,
                        child: TextWidget(
                          text: "Vacancies",
                          color: Colors.black54,
                          size: 20,
                        ))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15,),
                // width: 3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment. spaceEvenly,
                  children: [
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        // padding: const EdgeInsets.only(
                        //     left: 15, right: 15, bottom: 15, top: 12),
                        width: 200,
                        height: 60,
                        // width: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.add, color: Colors.black87, size: 30,),
                            SizedBox(
                              child: TextWidget(
                                text: "Add Review",
                                color: Colors.black87,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.black87,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        // padding: const EdgeInsets.only(
                        //     left: 15, right: 15, bottom: 15, top: 12),
                        width: 150,
                        height: 50,
                        // width: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.remove_red_eye_outlined, color: Colors.white, size: 30,),
                            SizedBox(
                              child: TextWidget(
                                text: "Follow",
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
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
                        text:"Company info", color: Colors.black87,size: 35,),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15,left: 10, right: 10),
                // width: 3,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                        child: TextWidget(
                          text: "Website",
                          color: Colors.black54,
                          size: 15,
                        )),
                    Container(
                        child: TextWidget(
                          text: "www.amazon.com",
                          color: Colors.black,
                          size: 15,
                        ))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15,left: 10, right: 10),
                // width: 3,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                        child: TextWidget(
                          text: "Head Quarter",
                          color: Colors.black54,
                          size: 15,
                        )),
                    Container(
                        child: TextWidget(
                          text: "Seattle, Washington, USA",
                          color: Colors.black,
                          size: 15,
                        ))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15,left: 10, right: 10),
                // width: 3,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                        child: TextWidget(
                          text: "Founder",
                          color: Colors.black54,
                          size: 15,
                        )),
                    Container(
                        child: TextWidget(
                          text: "Jeff Bezos",
                          color: Colors.black,
                          size: 15,
                        ))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15,left: 10, right: 10),
                // width: 3,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                        child: TextWidget(
                          text: "Founded",
                          color: Colors.black54,
                          size: 15,
                        )),
                    Container(
                        child: TextWidget(
                          text: "July 5, 1994",
                          color: Colors.black,
                          size: 15,
                        ))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15,left: 10, right: 10),
                // width: 3,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                        child: TextWidget(
                          text: "Size",
                          color: Colors.black54,
                          size: 15,
                        )),
                    Container(
                        child: TextWidget(
                          text: "Service",
                          color: Colors.black,
                          size: 15,
                        ))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15,left: 10, right: 10),
                // width: 3,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                        child: TextWidget(
                          text: "Type",
                          color: Colors.black54,
                          size: 15,
                        )),
                    Container(
                        child: TextWidget(
                          text: "Service",
                          color: Colors.black,
                          size: 15,
                        ))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15,left: 10, right: 10),
                // width: 3,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                        child: TextWidget(
                          text: "Industry",
                          color: Colors.black54,
                          size: 15,
                        )),
                    Container(
                        child: TextWidget(
                          text: "Ecommerce",
                          color: Colors.black,
                          size: 15,
                        ))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15,left: 10, right: 10),
                // width: 3,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                        child: TextWidget(
                          text: "Revenue",
                          color: Colors.black54,
                          size: 15,
                        )),
                    Container(
                        child: TextWidget(
                          text: "386.1 billion USD",
                          color: Colors.black,
                          size: 15,
                        ))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15,left: 10, right: 10),
                // width: 3,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                        child: TextWidget(
                          text: "Competitors",
                          color: Colors.black54,
                          size: 15,
                        )),
                    Container(
                        child: TextWidget(
                          text: "Daraz, Alibaba",
                          color: Colors.black,
                          size: 15,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
