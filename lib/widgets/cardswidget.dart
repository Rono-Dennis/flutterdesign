import 'package:flutter/material.dart';
class CardsWidget extends StatefulWidget {
  final String image;
  final String text1,text2,text3, text4;
  const CardsWidget({Key? key, required this.image, required this.text1, required this.text2, required this.text3, required this.text4}) : super(key: key);

  @override
  _CardsWidgetState createState() => _CardsWidgetState();
}

class _CardsWidgetState extends State<CardsWidget> {
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Card(
        color:const Color(0xffFFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Container(
          padding: const EdgeInsets.only( left: 1,),
          width: 300,
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
