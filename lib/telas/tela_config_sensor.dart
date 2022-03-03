import 'package:flutter/material.dart';
import 'package:tech_home/my_widgets/appBar_Model.dart';



class TelaConfigSensor extends StatefulWidget {
  const TelaConfigSensor({Key? key}) : super(key: key);

  @override
  _TelaConfigSensorState createState() => _TelaConfigSensorState();
}

class _TelaConfigSensorState extends State<TelaConfigSensor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithConfig(tittle: "Configurações",),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (ctx, constante) {
            return Center(
              child: Column(
                children: [
                  Card(
                    elevation: 10,
                    color: Colors.white,
                    shadowColor: Colors.blueGrey,
                    margin: EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              Text('CONFIGURAÇÕES DE ALARME', style: TextStyle(fontSize: 20, color: Colors.black),),
                              TextFormField(
                                keyboardType: TextInputType.number ,
                                decoration: InputDecoration(labelText: 'Real medido (cm)'),
                               // controller: controllerNivel,
                                onChanged: (value){},
                              ),
                              TextFormField(

                                keyboardType: TextInputType.number ,
                                decoration: InputDecoration(labelText: 'Alarme de nível baixo (%)'),
                                //controller: controllerAlarm,
                                onChanged: (value){
                                  if (value.isNotEmpty) {
                                    //FirebaseModel.addData('alarme', value);
                                  }
                                },
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Ativar alarme: '),
                                  Switch(
                                    value: true,
                                    onChanged: (value) {
                                      setState(() {
                                        //valor = value;
                                      });
                                    },

                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
