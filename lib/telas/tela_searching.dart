import 'package:flutter/material.dart';
import 'package:tech_home/utils/cores.dart';



class TelaSearching extends StatefulWidget {
  const TelaSearching({Key? key}) : super(key: key);

  @override
  _TelaSearchingState createState() => _TelaSearchingState();
}

class _TelaSearchingState extends State<TelaSearching> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
          ),
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                transitionOnUserGestures: true,
                tag: "CircularTag",
                child: CircularProgressIndicator(
                  color: Color(PaletaCores.VERDE_PRIMARIO),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text('Procurando dispositivo',
                style: TextStyle(
                  fontSize: 30,
                 // color: Color(PaletaCores.VERDE_PRIMARIO),
color: Colors.black
                ),),
              SizedBox(height: 20,),

            ],
          ),
          ),
        )
    );
  }
}
