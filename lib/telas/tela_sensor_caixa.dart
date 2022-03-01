import 'package:flutter/material.dart';
import 'package:tech_home/objects/level_sensor.dart';
import 'package:tech_home/utils/cores.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';


class TelaCaixa extends StatefulWidget {
  const TelaCaixa({Key? key}) : super(key: key);

  @override
  _TelaCaixaState createState() => _TelaCaixaState();
}



class _TelaCaixaState extends State<TelaCaixa> {


  @override
  void initState() {
    LevelSensor levelSensor = new LevelSensor("Nome Legal!");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double valorAtual = 97;
    return Scaffold(
      appBar: AppBar(

        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings))
        ],
        title: Text(
          'Minha caixa d\' água',
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
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (ctx, constante) {
            return Center(
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: constante.maxHeight * 0.01,
                      ),
                      Container(
                        width: constante.maxWidth * 0.85,
                        height: constante.maxHeight * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              alignment: Alignment.bottomCenter,
                              image: AssetImage('images/caixa.jpg'),
                            )
                        ),
                      ),
                      SizedBox(
                        height: constante.maxHeight * 0.05,
                      ),
                      Container(
                        width: constante.maxWidth * 0.65,
                          height: constante.maxHeight * 0.46,
                          child: SfRadialGauge(axes: <RadialAxis>[
                        RadialAxis(
                         axisLineStyle: AxisLineStyle(thickness: 12),
                            startAngle: 90,
                            minimum: 0,
                            maximum: 100,
                            endAngle: 90,
                            isInversed: false,
                            interval: 10,
                            showTicks: false,
                            showLabels: false,
                            ranges: <GaugeRange>[
                              GaugeRange(
                                  startValue: 0,
                                endValue: valorAtual,
                                color: Color(PaletaCores.VERDE_PRIMARIO),
                                endWidth: 16,
                                startWidth: 16,
                                rangeOffset: -2,

                              ),
                            ],
                            pointers: <GaugePointer>[

                            ],
                            annotations: <GaugeAnnotation>[

                              GaugeAnnotation(
                                  widget: Center(
                                    child: Container(
                                        child: Text('${valorAtual.toStringAsFixed(0)}%',
                                            style: TextStyle(
                                                fontSize: 35,
                                                fontWeight: FontWeight.bold))),
                                  ),
                                  angle: 180,
                                  positionFactor: 0),


                            ])
                      ])),
                      SizedBox(
                        height: constante.maxHeight * 0.05,
                      ),
                      Text('Última sincronização 13/11/2021 ás 17:15 Hrs', style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w300
                      ),),
                    /*  Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(constante.maxWidth * 0.05),
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(vertical: constante.maxHeight * 0.025, horizontal: constante.maxWidth * 0.01),
                          //color: Color(PaletaCores.roxo2),
                          color: Color(PaletaCores.VERDE_PRIMARIO),
                          onPressed: (){

                          },
                          elevation: 11,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
                          child: Text("Editar dispositivo", style: TextStyle(
                              color: Colors.white
                          )),
                        ),
                      ),*/

                      SizedBox(
                        width: 0,
                      ),
                    ],
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
