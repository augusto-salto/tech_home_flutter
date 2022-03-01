import 'package:flutter/material.dart';
import 'package:tech_home/utils/cores.dart';
import 'package:tech_home/utils/rotas.dart';

class TelaIntroSecundaria extends StatefulWidget {
  const TelaIntroSecundaria({Key? key}) : super(key: key);

  @override
  _TelaIntroSecundariaState createState() => _TelaIntroSecundariaState();
}

class _TelaIntroSecundariaState extends State<TelaIntroSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (ctx, constante){
          return SafeArea(
              child: Stack(
                children: [

                  Container(
                    height: constante.maxHeight * 0.5,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomCenter,
                          image: AssetImage('images/backgroundSec.png'),
                        )
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10.0,
                                right: 10

                              ),
                              child: Text('Vá em frente. Conecte todos os seus dispositivos', textAlign: TextAlign.center, style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                                right: 50,
                                left: 50,

                              ),
                              child: Text('Com o TECH HOME você pode iniciar, parar e monitorar todos os seus dispositivos PPP Tech remotamente', textAlign: TextAlign.center, style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 17,

                              ),),
                            ),

                            SizedBox(
                              height: constante.maxHeight * 0.08 ,
                            ),

                            FloatingActionButton.extended(
                              onPressed: (){
                                Navigator.of(context).popAndPushNamed(Rota.TELA_LOGIN);
                              },
                              backgroundColor: Color(PaletaCores.VERDE_PRIMARIO),
                              label: Text('Entrar'),

                            ),


                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                          )
                      ),
                      height: constante.maxHeight * 0.5,
                    ),
                  ),
                  Positioned(
                      left: constante.maxWidth * 0.41,
                      top: constante.maxHeight * 0.42,
                      child: CircleAvatar(
                        maxRadius: 38,
                        backgroundImage: AssetImage('images/icon1.png'),
                      )
                  ),

                ],
              )
          );
        },

      ),
    );
  }
}
