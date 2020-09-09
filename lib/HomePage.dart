import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ilaje_music/availaleSong.dart';
import 'package:ilaje_music/localFile.dart';
import 'package:ilaje_music/playlistPage.dart';
import 'playingPage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 16,),
              CustomTabBar(),
              SizedBox(height: 8),
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.89,
                child: TabBarView(
                  children: [
                  Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.70,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>PlaylistPage()));
                            },
                            child: Container(
                              height: 315,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFF7858)),
                              child: Stack(children: [
                                Positioned(top: 30, left: 20, child: Text(
                                  "Top 20\n of the week", style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28),),),
                                Positioned(bottom: 21, right: 1, child: SvgPicture
                                    .asset("asset/rafiki.svg"),),
                                Positioned(bottom: 21, left: 10, child: Image.asset(
                                    "asset/Ellipse1.png"),),
                                Positioned(bottom: 21, left: 30, child: Image.asset(
                                    "asset/Ellipse2.png"),),
                                Positioned(bottom: 21, left: 50, child: Image.asset(
                                    "asset/Ellipse3.png"),)
                              ],),
                            ),
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              Text("New Releases", style: TextStyle(fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff17807B))),
                              Spacer(),
                              Text("See All", style: TextStyle(color: Color(
                                  0xffBCCEDA)),)
                            ],
                          ),
                          Container(),
                          SizedBox(height: 24),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AlbumCover("asset/img1.jpg"),
                              AlbumCover("asset/img2.jpg")
                            ],),
                          SizedBox(height: 24),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AlbumCover("asset/img1.jpg"),
                              AlbumCover("asset/img2.jpg")
                            ],)

                        ],
                      ),
                    ),
                  ),
                  Container(height:double.infinity,color: Colors.black,child: LocalFile())
                ],),
              )

            ],
          ),
        ),
      ),
    );
  }
}

class AlbumCover extends StatelessWidget {
  final String imgPath;

  AlbumCover(this.imgPath);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => AvailableSongs()));
      },
      child: Container(
        padding: EdgeInsets.only(right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.asset(imgPath, fit: BoxFit.cover,),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.42,
              height: 170,
              decoration: BoxDecoration(color: Colors.grey,
                  borderRadius: BorderRadius.circular(20)),),
            SizedBox(height: 8,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("Psalm 114", style: TextStyle(
                  color: Color(0xff17807B),
                  fontSize: 14,
                  fontWeight: FontWeight.w600),),
            ),
            SizedBox(height: 2),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("Bukola Ale", style: TextStyle(
                  color: Color(0xffBCCEDA),
                  fontSize: 10,
                  fontWeight: FontWeight.w600),),
            )

          ],),
      ),
    );
  }
}

class CustomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TabBar(
        indicator: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20)),
        indicatorColor: Colors.transparent,
        tabs: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Discover New",
              style: TextStyle(color: Color(0xff17807B)),
            ),
          ),
          Text("My Library",
              style: TextStyle(color: Color(0xff17807B)))
        ],
      ),
    );
  }
}

