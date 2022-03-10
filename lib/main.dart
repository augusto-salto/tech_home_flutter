import 'package:flutter/material.dart';
import 'package:tech_home/telas/tela_adicionar_dispositivo.dart';
import 'package:tech_home/telas/tela_cadastro.dart';
import 'package:tech_home/telas/tela_cadastro_sliver.dart';
import 'package:tech_home/telas/tela_config_sensor.dart';
import 'package:tech_home/telas/tela_dashboard.dart';
import 'package:tech_home/telas/tela_intro.dart';
import 'package:tech_home/telas/tela_intro_2.dart';
import 'package:tech_home/telas/tela_login.dart';
import 'package:tech_home/telas/tela_sensor_caixa.dart';
import 'package:tech_home/telas/tela_splash_searching_dispositivo.dart';
import 'package:tech_home/utils/rotas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        routes: {
          Rota.TELA_INTRO : (ctx) => TelaIntro(),
          Rota.TELA_INTRO_SEC : (ctx) => TelaIntroSecundaria(),
          Rota.TELA_LOGIN : (ctx) => TelaLogin(),
          Rota.TELA_CADASTRO : (ctx) => TelaCadastro(),
          Rota.TELA_CADASTRO_SLIVER : (ctx) => TelaCadastroSliver(),
          Rota.TELA_DASHBOARD : (ctx) => TelaDashboard(),
          Rota.TELA_CAIXA_AGUA : (ctx) => TelaCaixa(),
          Rota.TELA_CONFIG_SENSOR : (ctx) => TelaConfigSensor(),
          Rota.TELA_ADD_DEVICE : (ctx) => TelaAddDevice(),
          Rota.TELA_SPLASH_SEARCH_DEVICE : (ctx) => TelaSplashSearchDevide(),
          Rota.TELA_DEVICE_IS_FOUND : (ctx) => TelaAddDevice(),

        },
      title: 'Tech Home',
      theme: ThemeData(),
      home: TelaIntro(),

    );
  }
}


