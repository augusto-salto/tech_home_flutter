import 'package:flutter/material.dart';
import 'package:tech_home/my_widgets/appBar_Model.dart';
import 'package:tech_home/utils/cores.dart';
import 'package:tech_home/utils/rotas.dart';



class TelaAddDevice extends StatefulWidget {
  const TelaAddDevice({Key? key}) : super(key: key);

  @override
  _TelaAddDeviceState createState() => _TelaAddDeviceState();
}

class _TelaAddDeviceState extends State<TelaAddDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithConfig(tittle: "Adicionar Dispositivo",),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (ctx, constante){
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/search_device.png', width: constante.maxWidth * 0.7,),
                  SizedBox(height: constante.maxHeight * 0.1,),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(constante.maxWidth * 0.05),
                    child: RaisedButton(
                      padding: EdgeInsets.symmetric(vertical: constante.maxHeight * 0.025),
                      //color: Color(PaletaCores.roxo2),
                      color: Color(PaletaCores.VERDE_PRIMARIO),
                      onPressed: () {
                                      Navigator.of(context).pushNamed(Rota.TELA_SPLASH_SEARCH_DEVICE);
                                    },
                      elevation: 11,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
                      child: Text("Procurar dispositivo", style: TextStyle(
                          color: Colors.white
                      )),
                    ),
                  ),
                ],
              )
            );
          },
        ),
      ),

    ); // fim scaffold
  }
}
