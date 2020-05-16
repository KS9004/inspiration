import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inspiration',
      home:Inspiration() ,
    );
  }
}
class Inspiration extends StatefulWidget {
  @override
  _InspirationState createState() => _InspirationState();
}

class _InspirationState extends State<Inspiration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.menu),
            color: Colors.black87,
            onPressed: (){}),
      ),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0)),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Find Your",style: TextStyle(color: Colors.black87,fontSize:25.0),),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text("Inpiration",style: TextStyle(color: Colors.black,fontSize:40.0),),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search,color: Colors.black87,),
                          hintText: 'Search for you looking',
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Promo Today',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                    SizedBox(height: 15.0,),
                    Container(
                      height: 200.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          promoCard('images/3e.jpg'),
                          promoCard('images/15.jpg'),
                          promoCard('images/ab.jpg'),
                          promoCard('images/download.jpg'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
  Widget promoCard(image){
    return AspectRatio(
      aspectRatio: 2.62/3,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
       decoration: BoxDecoration(
         color:Colors.orange,
         borderRadius: BorderRadius.circular(20.0),
         image: DecorationImage(
           fit: BoxFit.cover,
           image:AssetImage(image),
         ),
       ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: [0.2,0.9],
                colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.1),
                ]
            ),
          ),
        ),
      ),
    );
  }
}

