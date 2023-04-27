
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wishlist_firebase/controller/authcontroller.dart';
import 'package:wishlist_firebase/screens/login.dart';
import 'package:wishlist_firebase/screens/registration.dart';
import 'package:wishlist_firebase/utils.dart';

class LoginPage extends StatelessWidget {


 AuthControllesr authControllesr=Get.put(AuthControllesr());
buildTab(text,selected,context){
  return Container(
    width: MediaQuery.of(context).size.width/2,
    height: 40,
    child: Center(
      child: Text(text,style: selected?
      textStyle(22, Colors.lightBlueAccent, FontWeight.bold):
      textStyle(22, Colors.grey, FontWeight.w500),),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              "wishly",style: TextStyle(
              fontSize: 70,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 20,),
          //obx automatically update ui
          Obx(() =>  Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
           InkWell(onTap: ()=>authControllesr.changeTab("Login"),
              child: buildTab("Login",authControllesr.tab.value=="Login",context),),
              InkWell(onTap: ()=>authControllesr.changeTab("Register"),
                child: buildTab("Register", authControllesr.tab.value=="Register", context),)


            ],
            ),
          ),
            SizedBox(height: 20,),
          Obx(() => authControllesr.tab.value== "Login"
              ? LoginPage()
              :SignUpPage()),
          ],
      ),
      ),
    );
  }
}
