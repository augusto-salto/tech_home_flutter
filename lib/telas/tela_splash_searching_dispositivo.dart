import 'package:flutter/material.dart';
import 'package:tech_home/telas/tela_searching.dart';



class TelaSplashSearchDevide extends StatefulWidget {
  const TelaSplashSearchDevide({Key? key}) : super(key: key);

  @override
  _TelaSplashSearchDevideState createState() => _TelaSplashSearchDevideState();
}

class _TelaSplashSearchDevideState extends State<TelaSplashSearchDevide> {



  Future<String> getFutureDados() async =>
      await Future.delayed(Duration(seconds: 25), () {
        return 'Dados recebidos...';
      });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getFutureDados(),
        builder: (context, snapshot){
        if(snapshot.hasData){
          return Center(
            child: Text("CARREGADO!"),
          );
        }else{
          return TelaSearching();
        }

        });
  }
}
