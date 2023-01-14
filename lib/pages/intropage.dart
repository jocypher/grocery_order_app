import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled_grocery_shop/pages/home_page.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // logo
          Padding(
            padding: EdgeInsets.only(left: 100, right: 100, top: 80,bottom: 60),
              child: Image.asset("assets/avocado.png")
            ),
          //we deliver grocies at your door step
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text("We deliver groceries at your door step",
            style: GoogleFonts.notoSerif(
              fontSize: 36,
              fontWeight: FontWeight.bold
            ),
              textAlign:  TextAlign.center
            ),

          ),
          Text("Fresh items available ",
          style:TextStyle(fontSize: 20,
          color: Colors.grey[600])),

          SizedBox(height: 50.0,),
          //get Started
          GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context,
                  MaterialPageRoute(
                      builder: (context){
                return HomePage();
              }
              )
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.deepPurple,
                
              ),
              padding: EdgeInsets.all(20),
              child: Text("Get Started",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ) ,),
            ),
          )
        ],
      ),
    );
  }
}
