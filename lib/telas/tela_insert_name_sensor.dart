import 'package:flutter/material.dart';


class TInsertSensorName extends StatefulWidget {
  const TInsertSensorName({Key? key}) : super(key: key);

  @override
  _TInsertSensorNameState createState() => _TInsertSensorNameState();
}

class _TInsertSensorNameState extends State<TInsertSensorName> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          decoration: BoxDecoration(
          ),
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Insira um nome para o novo dispositivo',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    // color: Color(PaletaCores.VERDE_PRIMARIO),
                    color: Colors.black
                ),),
              SizedBox(height: 20,),
              Card(

                child: Container(

                  width: 200,
                  child: TextFormField(

                    keyboardAppearance: Brightness.dark,
                    enabled: true,
                    keyboardType: TextInputType.name ,
                    //decoration: InputDecoration(labelText: 'Real medido (cm)'),
                    onChanged: (value){},
                  ),
                ),
              ),

            ],
          ),
          ),
        )
    );
  }
}
