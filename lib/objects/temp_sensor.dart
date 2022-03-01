import 'package:tech_home/objects/obj_sensor.dart';

class TempSensor extends Sensor
{
  late String _temperature;
  late String _wifiRssi;
  late String _verFirmware;
  late String _restoreFactory;


  TempSensor(String name)
  {
    this._temperature = "25";
    print("THIS TEMP IS ${this._temperature}");
  }
  // LevelSensor(String name):super(name);

  int getLevel()
  {
    return  int.parse(this._temperature);
  }

  int getWifiRssi()
  {
    return int.parse(this._wifiRssi);
  }

  int getFirmwareVer()
  {
    return int.parse(this._verFirmware);
  }

  void setFactoryReset()
  {
    this._restoreFactory = "f";
  }






}