import 'package:blogs_app/details_page.dart';
import 'package:blogs_app/models/country_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  final List<Country> countries = [
    Country(
        imageUrl:
            "https://images.unsplash.com/photo-1549043671-7545f8c7ca9d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjA3fHxzaGlydHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        name: "Shirt",
        description:
            "Company. Safe Trading B2B. Leading B2B Portal. China’s B2B Impact Award. Quality China Products. SGS Audited Suppliers. Highlights: New User Guide Available, Free App Available, Quotations Available."),
    Country(
        imageUrl:
            "https://images.unsplash.com/photo-1532202193792-e95ef22f1bce?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fHRzaGlydHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        name: "Tshirt",
        description:
            "T Shirts Usa, Top Information From Trusted Internet Sources. T Shirts Usa, Get Expert Advice and Curated Content on Searchley. Useful & Relevant. Quick Answers. Explore the Best Info Now. Find All Info You Want. "),
    Country(
        imageUrl:
            "https://images.unsplash.com/photo-1504117809472-d99bf528ea44?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fHBhbnR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        name: "Pant",
        description:
            "Pants definition is - an outer garment covering each leg separately and usually extending from the waist to the ankle —often used before another noun ..."),
    Country(
        imageUrl:
            "https://images.unsplash.com/photo-1508296695146-257a814070b4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3VuJTIwZ2xhc3N8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        name: "Sun Glass",
        description:
            "Sunglasses or sun glasses (informally called shades or sunnies; more names below) are a form of protective eyewear designed primarily to prevent bright sunlight and high-energy visible light from damaging or discomforting the eyes."),
    Country(
        imageUrl:
            "https://images.unsplash.com/photo-1604523412873-4387f249cd90?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Ym9keSUyMHNwcmF5fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        name: "Body Spray",
        description:
            "Body spray is a perfume product, similar to aerosol deodorant, which is intended to be used elsewhere on the body besides the armpits. Body sprays are lighter in strength than cologne, generally less expensive, and double as deodorant."),
    Country(
        imageUrl:
            "https://images.unsplash.com/photo-1551107696-a4b0c5a0d9a2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHNob2VzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        name: "Shoes",
        description:
            "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. ... Traditionally, shoes have been made from leather, wood or canvas, but are increasingly made from rubber, plastics, and other petrochemical-derived materials."),
    Country(
        imageUrl:
            "https://images.unsplash.com/photo-1533867617858-e7b97e060509?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9ybWFsJTIwc2hvZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        name: "Formal Shoes",
        description:
            "A classic style of shoes that defines a class and sophistication, giving the wearer a true and perfect definition of class, elegance and dressing appeal. The sleeker the design, the more formal the shoes look. The most preferred colour being black and brown, these shoes are mainly sold in conservative shades."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Blogs',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 24),
            Expanded(
                child: ListView.builder(
                    itemCount: countries.length,
                    itemBuilder: (BuildContext context, int index) => InkWell(
                          onTap: () {
                            final route = MaterialPageRoute(
                                builder: (BuildContext context) {
                              return DetailsPage(
                                country: countries[index],
                              );
                            });
                            Navigator.push(context, route);
                          },
                          child: Column(
                            children: [
                              Container(
                                color: Colors.white54,
                                child: Row(
                                  children: [
                                    Container(
                                        height: 72,
                                        width: 72,
                                        child: Image.network(
                                          countries[index].imageUrl,
                                          width:
                                              MediaQuery.of(context).size.width,
                                        )),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          countries[index].name,
                                          style: TextStyle(
                                            fontSize: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        )))
          ],
        ),
      ),
    );
  }
}
