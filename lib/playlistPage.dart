import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ilaje_music/availaleSong.dart';
import 'package:ilaje_music/playingPage.dart';

class PlaylistPage extends StatefulWidget {
  @override
  _PlaylistPageState createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {

  TextStyle _title = TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w800);
  TextStyle _stitle = TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 16,),
            Center(child: Text("BANGER",style: _title,)),
            Center(child: Text("11 Songs",style: _stitle,)),
            Container(
              height: MediaQuery.of(context).size.height*0.6,
              child: ListView(
                children: [
                 InkWell(
                   onTap: (){
                     Navigator.of(context).push( MaterialPageRoute(builder: (context)=> AvailableSongs()));
                   },
                   child: ListTile(
                     title: Text("To My Soul",style: _title,),
                     subtitle: Text("Jerry Folk",style: _stitle,),
                     trailing: Text(" 3:43",style: _title),
                   ),
                 )
                ],
              ),
            )
          ],

        ),
      ),
//      bottomNavigationBar: BottomNavigationBar(
//        selectedItemColor: Color(0xffF68871),
//        currentIndex: 0, // this will be set when a new tab is tapped
//        items: [
//          BottomNavigationBarItem(
//            icon: new Icon(Icons.home),
//            title: new Text('Home'),
//          ),
//          BottomNavigationBarItem(
//            icon: new Icon(Icons.search),
//            title: new Text('Search'),
//          ),
//          BottomNavigationBarItem(
//              icon: SvgPicture.asset("asset/news.svg",),
//              title: Text('News')
//          )
//        ],
//      ),
    );
  }
}
