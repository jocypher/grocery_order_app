import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:untitled_grocery_shop/components/cart_model.dart';
import 'package:untitled_grocery_shop/components/grocery_item_tile.dart';
import 'package:untitled_grocery_shop/pages/cart_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return CartPage();
          }));
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag_rounded),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 35),
            // good morning
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text("Good Morning", style: GoogleFonts.notoSerif(
                  fontSize: 25),),
              ),
            SizedBox(height: 4),
            // Lets order fresh items
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Lets order Fresh items",style: GoogleFonts.notoSerif(
                  fontSize: 36,
                  fontWeight: FontWeight.bold
              ),
              ),
            ),

            SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(),
            ),

           SizedBox(height: 20),

            // fresh items + grid
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Fresh items",
              style: TextStyle(fontSize: 16),
              ),
            ),
            Expanded(child: Consumer<CartModel>(builder: (context,value, child){
              return GridView.builder(
                  itemCount: value.shopItems.length,
                  padding: EdgeInsets.all(12.0),
                  gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
              ),
                  itemBuilder: (context,index){
              return GroceryItemTile(
                  itemName: value.shopItems[index][0],
                  itemPrice: "\$" + value.shopItems[index][1],
                imagePath: value.shopItems[index][2],
                  color: value.shopItems[index][3],
                onPressed: (){
                    Provider.of<CartModel>(context,listen: false).addItemCart(0,index);
                },

              );
                  });
            }
              )
            )
          ],
        ),
      ),
    );
  }
}

