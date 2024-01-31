import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persist_assignment/src/features/save/save.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  bool isSelected = false;
  bool isexpand = false;
  bool isexpand2 = false;
  bool isexpand3 = false;
  bool isFavourite=false;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pinkAccent.withOpacity(.1),
        appBar: AppBar(
          title: Text(
            "Discover",
            style: GoogleFonts.plusJakartaSans(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        drawer: Drawer(
          width: w * .5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: h * .15,
                      width: w * .15,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "My Profile",
                        style: GoogleFonts.plusJakartaSans(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: h * .02,),
                Text("Suggested", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16),),
                const Divider(
                  color: Colors.pinkAccent,
                ),
                SizedBox(height: h * .02,),
                Text("Followers", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16),),
                const Divider(
                  color: Colors.pinkAccent,
                ),
                SizedBox(height: h * .02,),
                Text("Following", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16),),
                const Divider(
                  color: Colors.pinkAccent,
                )
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(right: w * .55, left: w * .05, top: h * .03),
              child: InkWell(
                onTap: () {
                  setState(() {
                    isSelected =!isSelected;
                  });
                  // Handle your filter selection logic here
                },
                child: Container(
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
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Filters",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 20),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(Icons.filter_list, size: 25),
                      ),
                    ],
                  ),
                ),
              ),
            ),
             isSelected? Padding(
                padding:  EdgeInsets.symmetric(horizontal: w*.06,vertical: h*.02),
                child: Container(
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

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  "Colors",
                                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 20),
                                ),
                                isexpand? Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Red",style: GoogleFonts.poppins(fontSize: 13),),
                                    Text("Blue",style: GoogleFonts.poppins(fontSize: 13),),
                                    Text("Green",style: GoogleFonts.poppins(fontSize: 13),),

                                  ],
                                ):Container(),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  isexpand =!isexpand;
                                });
                              },
                                child: Icon(isexpand?Icons.expand_less:Icons.expand_more, size: 25)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  "Category",
                                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 20),
                                ),
                                isexpand2? Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Category 1",style: GoogleFonts.poppins(fontSize: 13),),
                                    Text("Category 2",style: GoogleFonts.poppins(fontSize: 13),),
                                    Text("Category 3",style: GoogleFonts.poppins(fontSize: 13),),

                                  ],
                                ):Container(),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: InkWell(
                                onTap: (){
                                  setState(() {
                                    isexpand2 =!isexpand2;
                                  });
                                },
                                child: Icon(isexpand2?Icons.expand_less:Icons.expand_more, size: 25)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  "Season",
                                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 20),
                                ),
                                isexpand3? Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("22",style: GoogleFonts.poppins(fontSize: 13),),
                                    Text("23",style: GoogleFonts.poppins(fontSize: 13),),
                                    Text("24",style: GoogleFonts.poppins(fontSize: 13),),

                                  ],
                                ):Container(),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: InkWell(
                                onTap: (){
                                  setState(() {
                                    isexpand3 =!isexpand3;
                                  });
                                },
                                child: Icon(isexpand3?Icons.expand_less:Icons.expand_more, size: 25)),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ):const SizedBox(),
            Padding(
              padding:  EdgeInsets.only(right: w*.6,left: w*.05,top: h*.02),
              child: Container(

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
                              setState(() {
                                isFavourite=!isFavourite;
                              });
                             if(isFavourite==true)
                               _showSaveSnackbar(context);
                            },
                            child: CircleAvatar(
                              radius: 15,
                              child: Icon(isFavourite?Icons.favorite:Icons.favorite_border,color: isFavourite?Colors.red:Colors.black,size: 15,),
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
                        TextButton(onPressed: (){
                          _showVisitDialog(context);
                        }, child: Text("Visit",style: GoogleFonts.poppins(fontSize: 18,color: Colors.pinkAccent),))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void _showSaveSnackbar(BuildContext context) {
    final snackBar = SnackBar(
      content: const Text('Product Saved!'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Add code here to undo the save action if needed
          setState(() {
            isFavourite = false;
          });
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  void _showVisitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(left: 80,right: 20),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 200,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [

                      Row(
                        children: [
                          Text("OPEN",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.pinkAccent),),

                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.open_in_new,size: 20,color: Colors.pinkAccent,),
                          )
                        ],
                      ) ,
                      Row(
                        children: [
                          Text("BRAND:",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18,),),

                           Padding(
                            padding: EdgeInsets.all(8.0),
                            child:  Text("Puma",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 16,),),
                          )
                        ],
                      ) ,
                      Row(
                        children: [
                          Text("Color:",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18,),),

                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.circle,size: 20,color: Colors.red,),
                          )
                        ],
                      ) ,
                      Row(
                        children: [
                          Text("Category:",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18,),),

                           Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Xn",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 16,),),
                          )
                        ],
                      ) ,
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
