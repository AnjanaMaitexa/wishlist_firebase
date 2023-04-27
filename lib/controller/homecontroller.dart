
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
class HomeController extends GetxController{
RxString tab="Wishes".obs;
changetab(value){
  tab.value=value;
}/*
Future addwish(wish,price)async{
await  collection('wishes').
  add({"wish":wish,
  "price":price,
  "fulfilled":false,
  "wishedon":DateTime.now()
  }
);
}*/
}