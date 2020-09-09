import 'package:flutter/material.dart';
import 'package:ilaje_music/availaleSong.dart';

class LocalFile extends StatefulWidget {
  @override
  _LocalFileState createState() => _LocalFileState();
}

class _LocalFileState extends State<LocalFile> {
  TextStyle _title = TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w800);
  TextStyle _stitle = TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
}
