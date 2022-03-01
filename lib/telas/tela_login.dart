import 'package:flutter/material.dart';
import 'package:tech_home/utils/cores.dart';
import 'package:tech_home/utils/rotas.dart';
import 'package:sign_button/sign_button.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: LayoutBuilder(
            builder: (ctx, constante){
              return Column(
                children: [
                  Container(
                    height: constante.maxHeight * 0.4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomCenter,
                          image: AssetImage('images/backgroundLogin.png'),
                        )
                    ),
                  ),

                  Flexible(
                    child: ListView(
                      shrinkWrap: true,
                      children: [

                        Align(
                          alignment: Alignment.topCenter,
                          child: Column(
                            //mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: constante.maxHeight * 0.02,),
                              Text("Entrar", textAlign: TextAlign.center, style: TextStyle(
                                  color: Color(PaletaCores.VERDE_PRIMARIO),
                                  fontWeight: FontWeight.bold,
                                  fontSize: constante.maxHeight * 0.04
                              )),
                              Card(
                                margin: EdgeInsets.only(left: constante.maxWidth * 0.05, right:constante.maxWidth * 0.05, top:constante.maxHeight * 0.02),
                                elevation: 11,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.person, color: Color(PaletaCores.VERDE_PRIMARIO)),
                                      //suffixIcon: Icon(Icons.check_circle, color: Colors.green,),
                                      hintText: 'E-mail',
                                      hintStyle: TextStyle(color: Colors.black38.withOpacity(0.6),),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(horizontal: constante.maxWidth * 0.02, vertical: constante.maxHeight * 0.02)
                                  ),
                                ),
                              ),
                              Card(
                                margin: EdgeInsets.only(left: constante.maxWidth * 0.05, right:constante.maxWidth * 0.05, top:constante.maxHeight * 0.02),
                                elevation: 11,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock, color: Color(PaletaCores.VERDE_PRIMARIO)),
                                      suffixIcon: Icon(Icons.visibility, color: Colors.black38.withOpacity(0.6),),
                                      hintText: "Senha",
                                      hintStyle: TextStyle(
                                        color: Colors.black38.withOpacity(0.6),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(horizontal: constante.maxWidth * 0.02, vertical: constante.maxHeight * 0.02)
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(constante.maxWidth * 0.05),
                                child: RaisedButton(
                                  padding: EdgeInsets.symmetric(vertical: constante.maxHeight * 0.025),
                                  //color: Color(PaletaCores.roxo2),
                                  color: Color(PaletaCores.VERDE_PRIMARIO),
                                  onPressed: (){
                                    Navigator.of(context).pushNamed(Rota.TELA_DASHBOARD);
                                  },
                                  elevation: 11,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
                                  child: Text("Entrar", style: TextStyle(
                                      color: Colors.white
                                  )),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text("ou, continue com"),
                                    SizedBox(height: constante.maxHeight * 0.02),

                                    Row(
                                      children: <Widget>[
                                        SizedBox(width: constante.maxWidth * 0.05),
                                        Expanded(

                                          child: SignInButton(
                                            buttonSize: ButtonSize.small,
                                              btnText: '  Facebook',
                                              buttonType: ButtonType.facebook,
                                              onPressed: () {
                                                print('click');
                                              }),
                                         /* child: TextButton(
                                            onPressed: (){},
                                            child: Text('Facebook'),
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(18),
                                                  side: BorderSide(

                                                  )
                                                )
                                              )
                                            ),
                                          ),*/
                                        ),
                                        SizedBox(width: constante.maxWidth * 0.02),
                                        Expanded(

                                          child: SignInButton(
                                            btnText: '       Google',
                                              buttonSize: ButtonSize.small,
                                              buttonType: ButtonType.google,
                                              onPressed: () {
                                                print('click');
                                              }),
                                          /*child: TextButton.icon(
                                            onPressed: (){},
                                            icon: Image.asset(''),
                                            label: Text('Google', style: TextStyle(color: Color(PaletaCores.VERDE_PRIMARIO)),),

                                            style: ButtonStyle(
                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(18),
                                                        side: BorderSide(

                                                        )
                                                    )
                                                )
                                            ),
                                          ),*/
                                        ),
                                        SizedBox(width: constante.maxWidth * 0.05),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text("Não tem uma conta?"),
                                        TextButton(
                                          child: Text("Cadastre-se"),
                                          //textColor: Color(PaletaCores.VERDE_PRIMARIO),
                                          onPressed: ()
                                          {
                                            Navigator.of(context).pushNamed(Rota.TELA_CADASTRO_SLIVER);
                                          },
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),


                ],
              );
            },
          )
      ),
    );
  }
}
