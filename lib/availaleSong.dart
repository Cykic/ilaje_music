import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ilaje_music/playingPage.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class AvailableSongs extends StatelessWidget {
  @override
  TextStyle _coverStyle = TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 20,
      fontWeight: FontWeight.w900,
      color: Color(0xffF78771));

  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> PlayingPage()));
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Color(0xffFFD3CD)),
          child: Row(
            children: [
              IconButton(icon: Icon(Icons.keyboard_arrow_up), onPressed: null),
              SleekCircularSlider(
                innerWidget: null,
                appearance: CircularSliderAppearance(
                    size: 40,
                    spinnerMode: false,
                    startAngle: 180,
                    angleRange: 360,
                    infoProperties:
                        InfoProperties(mainLabelStyle: TextStyle(fontSize: 0)),
                    customColors:
                        CustomSliderColors(progressBarColor: Color(0xffF78771)),
                    customWidths: CustomSliderWidths(progressBarWidth: 3)),
                min: 1,
                max: 100,
                initialValue: 50,
              ),
              SizedBox(
                width: 16,
              ),
              Text("Alive - The Tem.."),
              Spacer(),
              IconButton(icon: Icon(Icons.pause_circle_outline), onPressed: null),
              IconButton(icon: Icon(Icons.skip_next), onPressed: null),
              SizedBox(
                width: 24,
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: Text(
          "Playlist Details",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 24,
            ),
            Container(
              height: 205,
              child: Stack(
                children: [
                  Positioned(
                    top: 8,
                    left: MediaQuery.of(context).size.width * 0.28,
                    child: Container(
                      child: Stack(
                        children: [
                          Positioned(
                            top: 15,
                            right: 8,
                            child: Text(
                              "Ope Ye",
                              style: _coverStyle,
                            ),
                          ),
                          Positioned(
                            top: 36,
                            right: 8,
                            child: Text(
                              "Baba",
                              style: _coverStyle,
                            ),
                          ),
                          Positioned(
                            top: 70,
                            right: 8,
                            child: Text(
                              "Vol 1",
                              style: _coverStyle,
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 0,
                            child: SvgPicture.asset("asset/vol.svg"),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffFFD3CD),
                          borderRadius: BorderRadius.circular(20)),
                      height: 189,
                      width: 189,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: MediaQuery.of(context).size.width * .68,
                    child: Container(
                      child: Center(
                          child: Text(
                        "Viral",
                        style: TextStyle(color: Color(0xffE5E5E5)),
                      )),
                      height: 20,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffF78771),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: Text(
                "Ope Ye Baba",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
            ),
            Center(
              child: Text(
                "Yinka Ayefele",
                style: TextStyle(
                    color: Color(0xff818181),
                    fontSize: 12,
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Center(
                      child: Text(
                    "Play",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
                  width: 220,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Color(0xffFFE5DF), shape: BoxShape.circle),
                  child: Icon(
                    Icons.file_download,
                    color: Color(0xffF68871),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
