
import 'package:flutter/material.dart';
import 'package:wishlist_firebase/utils.dart';

class WishItem extends StatelessWidget {
  const WishItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        title:Text("Iphone",style: textStyle(18, Colors.black, FontWeight.normal),) ,
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text("\$ 500",style: textStyle(18, Colors.black, FontWeight.normal),),
        ) ,
        trailing: Checkbox(
          value: false,onChanged: (value){},
        ),
      ),
    );
  }
}
