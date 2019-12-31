import 'package:flutter/material.dart';

class ThaoLuan extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ThaoLuanState();
  }
  
}
class ThaoLuanState extends State<ThaoLuan>{
  @override
  int count = 5;              // kiem soat so luong ListTitle

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh Sách Thảo Luận'),
      ),
      body: getDanhSachThaoLuanListView(),
      backgroundColor: Colors.white,
     
    );
  }
  ListView getDanhSachThaoLuanListView(){
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context,int position){
        return Card(
          color: Colors.grey[400],
          elevation: 3.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            title: Text('Title',style: titleStyle,),
            subtitle: Text('Subtitle'),
            trailing: CircleAvatar(
              backgroundColor: Colors.blue,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.red)
                ),
                child: Icon(Icons.delete),
                onPressed: (){
                  // delete api call

                  showDialog(
                    context: context,
                    builder: (BuildContext contenxt){
                      return AlertDialog(
                        title: Text('Xóa Thảo luận', style: TextStyle(fontWeight: FontWeight.bold)),
                        content: Text('Thành công'),
                      );
                    }
                  );
                },
              ),
            ),
            onTap: (){                    // onTap 
              debugPrint('QLThaoLuan ListView Tapped');
            },
            
          )
        );
      },
    );
  }

}
      


