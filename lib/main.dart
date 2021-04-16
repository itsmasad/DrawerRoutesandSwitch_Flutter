import 'package:flutter/material.dart';
import 'otherpage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
bool sbool =false;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer')
      ),
      drawer: Drawer(child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Muhammad Asad'),
          accountEmail: Text('Email@Example.com'),
          currentAccountPicture: CircleAvatar(child: Text('MA'),),
          otherAccountsPictures: [
            CircleAvatar(child: Text('A'),),
            CircleAvatar(child: Text('B'),),
          ],
          ),
          ListTile(title: Text('Home'), trailing: Icon(Icons.arrow_forward),
          onTap:  () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new op('Home'))),
          ),
          ListTile(title: Text('Page 2'), trailing: Icon(Icons.arrow_forward),
          onTap:  () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new op('Page 2'))),),
          ListTile(title: Text('Close'), trailing: Icon(Icons.close),onTap: (){Navigator.pop(context);}),
        ]
      ),),
          body: Center(
            child: Container(  
        child: Switch(value: sbool,
        onChanged: (bool ab){
          setState(() {
            sbool = ab;
            
          });
        }),
      ),
          ),
    );
  }
}