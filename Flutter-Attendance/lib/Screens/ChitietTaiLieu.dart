import 'package:flutter/material.dart';
import 'package:flutter_homepage_ui/Models/Interaction/Document.dart';
import 'package:flutter_homepage_ui/Screens/QLTaiLieu.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
class TaiLieuDetail extends StatefulWidget{
  final Documment documment;
  TaiLieuDetail({Key key,this.documment}) : super(key:key);
  @override
  State<StatefulWidget> createState() {
    
    return TaiLieuDetailState();
  }
}

class TaiLieuDetailState extends State<TaiLieuDetail> {
  @override
  
  TextEditingController linkController = TextEditingController();
  TextEditingController tieudeController = TextEditingController();


  Widget build(BuildContext context) {
    
    TextStyle textStyle = Theme.of(context).textTheme.title;

    return Scaffold(
      appBar: AppBar(
        title: Text('Chi tiết Tài liệu'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        padding: EdgeInsets.only(top:15.0,left:10.0,right:10.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              const Color(0xff0D37C1),
              Colors.deepPurpleAccent,
              Colors.deepPurple,
              Colors.purple
            ],
            stops: [
              0.1,
              0.4,
              0.7,
              1.0
            ]

          )
        ),
        child: ListView(
          children: <Widget>[
           Padding(
            padding: EdgeInsets.only(top:15.0,bottom:15.0),
             child: Wrap(
               children: <Widget>[
                 DefaultTextStyle(
                   child: Text(
                     'Tiêu đề: ',
                    ),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.white
                  ),
                 ),
                 SizedBox(width:30.0 ),
                  DefaultTextStyle(
                  child: Text(widget.documment.name),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.white
                  ),
                )
               ],
             ),
           ),  
          SizedBox(width: 10.0,height: 10.0,),
          Padding(
             padding: EdgeInsets.only(top:15.0,bottom:15.0),
             child: Wrap(
               children: <Widget>[
                 DefaultTextStyle(
                   child: Text(
                     'Link: ',
                    ),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.white
                  ),
                 ),
                 SizedBox(width: 30.0,),
                 InkWell(
                  onTap: (){
                    //launch('');
                    print('Launch Success');
                  },
                  child: Text(
                    widget.documment.link,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 15.0,
                      color: Colors.white
                    ),
                  ),
                  
                )
               ],
             ),
          )

          ],
        ),
      )
    );
  }

}
