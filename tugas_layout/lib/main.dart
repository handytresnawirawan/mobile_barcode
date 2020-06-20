import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';



void main() {

  runApp(new MaterialApp(

    title: "Profil",

    home: new HalamanSatu(),

  ));

}



class HalamanSatu extends StatelessWidget{

  @override

  Widget build(BuildContext context){

    return new Scaffold(

      backgroundColor: Colors.white,

      appBar: new AppBar(

          backgroundColor: Colors.blue,

          title: new Center(

            child: new Text("Profil"),

          )

      ),



      body: Center(

        child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              ClipRRect(

                borderRadius: BorderRadius.circular(100.0),

                child: Image.network(

                  "https://scontent.fdps5-1.fna.fbcdn.net/v/t1.0-9/s960x960/89996707_1270263089832091_6694298531928211456_o.jpg?_nc_cat=109&_nc_sid=8024bb&_nc_oc=AQksDVm9dRQ7odS6i_vcienNbst7f0WY-x_kq1WNVSZUKXk-myZcf53ZfWUCQAoq-kQ&_nc_ht=scontent.fdps5-1.fna&_nc_tp=7&oh=f481d9c2da2e6e7179b8c7217ea09537&oe=5E920D6D",

                  width: 150.0,

                  height: 150.0,

                  fit: BoxFit.cover,

                ),

              ),

              Text(

                "I Gede Handy Tresna Wirawan", style: TextStyle(color: Colors.blue, fontSize: 20.0, height: 2.0, fontWeight: FontWeight.bold,),),

              Text(

                "NIM. 1815051085", style: TextStyle(color: Colors.blue, fontSize: 20.0, height: 1.0, fontWeight: FontWeight.bold ),),

              Text(

                "Pendidikan Teknik Informatika",style: TextStyle(color: Colors.blue, fontSize: 15.0, height: 1.0,),),



              Card(

                margin: EdgeInsets.only(top: 40.0),

                child: Row(

                  children:<Widget> [

                    Expanded(

                      child: Card(

                          color: Colors.lightBlueAccent,

                          margin: EdgeInsets.only(left: 10.0, right: 10.0),

                          child: Column (

                            children: <Widget>[Icon(Icons.my_location, size: 110, color: Colors.green,),

                              Text('Singaraja',style: TextStyle(color: Colors.green, fontSize: 17.0, height: 2.0, fontWeight: FontWeight.bold,),)],

                          )

                      ),

                    ),



                    Expanded(

                      child: Card(

                          color: Colors.lightBlueAccent,

                          margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0,),

                          child: Column (

                            children: <Widget>[Icon(Icons.home, size: 110, color: Colors.grey,),

                              Text('Buluh Village',style: TextStyle(color: Colors.blueGrey, fontSize: 17.0, height: 2.0, fontWeight: FontWeight.bold,),)],

                          )

                      ),

                    )

                  ],

                ),

              ),



              Card(

                margin: EdgeInsets.only(top: 10.0),

                child: Row(

                  children:<Widget> [

                    Expanded(

                      child: Card(

                          color: Colors.lightBlueAccent,

                          margin: EdgeInsets.only(left: 10.0, right: 10.0),

                          child: Column (

                            children: <Widget>[Icon(Icons.web, size: 100, color: Colors.yellowAccent,),

                              Text('tracert.id/computer',style: TextStyle(color: Colors.yellow, fontSize: 12.0, height: 2.0, fontWeight: FontWeight.bold,),)],

                          )

                      ),

                    ),



                    Expanded(

                      child: Card(

                          color: Colors.lightBlueAccent,

                          margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0,),

                          child: Column (

                            children: <Widget>[Icon(Icons.location_city, size: 110, color: Colors.black87,),

                              Text('Undiksha',style: TextStyle(color: Colors.black87, fontSize: 17.0, height: 2.0, fontWeight: FontWeight.bold,),)],

                          )

                      ),

                    )

                  ],

                ),

              ),



            ]

        ),

      ),



    );

  }

}