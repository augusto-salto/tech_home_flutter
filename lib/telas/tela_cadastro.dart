import 'package:flutter/material.dart';
import 'package:tech_home/utils/cores.dart';
import 'package:tech_home/utils/rotas.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
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
                    height: constante.maxHeight * 0.3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomCenter,
                          image: AssetImage('images/backgroundCadastro.png'),
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
                              Text("Cadastro", textAlign: TextAlign.center, style: TextStyle(
                                  color: Color(PaletaCores.VERDE_PRIMARIO),
                                  fontWeight: FontWeight.bold,
                                  fontSize: constante.maxHeight * 0.04
                              )
                              ),

                              SizedBox(height: constante.maxHeight * 0.02,),


                              Row(
                                children: <Widget>[
                                  SizedBox(width: constante.maxWidth * 0.05),
                                  Expanded(

                                    child: RaisedButton(
                                      child: Text("Facebook"),
                                      textColor: Colors.white,
                                      color: Color(PaletaCores.VERDE_PRIMARIO),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(40)),
                                      ),
                                      onPressed: (){
                                        Navigator.of(context).pushNamed(Rota.TELA_CADASTRO_SLIVER); //TODO
                                      },
                                    ),
                                  ),
                                  SizedBox(width: constante.maxWidth * 0.02),
                                  Expanded(

                                    child: RaisedButton(
                                      child: Text("Google+"),
                                      textColor: Colors.white,
                                      color: Color(PaletaCores.VERDE_PRIMARIO),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(40)),
                                      ),
                                      onPressed: (){},
                                    ),
                                  ),
                                  SizedBox(width: constante.maxWidth * 0.05),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: constante.maxWidth * 0.05, right:constante.maxWidth * 0.05, top: constante.maxWidth * 0.03, bottom: constante.maxWidth * 0.01),
                                child: Row(
                                  children: [
                                    Flexible(child: Divider(thickness: 2,)),
                                    SizedBox(width: constante.maxWidth * 0.02),
                                    Text('OU'),
                                    SizedBox(width: constante.maxWidth * 0.02),
                                    Flexible(child: Divider(thickness: 2,))
                                  ],
                                ),
                              ),
                              Card(
                                margin: EdgeInsets.only(left: constante.maxWidth * 0.05, right:constante.maxWidth * 0.05, top:constante.maxHeight * 0.02),
                                elevation: 11,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.perm_identity, color: Color(PaletaCores.VERDE_PRIMARIO),),
                                      //suffixIcon: Icon(Icons.check_circle, color: Colors.green,),
                                      hintText: 'Nome',
                                      hintStyle: TextStyle(color: Color(PaletaCores.VERDE_PRIMARIO).withOpacity(0.6),),
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
                                  decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.email, color: Color(PaletaCores.VERDE_PRIMARIO),),
                                      //suffixIcon: Icon(Icons.check_circle, color: Colors.green,),
                                      hintText: 'E-mail',
                                      hintStyle: TextStyle(color: Color(PaletaCores.VERDE_PRIMARIO).withOpacity(0.6),),
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
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.email, color: Color(PaletaCores.VERDE_PRIMARIO),),
                                      //suffixIcon: Icon(Icons.check_circle, color: Colors.green,),
                                      hintText: 'Confirme seu e-mail',
                                      hintStyle: TextStyle(color: Color(PaletaCores.VERDE_PRIMARIO).withOpacity(0.6),),
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
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.person, color: Color(PaletaCores.VERDE_PRIMARIO),),
                                      //suffixIcon: Icon(Icons.check_circle, color: Colors.green,),
                                      hintText: 'CPF',
                                      hintStyle: TextStyle(color: Color(PaletaCores.VERDE_PRIMARIO).withOpacity(0.6),),
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
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.home , color: Color(PaletaCores.VERDE_PRIMARIO),),
                                      //suffixIcon: Icon(Icons.check_circle, color: Colors.green,),
                                      hintText: 'CEP',
                                      hintStyle: TextStyle(color: Color(PaletaCores.VERDE_PRIMARIO).withOpacity(0.6),),
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
                                      prefixIcon: Icon(Icons.lock, color: Color(PaletaCores.VERDE_PRIMARIO),),
                                      suffixIcon: Icon(Icons.visibility, color: Color(PaletaCores.VERDE_PRIMARIO)),
                                      hintText: "Senha",
                                      hintStyle: TextStyle(
                                        color: Color(PaletaCores.VERDE_PRIMARIO).withOpacity(0.6),
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
                              Card(
                                  margin: EdgeInsets.only(left: constante.maxWidth * 0.05, right:constante.maxWidth * 0.05, top:constante.maxHeight * 0.02),
                                elevation: 11,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock, color: Color(PaletaCores.VERDE_PRIMARIO),),
                                      suffixIcon: Icon(Icons.visibility, color: Color(PaletaCores.VERDE_PRIMARIO)),
                                      hintText: "Confirme a senha",
                                      hintStyle: TextStyle(
                                        color: Color(PaletaCores.VERDE_PRIMARIO).withOpacity(0.6),
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
                                  color: Color(PaletaCores.VERDE_PRIMARIO),
                                  onPressed: (){},
                                  elevation: 11,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
                                  child: Text("Cadastrar!", style: TextStyle(
                                      color: Colors.white
                                  )),
                                ),
                              ),




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
