import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wishlist_firebase/controller/homecontroller.dart';
import 'package:wishlist_firebase/screens/wishitem.dart';
import 'package:wishlist_firebase/utils.dart';

class AuthScreen extends StatelessWidget {
  HomeController homeController = Get.put(HomeController());
  TextEditingController nameController=TextEditingController();
  TextEditingController priceController=TextEditingController();
  openAddSheet(context){
    return showModalBottomSheet(context: context,
        isScrollControlled: true,
        builder: (context){

      return Padding(
        padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Container(
            height: 230,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      filled: true,
                    fillColor: Colors.grey,
                    hintText: "Name"),

                  ),
                ),SizedBox(height: 20,),
                TextFormField(
                  controller: priceController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      hintText: "Price"),

                ),SizedBox(height: 20,),
              /*  ElevatedButton(onPressed: (){
                  homeController.addwish(nameController.text, double.parse(priceController.text))
                  .then((value) {
                    nameController.clear();
                    priceController.clear();
                    Get.back();
                    Get.snackbar("Success", "Wish Added");
                  });
                }, child: Text("Add to list"))*/
              ],

            ),
          ),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          openAddSheet(context);
        },
        child: Icon(Icons.add),
      ),
      body: Obx(
        () => SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 40, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "WishList",
                      style: textStyle(
                          35, Colors.lightBlue[400]!, FontWeight.bold),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        shape: BoxShape.circle,
                      ),
                      child: Center(child: Text("10")),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                        onTap: () => homeController.changetab("Wishes"),
                        child: Text("Wishes",
                            style: textStyle(
                                20,
                                homeController.tab.value == "Wishes"
                                    ? Colors.black
                                    : Colors.grey,
                                FontWeight.w600))),
                    InkWell(
                        onTap: () => homeController.changetab("Fulfilled"),
                        child: Text("Fulfilled",
                            style: textStyle(
                                20,
                                homeController.tab.value == "Fulfilled"
                                    ? Colors.black
                                    : Colors.grey,
                                FontWeight.w600))),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                homeController.tab.value == "Wishes"
                    ? ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return WishItem();
                        })
                    : ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Container();
                        }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
