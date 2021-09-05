import 'package:blogs_app/details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  List<String> imageOfProducts = [
    "https://images.unsplash.com/photo-1620012253295-c15cc3e65df4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c2hpcnR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1527719327859-c6ce80353573?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dHNoaXJ0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1519733833087-3b1ceb8d56c5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGFudHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1558961910-90e0503c1064?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHN1biUyMGdsYXNzZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1625852043440-f7ed5aff1519?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Ym9keSUyMHNwcmF5fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1551107696-a4b0c5a0d9a2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHNob2VzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1449505278894-297fdb3edbc1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGZvcm1hbCUyMHNob2VzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  ];
  List<String> nameOfProducts = [
    "Shirt",
    "TShirt",
    "Pant",
    "Sun Glash",
    "Body Spray",
    "Shoes",
    "formal shoes",
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
                    itemCount: 7,
                    itemBuilder: (BuildContext context, int index) => InkWell(
                          onTap: () {
                            final route = MaterialPageRoute(
                                builder: (BuildContext context) {
                              return DetailsPage();
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
                                          imageOfProducts[index],
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
                                          nameOfProducts[index],
                                          style: TextStyle(
                                            fontSize: 30,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          'Make design system people want to use.',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
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
