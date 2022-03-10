import 'package:flutter/material.dart';
import 'package:tech_home/telas/tela_insert_name_sensor.dart';
import 'package:tech_home/utils/cores.dart';

class TDeviceFound extends StatefulWidget {
  const TDeviceFound({Key? key}) : super(key: key);

  @override
  _TDeviceFoundState createState() => _TDeviceFoundState();
}

class _TDeviceFoundState extends State<TDeviceFound> {

  Future<String> getFutureDados() async =>
      await Future.delayed(Duration(seconds: 5), () {
        return 'Dados recebidos...';
      });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future:  getFutureDados(),

        builder: (context, snapshot){
          if(!snapshot.hasData){
           return Scaffold(
              //appBar: AppBarWithConfig(tittle: "",),
              body: SafeArea(
                child: LayoutBuilder(
                  builder: (ctx, constante){
                    return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Hero(
                              tag: "CircularTag",
                              transitionOnUserGestures: true,
                              child: CircularProgressIndicator(

                                color: Color(PaletaCores.VERDE_PRIMARIO),
                              ),
                            ),
                            SizedBox(height: constante.maxHeight * 0.05,),
                            Text("DISPOSITIVO ENCONTRADO" , style: TextStyle(fontSize: 25, color: Colors.black,fontWeight: FontWeight.w700),),
                            SizedBox(height: constante.maxHeight * 0.02,),
                            Text("Vamos configurá-lo!" , style: TextStyle(fontSize: 25, color: Color(PaletaCores.VERDE_PRIMARIO),fontWeight: FontWeight.w500),),


                          ],
                        )
                    );
                  },
                ),
              ),
            );
          }else{
            return TInsertSensorName();
          }
    });
  }
}
