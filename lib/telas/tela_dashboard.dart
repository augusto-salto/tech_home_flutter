import 'package:flutter/material.dart';
import 'package:tech_home/utils/cores.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:tech_home/utils/rotas.dart';

class TelaDashboard extends StatefulWidget {
  const TelaDashboard({Key? key}) : super(key: key);

  @override
  _TelaDashboardState createState() => _TelaDashboardState();
}

class _TelaDashboardState extends State<TelaDashboard> {

double valorAtual = 97;
List listaSensores = ["Caixa d' água", "Temperatura", "Corrente (A)", "Temperatura 2"];
Map <String, String>meusSensores = {"Caixa d´Agua" : "97%", "Temperatura" : "34ºC", "Corrente (A)" : "13A", "Temperatura 02": "12ºC"};
var list;

@override
  void initState() {
  setState(() {
    list = meusSensores.values.toList();
  });

    super.initState();
  }

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
                  color: Colors.white,
                  child: Stack(
                    children: [
/// IMAGEM TEMPO
                      Align(
                          child: Image.asset('images/tempo.png', width: constante.maxWidth * 0.6,),
                        alignment: AlignmentDirectional.bottomEnd,
                      ),

/// TITULO DO APP E DATA
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50, left: 30),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset('images/logo.png', width: constante.maxWidth * 0.1,),
                                  SizedBox(width: constante.maxWidth * 0.02,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('SmarTech Home', style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500
                                      ),),
                                      SizedBox(height: constante.maxHeight * 0.01,),
                                      Text('27 de Setembro de 2021', style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300
                                      ),)
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
 /// TEMPERATURA E NOME DA CIDADE
                      Align(
                        alignment: AlignmentDirectional.bottomStart,
                        child: Padding(
                          padding:  EdgeInsets.only(left: constante.maxWidth * 0.2, bottom: constante.maxHeight * 0.1),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('23ºC', style: TextStyle(
                                fontSize: 44,
                                fontWeight: FontWeight.w600
                              ),),
                              Text('Salto, São Paulo', style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              ),),
                              Text('última sinc: 20:17 22/12/2021', style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300
                              ),)
                            ],
                          ),
                        ),
                      )

                    ],
                  ),
                ),

                Padding(
                  padding:  EdgeInsets.only( left: constante.maxWidth * 0.07, top: constante.maxHeight * 0.02, right: constante.maxWidth * 0.04 ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('Meus dispositivos', style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17
                          ),),
                          SizedBox(width: constante.maxWidth * 0.015 ,),
                          Text('(2 ativos)', style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300
                          ),)
                        ],
                      ),
                    Row(
                      children: [
                        Text('Ocultar todos >', style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300
                        ),),

                      ],
                    )
                    ],
                  ),
                ),

            SizedBox(
              height: constante.maxHeight * 0.015,
            ),
 /// LISTA SENSORES
                Padding(
                  padding:  EdgeInsets.only( left: 10),
                  child: Container(
                      height: constante.maxHeight * 0.3,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: meusSensores.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: constante.maxHeight * 0.3,
                              width: constante.maxWidth * 0.4,
                              child: InkWell(
                                onTap: (){
                                  Navigator.of(context).pushNamed(Rota.TELA_CAIXA_AGUA);
                                },
                                child: Card(
                                  elevation: 3,
                                  color: Colors.white,
                                  child: Padding(
                                    padding:  EdgeInsets.only(right: 10, top: 15),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text('${listaSensores[index]}', textAlign: TextAlign.center, style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),),
                                        //Image.asset('images/gota.png', fit: BoxFit.contain,width: constante.maxHeight * 0.15,)
                                        Container(
                                            width: constante.maxWidth * 0.35,
                                            height: constante.maxHeight * 0.18,
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
                                                      endWidth: 12,
                                                      startWidth: 12,
                                                      rangeOffset: 0,

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
                                                                      fontSize: 20,
                                                                      fontWeight: FontWeight.bold))),
                                                        ),
                                                        angle: 180,
                                                        positionFactor: 0),


                                                  ])
                                            ])),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      )),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(constante.maxWidth * 0.05),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: constante.maxHeight * 0.025),
                    //color: Color(PaletaCores.roxo2),
                    color: Color(PaletaCores.VERDE_PRIMARIO),
                    onPressed: () {
                                    Navigator.of(context).pushNamed(Rota.TELA_ADD_DEVICE);
                                  },
                    elevation: 11,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    child: Text("Adicionar dispositivo", style: TextStyle(
                        color: Colors.white
                    )),
                  ),
                ),

              ],
            );
          },
        ),
      ),

    );
  }
}
