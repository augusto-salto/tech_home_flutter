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
              child: Text(""),
            );
          },
        ),
      ),
    );
  }
}
