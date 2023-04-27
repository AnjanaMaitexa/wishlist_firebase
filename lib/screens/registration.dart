
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wishlist_firebase/controller/authcontroller.dart';

class SignUpPage extends StatelessWidget {
  var emailCon = TextEditingController();
  var passCon = TextEditingController();
  var uCon = TextEditingController();
AuthControllesr authControllesr=Get.find<AuthControllesr>();
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          TextField(
            controller: emailCon,
            decoration: InputDecoration(
                hintText:"Email",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 1.0
                    )
                ), enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.0
                )
            ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                )
            ),
          ),
          TextField(
            controller: uCon,
            decoration: InputDecoration(
                hintText: "Username",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 1.0
                    )
                ), enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.0
                )
            ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                )
            ),
          ),
          TextField(
            controller: passCon,
            decoration: InputDecoration(
                hintText: "Password",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 1.0
                    )
                ), enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.0
                )
            ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                )
            ),
          ),
          GestureDetector(
            onTap: (){
                authControllesr.register(emailCon.text.trim(), passCon.text.trim(),uCon.text.trim());
  },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image:DecorationImage(
                      image: AssetImage(
                          "img/loginbtn.png"
                      ),
                      fit: BoxFit.cover
                  )
              ),
              child: Center(
                child: Text("SignIn",style:TextStyle(
                    fontSize:36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                )),
              ),
            ),
          ),
        ]

    );
  }
}