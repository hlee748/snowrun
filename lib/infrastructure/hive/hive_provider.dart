import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class LocalStore {
  Future<void> init() async {
    debugPrint('HIVE :: Initializer Local Store Open Device Box');
    await Hive.openBox('recordBox');
  }

  Box get recordBox => Hive.box('recordBox');


  Future<void> testHiveData(String test) async {
    recordBox.put('test', test);
    await Hive.openBox("test");
    print("HOHOHO HIVE::: ${recordBox.get("test")}");
  }

  // void getTextHiveData(){
  //   recordBox.put("test", "나와라");
  // print("HOHOHO ::: ${recordBox.get("test")}");
  // }
}
