import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  final String title;

  Home({Key key, this.title}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepOrange.shade400,
        title: new Text(title),

      ),

      body: new Center(
        child: new customButtom(),
      ),

    );
  }
}

class customButtom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(

      onTap: (){
        final snackBar = new SnackBar(content: new Text("Hola winston!!"));

        Scaffold.of(context).showSnackBar(snackBar);
      },
      
      //creacion actual button 
      child: new Container(
        padding: new EdgeInsets.all(18.0),
        decoration: new BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius:  new BorderRadius.circular(5.5)
        ),
        child: new Text("First Button"),
      ),
      
    );
  }
}
