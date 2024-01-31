import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Save extends StatelessWidget {
  const Save({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.pinkAccent.withOpacity(.1),
      appBar: AppBar(
        title: Text("Your  Saved  Product",style: GoogleFonts.plusJakartaSans(fontSize: 20, fontWeight: FontWeight.w500),),
        leading:
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios)),

      ),
      body:  Padding(
        padding:  EdgeInsets.only(right: w*.6,left: w*.05,top: h*.02),
        child: Container(
            height: h*.28,
          decoration: BoxDecoration(
            color: Colors.white, // Change the color when selected
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                color: Colors.pinkAccent.withOpacity(.3),
                spreadRadius: 2,
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/sweatShirt.png",height: h*.1,),
                    InkWell(
                      onTap: (){

                      },
                      child: const CircleAvatar(
                        radius: 15,
                        child: Icon(Icons.favorite,color: Colors.red,size: 15,),
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.pinkAccent.withOpacity(.5),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text("dhruvil12",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500),)),
              ),
              Divider(
                color: Colors.pinkAccent.withOpacity(.5),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h * .05,
                      width: w * .13,
                      alignment: AlignmentDirectional.topStart,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                            color: Colors.pinkAccent.withOpacity(.3),
                            spreadRadius: 2,
                          )
                        ],
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/profileicon.png"),
                        ),
                      ),
                    ),
                  ),
                  TextButton(onPressed: (){}, child: Text("Visit",style: GoogleFonts.poppins(fontSize: 18,color: Colors.pinkAccent),))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
