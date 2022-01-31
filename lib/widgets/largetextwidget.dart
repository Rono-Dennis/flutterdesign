import 'package:flutter/material.dart';
class CardsWidgeet extends StatefulWidget {
  final String image;
  final String text1,text2,text3, text4;
  const CardsWidgeet({Key? key, required this.image, required this.text1, required this.text2, required this.text3, required this.text4}) : super(key: key);

  @override
  _CardsWidgeetState createState() => _CardsWidgeetState();
}

class _CardsWidgeetState extends State<CardsWidgeet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        color:const Color(0xffFFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Container(
          padding: const EdgeInsets.only( left: 10,),
          width: 200,
          height: 80,
          child: Row(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/"+widget.image, height: 70,width: 70,))),
              // const SizedBox(height: 16,),
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(widget.text1,textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                  // const SizedBox(height: 8,),
                  Row(
                    children:  [const Icon(Icons.star_border,color: Color(0xffFBE0D4)),
                      Text(widget.text2,textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black26
                        ),
                      ),],
                  ),
                  // Expanded(child: Container()),
                  // const SizedBox(height: 16,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.location_on_outlined,color: Color(0xffD5EFF5),),
                        Text(widget.text3,textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffC6C6C6)
                          ),
                        ),
                      ],
                    ),
                  ),


                ],

              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 13),
                    child: Row(children: [
                      const Icon(Icons.account_balance_wallet_sharp,size: 14,color: const Color(0xffEAF0E4),),
                      Text(widget.text4,
                        style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffC6C6C6)
                        ),
                      ),
                    ],),
                  )
                ],
              ),
              // const Icon(Icons.star_border,),
              const SizedBox(height: 8,),

            ],
          ),
        ),
      ),
    );
  }
}

buildBackground() {
  return Card(
    color: const Color(0xff7AA65E),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
    ),
    child: Container(
      padding: const EdgeInsets.only( left: 15,),
      width: 160,
      height: 100,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          SizedBox(height: 16,),
          Text("Worldwide",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),
          Icon(Icons.graphic_eq, color: Colors.white,),
          SizedBox(height: 8,),

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

buildBackground1() {
  return Card(
    color:const Color(0xffFFFFFF),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
    ),
    child: Container(
      padding: const EdgeInsets.only( left: 10,),
      width: 290,
      height: 100,
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/amazon.jpg", height: 70,width: 70,),
          // const SizedBox(height: 16,),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              const Text("Amazon.com",textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              const SizedBox(height: 8,),
              Row(
                children: const [Icon(Icons.star_border,color: Color(0xffFBE0D4)),
                  Text("4.8",textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black26
                    ),
                  ),],
              ),
              // Expanded(child: Container()),
              const SizedBox(height: 16,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.location_on_outlined,color: Color(0xffD5EFF5),),
                    Text("New york, USA",textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffC6C6C6)
                      ),
                    ),
                  ],
                ),
              ),


            ],

          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(children: const [
                  Icon(Icons.account_balance_wallet_sharp,size: 14,color: Color(0xffEAF0E4),),
                  Text("1 Vacancy",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffC6C6C6)
                    ),
                  ),
                ],),
              )
            ],
          ),
          // const Icon(Icons.star_border,),
          const SizedBox(height: 8,),

        ],
      ),
    ),
  );
}
buildBackground3() {
  return Card(
    color: Colors.cyan,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(28),
    ),
    child: Container(
      width: 160,
      height: 160,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          // Icon(Icons.upload_outlined, color: Colors.black45,),
          SizedBox(height: 16,),
          Text("Active",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
          SizedBox(height: 8,),

        ],
      ),

    ),
  );
}