import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Group extends StatelessWidget {
  const Group({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height;
    final w=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.pinkAccent.withOpacity(.1),
      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_back_ios,size: 25,),
                ),
                Container(
                  width: w*.85,
                  height: h*.045,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            color: Colors.pinkAccent.withOpacity(.3),
                            spreadRadius: 2
                        )
                      ]
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: GoogleFonts.poppins(),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.all(10)
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            color: Colors.pinkAccent.withOpacity(.3),
                            spreadRadius: 2
                        )
                      ]
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.pinkAccent
                              )

                          ),
                          child: const Icon(Icons.add,color: Colors.pinkAccent,size: 25,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Create a group",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
                      ),
                    ],
                  )
                ),
                SizedBox(height: h*.03,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: h*.02,
                        width: w*.03,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.pinkAccent,
                        ),
                      ),
                    ),
                    Text(" Existing Groups",style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.w500),),
                  ],
                ),
                SizedBox(height: h*.02,),
                Container(
                  height: h*.06,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.pinkAccent.withOpacity(.3),
                              spreadRadius: 2
                          )
                        ]
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: w*.05,),
                        Container(
                          height: h*.1,
                          width: w*.1,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.pinkAccent
                              )

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/profileicon.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bashing Fashion",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
                        ),
                      ],
                    )
                ),
                SizedBox(height: h*.02,),
                Container(
                    height: h*.06,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.pinkAccent.withOpacity(.3),
                              spreadRadius: 2
                          )
                        ]
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: w*.05,),
                        Container(
                          height: h*.1,
                          width: w*.1,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.pinkAccent
                              )

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/profileicon.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Apparel spot",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
                        ),
                      ],
                    )
                ),
                SizedBox(height: h*.02,),
                Container(
                    height: h*.06,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.pinkAccent.withOpacity(.3),
                              spreadRadius: 2
                          )
                        ]
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: w*.05,),
                        Container(
                          height: h*.1,
                          width: w*.1,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.pinkAccent
                              )

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/profileicon.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bewitched Boutique",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
                        ),
                      ],
                    )
                ),
                SizedBox(height: h*.02,),
                Container(
                    height: h*.06,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.pinkAccent.withOpacity(.3),
                              spreadRadius: 2
                          )
                        ]
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: w*.05,),
                        Container(
                          height: h*.1,
                          width: w*.1,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.pinkAccent
                              )

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/profileicon.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("SNGT hubs",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
                        ),
                      ],
                    )
                ),
                SizedBox(height: h*.02,),
                Container(
                    height: h*.06,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.pinkAccent.withOpacity(.3),
                              spreadRadius: 2
                          )
                        ]
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: w*.05,),
                        Container(
                          height: h*.1,
                          width: w*.1,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.pinkAccent
                              )

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/profileicon.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bashing Fashion",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
                        ),
                      ],
                    )
                ),
                SizedBox(height: h*.02,),
                Container(
                    height: h*.06,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.pinkAccent.withOpacity(.3),
                              spreadRadius: 2
                          )
                        ]
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: w*.05,),
                        Container(
                          height: h*.1,
                          width: w*.1,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.pinkAccent
                              )

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/profileicon.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("My wardrobe",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
                        ),
                      ],
                    )
                ),
                SizedBox(height: h*.02,),
                Container(
                    height: h*.06,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.pinkAccent.withOpacity(.3),
                              spreadRadius: 2
                          )
                        ]
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: w*.05,),
                        Container(
                          height: h*.1,
                          width: w*.1,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.pinkAccent
                              )

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/profileicon.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bashing Fashion",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
                        ),
                      ],
                    )
                ),
                SizedBox(height: h*.02,),
                Container(
                    height: h*.06,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.pinkAccent.withOpacity(.3),
                              spreadRadius: 2
                          )
                        ]
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: w*.05,),
                        Container(
                          height: h*.1,
                          width: w*.1,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.pinkAccent
                              )

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/profileicon.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Apparel spot",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
                        ),
                      ],
                    )
                ),
                SizedBox(height: h*.02,),
                Container(
                    height: h*.06,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.pinkAccent.withOpacity(.3),
                              spreadRadius: 2
                          )
                        ]
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: w*.05,),
                        Container(
                          height: h*.1,
                          width: w*.1,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.pinkAccent
                              )

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/profileicon.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bewitched Boutique",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
                        ),
                      ],
                    )
                ),
                SizedBox(height: h*.02,),
                Container(
                    height: h*.06,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.pinkAccent.withOpacity(.3),
                              spreadRadius: 2
                          )
                        ]
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: w*.05,),
                        Container(
                          height: h*.1,
                          width: w*.1,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.pinkAccent
                              )

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/profileicon.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("SNGT hubs",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
                        ),
                      ],
                    )
                ),
                SizedBox(height: h*.02,),
                Container(
                    height: h*.06,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.pinkAccent.withOpacity(.3),
                              spreadRadius: 2
                          )
                        ]
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: w*.05,),
                        Container(
                          height: h*.1,
                          width: w*.1,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.pinkAccent
                              )

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/profileicon.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bashing Fashion",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
                        ),
                      ],
                    )
                ),
                SizedBox(height: h*.02,),
                Container(
                    height: h*.06,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.pinkAccent.withOpacity(.3),
                              spreadRadius: 2
                          )
                        ]
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: w*.05,),
                        Container(
                          height: h*.1,
                          width: w*.1,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.pinkAccent
                              )

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/profileicon.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("My wardrobe",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
                        ),
                      ],
                    )
                ),
              ],
            ),
          ),

        ],
      )
    );
  }
}
