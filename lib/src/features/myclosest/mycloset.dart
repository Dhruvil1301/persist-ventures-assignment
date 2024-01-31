import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCloset extends StatelessWidget {
  const MyCloset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height;
    final w=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.pinkAccent.withOpacity(.1),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("My Profile",style: GoogleFonts.plusJakartaSans(fontSize: 18,fontWeight: FontWeight.w500),),
                      ),
                      Container(
                        height:h*.1,
                        alignment: AlignmentDirectional.topStart,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              color: Colors.pinkAccent.withOpacity(.3),
                              spreadRadius: 2
                            )
                          ]

                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/profileicon.png"),
                          ),),
                      ),
                      SizedBox(height: h*.01,),
                      Text("Dhruvil",style: GoogleFonts.plusJakartaSans(fontSize: 18,fontWeight: FontWeight.w400),),
                      Text("dhruvil12",style: GoogleFonts.plusJakartaSans(fontSize: 18,fontWeight: FontWeight.w400),),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: w*.1,vertical: h*.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("My Closet",style: GoogleFonts.poppins(color: Colors.pinkAccent.withOpacity(.8),fontWeight: FontWeight.w600,fontSize: 20),),
                        ),

                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.pinkAccent
                                )

                              ),
                              child: Icon(Icons.add,color: Colors.pinkAccent,size: 25,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Add New",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 20),),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
           Products()
          ],
        ),
      ),
    );
  }
}

class MyProduct {
  final String name;
  final String image;
  final String price;
  final String discount;
  final String categ;
  final VoidCallback? onTap;
  MyProduct(    {required this.name, required this.image, required this.price,this.onTap,required this.categ,required this.discount, });

}

class Products extends StatelessWidget {
  static const routePath='/products';

  Products({Key? key}) : super(key: key);

  final List<MyProduct> products = [
    MyProduct(price: "100", discount: "30%", name: "Peace Lily", image: "assets/images/sunglases.png",categ: "Sunglass"),
    MyProduct(price: "999", discount: "20%", name: "Peace Lily", image: "assets/images/watch.png",categ: "Watch"),
    MyProduct(price: "600", discount: "30%", name: "Peace Lily", image: "assets/images/sweatShirt.png",categ: "Sweatshirt"),
    MyProduct(price: "850", discount: "25%", name: "Peace Lily", image: "assets/images/jeans.png",categ: "Jeans"),
    MyProduct(price: "2200", discount: "30%", name: "Peace Lily", image: "assets/images/shoes.png",categ: "Shoes"),
    MyProduct(price: "399", discount: "42%", name: "Peace Lily", image: "assets/images/jewery.png",categ: "Jewery"),

    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 360,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 0,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(products[index].categ,style: GoogleFonts.lato(fontSize: 22,fontWeight: FontWeight.w600),),
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height:  MediaQuery.of(context).size.height * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pinkAccent.withOpacity(0.1),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.018,
                          left: MediaQuery.of(context).size.width * 0.062,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                products[index].image,
                                height: MediaQuery.of(context).size.height * 0.18,
                                width: MediaQuery.of(context).size.height * 0.14,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Price:",
                                    style: GoogleFonts.lato(fontSize: 18),
                                  ),
                                  Text(
                                   "₹${products[index].price}",
                                    style: GoogleFonts.lato(fontSize: 18),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Discount:",
                                    style: GoogleFonts.lato(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    products[index].discount,
                                    style: GoogleFonts.lato(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pinkAccent
                                    ),
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width * 0.01),

                                ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                              Center(
                                child: InkWell(
                                  onTap: (){
                                    products[index].onTap?.call();
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color:  Colors.pinkAccent,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "ADD TO CART",
                                          style: GoogleFonts.lato(
                                            color: Colors.pinkAccent,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
