import 'package:flutter/material.dart';
import 'package:tech_home/utils/cores.dart';



class AppBarWithConfig extends StatelessWidget implements PreferredSize {

final String tittle;
final List<Widget>? icone;

  const AppBarWithConfig({Key? key, required this.tittle, this.icone}) : super(key: key);

  @override
 Size get preferredSize => const Size.fromHeight(60);


  @override
  Widget build(BuildContext context) {
    return AppBar(

      actions:
        getList()
        /*IconButton( onPressed: () {
          Navigator.of(context).pushNamed(Rota.TELA_CONFIG_SENSOR);
        },
            icon: Icon(Icons.settings)
        )*/
      ,
      title: Text(
        this.tittle,
        style: TextStyle(
            fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
      ),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      shadowColor: Colors.black,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(PaletaCores.VERDE_PRIMARIO),
          ),
        ),
      ),
      centerTitle: true,
      elevation: 0,
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

List<Widget>? getList(){
  return this.icone;
}
}


