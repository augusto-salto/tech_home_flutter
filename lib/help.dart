import 'package:flutter/material.dart';

class Profile4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double widthMaximo = MediaQuery.of(context).size.width;
    return Scaffold(

        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 500,
                    color: Colors.red,
                  ),
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomCenter,
                          image: AssetImage('images/backgroundIntro.png'),
                        )

                    ),
                  ),

                  Positioned(
                    bottom: 0,
                    top: 40,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.amber,
                      height: 100,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 360),
                    child: CircleAvatar(
                      maxRadius: 40,
                      child: Image.asset('images/icon1.png',
                        height: 300,
                        width: 300,
                        fit: BoxFit.contain,),
                    ),
                  ),



                ],
              ),



            ],
          ),
        ));
  }


  Widget _buildMainInfo(BuildContext context, double width) {
    return Container(
      width: width,
      margin: const EdgeInsets.all(10),
      alignment: AlignmentDirectional.center,
      child: Column(
        children: <Widget>[
          Text('Lorem Ipsum',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text('Flutter',
              style: TextStyle(
                  color: Colors.grey.shade50, fontStyle: FontStyle.italic))
        ],
      ),
    );
  }

  Widget _buildInfo(BuildContext context, double width) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.email, color: Colors.teal),
                      title: Text("E-Mail"),
                      subtitle: Text("email@gmailc.com"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.teal),
                      title: Text("Phone Number"),
                      subtitle: Text("11-111111-11"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.person, color: Colors.teal),
                      title: Text("About"),
                      subtitle: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      leading: Icon(Icons.my_location, color: Colors.teal),
                      title: Text("Location"),
                      subtitle: Text("Canada"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
