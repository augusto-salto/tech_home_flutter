import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_home/utils/rotas.dart';


class TelaIntro extends StatefulWidget {
  const TelaIntro({Key? key}) : super(key: key);

  @override
  _TelaIntroState createState() => _TelaIntroState();
}

class _TelaIntroState extends State<TelaIntro> {
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
                        image: AssetImage('images/backgroundIntro.png'),
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
                        Text('Bem vindo ao SmarTech Home', textAlign: TextAlign.center, style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24
                        ),),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            right: 50,
                            left: 50,

                          ),
                          child: Text('Monitore e controle sua casa de qualquer lugar do mundo com um único clique no aplicativo!', textAlign: TextAlign.center, style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,

                          ),),
                        ),
                        
                        TextButton(onPressed: (){
                          Navigator.of(context).popAndPushNamed(Rota.TELA_INTRO_SEC);
                        }, child: Container(
                          height: 100,
                        )
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
