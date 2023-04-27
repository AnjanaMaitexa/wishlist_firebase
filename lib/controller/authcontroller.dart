
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class AuthControllesr extends GetxController{
FirebaseAuth auth=FirebaseAuth.instance;
  void register(String email,password)async{
   UserCredential  userCredential=await  auth.createUserWithEmailAndPassword(email: email, password: password);
  User? user =userCredential.user;
  if(user !=null){

  }

  /* try{
      await  auth.createUserWithEmailAndPassword(email: email, password: password);
    }
    catch(e){
      Get.snackbar("About User", "User message",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
              "Account creation failed"
          ),
          messageText: Text(e.toString()));
    }*/

  }
}