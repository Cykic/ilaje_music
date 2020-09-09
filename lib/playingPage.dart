import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';


double _discreteValue = 0.5;
class PlayingPage extends StatefulWidget {
  
  @override
  _PlayingPageState createState() => _PlayingPageState();
}

class _PlayingPageState extends State<PlayingPage> {

  bool _play = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Text("I seem out of it",style: TextStyle(color: Color(0xffBCCEDA),fontSize: 22),),
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: Color(0xff17807B),borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))),),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.symmetric(horizontal:100,vertical: 24),
              child: Row(
            children: [
                 Icon(Icons.fast_rewind,color: Colors.white,size: 40,),
                Spacer(),
                Icon(Icons.fast_forward,color: Colors.white,size: 40,)

            ],

          ),
          height: MediaQuery.of(context).size.height*0.85,
          decoration: BoxDecoration(color: Color(0xff4FBB8A),borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))),),
            Container(
              height: MediaQuery.of(context).size.height*0.7,
              decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))),
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xff17807B),
                            size: 18,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("asset/upload.svg", color: Color(0xff17807B)),
                          iconSize: 20,
                        )
                      ],
                    ),
                    SizedBox(height: 24),
                    Stack(
                      children: [
                      SleekCircularSlider(
                          appearance: CircularSliderAppearance(size:280 ,customWidths: CustomSliderWidths(progressBarWidth: 5,handlerSize: 8,trackWidth: 5),
                              customColors: CustomSliderColors(dotColor:Color(0xff4FB788) ,trackColor: Color(0xffBCCEDA),progressBarColor: Color(0xff4FB788))),
                          onChange: (double value) {
                            print(value);
                          }),
                      Positioned(top:16,left: 16,
                        child: Container(height: 250,width: 250,
                          child: ClipRRect(borderRadius: BorderRadius.circular(125),child: Image.asset("asset/acover.jpg",fit: BoxFit.cover,)),
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey),),
                      ),

                    ],),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.volume_off,
                              color: Color(0xffBCCEDA),
                            )),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.volume_up,
                              color: Color(0xff4FBB8A),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Psalm 114",
                              style: TextStyle(
                                  color: Color(0xff17807B),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 8,),
                            Text(
                              "Bukola Ale",
                              style: TextStyle(
                                  color: Color(0xff818181),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Spacer(),
                        InkWell(
                          onTap: (){
                            _play = !_play;
                            setState(() {
                            });
                          },
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xffFF765B),
                            child: _play ? Icon(
                              Icons.pause,
                              color: Colors.white,
                            ):Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height:24,),
                    CSlider()


                  ],
                ),
              )
            ),

          ],
          ),
      ),
      );
  }
}

class CSlider extends StatefulWidget {
  @override
  _CSliderState createState() => _CSliderState();
}

class _CSliderState extends State<CSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Column(
        children: [
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Color(0xffDE8A79),
              inactiveTrackColor: Color(0xffBCCEDA),
              trackShape: RectangularSliderTrackShape(),
              trackHeight: 3.0,
              thumbColor: Color(0xffDE8A79),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius:2 ),


            ),
            child: Slider(
              value: _discreteValue,
              min: 0.0,
              max: 100.0,
              onChanged: (double value) {
                setState(() {
                  _discreteValue = value;
                });
              },
            ),
          ),
          Padding(
            padding:EdgeInsets.symmetric(horizontal:29.0),
            child: Row(children: [
              Text("0:40"),
              Spacer(),
              Text("-0.48")

            ],),
          )
        ],
      ),
    );
  }
}
