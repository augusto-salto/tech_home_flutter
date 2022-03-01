import 'package:flutter/material.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/sign_button.dart';
import 'package:tech_home/utils/cores.dart';
import 'package:tech_home/utils/rotas.dart';

class TelaCadastroSliver extends StatefulWidget {
  const TelaCadastroSliver({Key? key}) : super(key: key);

  @override
  _TelaCadastroSliverState createState() => _TelaCadastroSliverState();
}

class _TelaCadastroSliverState extends State<TelaCadastroSliver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (ctx, constante) {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: constante.maxHeight * 0.35,
                  floating: true,
                  pinned: true,
                  snap: true,
                  actionsIconTheme: IconThemeData(opacity: 0.0),
                  flexibleSpace: Stack(
                    children: <Widget>[
                      Positioned.fill(
                          child: Image.asset(
                        "images/backgroundCadastro.png",
                        fit: BoxFit.cover,
                      ))
                    ],
                  ),
                ),

                SliverList(
                    delegate: SliverChildListDelegate([
                  Text("Cadastro",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(PaletaCores.VERDE_PRIMARIO),
                          fontWeight: FontWeight.bold,
                          fontSize: 26)
                  ),
                      SizedBox(height: constante.maxHeight * 0.02,),
                      Row(
                        children: <Widget>[
                          SizedBox(width: constante.maxWidth * 0.05),
                          Expanded(

                            child: SignInButton(
                                buttonSize: ButtonSize.small,
                                btnText: '    Facebook',
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

/// NOME ///

                      Card(
                        margin: EdgeInsets.only(left: constante.maxWidth * 0.05, right:constante.maxWidth * 0.05, top:constante.maxHeight * 0.02),
                        elevation: 7,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.perm_identity, color: Color(PaletaCores.VERDE_PRIMARIO),),
                              //suffixIcon: Icon(Icons.check_circle, color: Colors.green,),
                              hintText: 'Nome',
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

/// E-MAIL ///

                      Card(
                        margin: EdgeInsets.only(left: constante.maxWidth * 0.05, right:constante.maxWidth * 0.05, top:constante.maxHeight * 0.04),
                        elevation: 7,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email, color: Color(PaletaCores.VERDE_PRIMARIO),),
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

/// CONFIRMAR EMAIL ///

                      Card(
                        margin: EdgeInsets.only(left: constante.maxWidth * 0.05, right:constante.maxWidth * 0.05, top:constante.maxHeight * 0.02),
                        elevation: 7,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email, color: Color(PaletaCores.VERDE_PRIMARIO),),
                              //suffixIcon: Icon(Icons.check_circle, color: Colors.green,),
                              hintText: 'Confirme seu e-mail',
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


/// CEP ///

                      Card(
                        margin: EdgeInsets.only(left: constante.maxWidth * 0.05, right:constante.maxWidth * 0.05, top:constante.maxHeight * 0.04),
                        elevation: 7,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.home , color: Color(PaletaCores.VERDE_PRIMARIO),),
                              //suffixIcon: Icon(Icons.check_circle, color: Colors.green,),
                              hintText: 'CEP',
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

/// SENHA ///

                      Card(
                        margin: EdgeInsets.only(left: constante.maxWidth * 0.05, right:constante.maxWidth * 0.05, top:constante.maxHeight * 0.04),
                        elevation: 7,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock, color: Color(PaletaCores.VERDE_PRIMARIO),),
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

/// CONFIRME A SENHA ///

                      Card(
                        margin: EdgeInsets.only(left: constante.maxWidth * 0.05, right:constante.maxWidth * 0.05, top:constante.maxHeight * 0.02),
                        elevation: 7,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock, color: Color(PaletaCores.VERDE_PRIMARIO),),
                              suffixIcon: Icon(Icons.visibility, color: Colors.black38.withOpacity(0.6),),
                              hintText: "Confirme a senha",
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

/// BOTAO CADASTRAR ///

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(constante.maxWidth * 0.05),
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(vertical: constante.maxHeight * 0.025),
                          color: Color(PaletaCores.VERDE_PRIMARIO),
                          onPressed: (){},
                          elevation: 11,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
                          child: Text("Cadastrar", style: TextStyle(
                              color: Colors.white
                          )),
                        ),
                      ),


                ])),
              ],
            );
          },
        ),
      ),
    );
  }
}
