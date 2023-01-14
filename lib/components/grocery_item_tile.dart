import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {

  final String itemName;
  final String itemPrice;
  final color;
  final String imagePath;
  final void Function()? onPressed;




  const GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,

  });




  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: color[100],
        borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          // Image
            Image.asset(
                imagePath,
              height: 64,
            ),

            //
            // ItemName
            Text(itemName,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),),

            MaterialButton(
              onPressed: onPressed,
                color: color,
                child: Text(itemPrice,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),)
            )
          ],
        ),
      ),
    );
  }
}
