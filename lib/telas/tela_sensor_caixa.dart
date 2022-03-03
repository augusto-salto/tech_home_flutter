import 'package:flutter/material.dart';
import 'package:tech_home/utils/cores.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:tech_home/utils/rotas.dart';
import 'package:tech_home/my_widgets/appBar_Model.dart';


class TelaCaixa extends StatefulWidget {

  const TelaCaixa({Key? key}) : super(key: key);

  @override
  _TelaCaixaState createState() => _TelaCaixaState();
}



class _TelaCaixaState extends State<TelaCaixa> {


  @override
  void initState() {
    //LevelSensor levelSensor = new LevelSensor("Nome Legal!");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double valorAtual = 97;
    return Scaffold(
      appBar: AppBarWithConfig(
        tittle: "Nome do sensor",
        icone: [IconButton(onPressed: (){
                                        Navigator.of(context).pushNamed(Rota.TELA_CONFIG_SENSOR);
                                        },
            icon: Icon(Icons.settings))],
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
                        height: constante.maxHeight * 0.07,
                      ),
                      Text('Última sincronização: 13/11/2021 ás 17:15 Hrs', style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300
                      ),),

                     Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(constante.maxWidth * 0.01),
                        child: IconButton(
                          icon: Icon(Icons.refresh),
                          onPressed: (){},
                          iconSize: constante.maxWidth * 0.07,

                        )
                            /*RaisedButton(
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
                        ),*/
                      ),

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
