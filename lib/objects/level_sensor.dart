import 'package:tech_home/objects/obj_sensor.dart';

class LevelSensor extends Sensor
  {
    late String _level;
    late String _wifiRssi;
    late String _verFirmware;
    late String _restoreFactory;


    LevelSensor(String name)
      {
        this._level = "41";
        print("THIS LEVEL IS ${this._level}");
      }
     // LevelSensor(String name):super(name);

        int getLevel()
          {
            return  int.parse(this._level);
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
          _restoreFactory = "f";
        }






  }