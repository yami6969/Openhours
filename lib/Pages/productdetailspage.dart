import 'package:flutter/material.dart';

class productdetailspage extends StatelessWidget {
  const productdetailspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbat sets the title of the app

      // Decoratedbox which takes the
      // decoration and child property
      body: DecoratedBox(
        // BoxDecoration takes the image
        decoration: const BoxDecoration(
          // Image set to background of the body
          image: DecorationImage(
              image: AssetImage("Images/casablanca.jpg"), fit: BoxFit.fill),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Expanded(
              child: Container(
            height: 500,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.transparent, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            // child: Text(
            //   "Casablanca",
            //   style: DefaultTextStyle.of(context)
            //       .style
            //       .apply(fontSizeFactor: 2.0),

            // ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Casablanca",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                ),
                const Text(
                    "This restaurant is remarkable for its nice service. Most of the time, the lovely ambiance is to be found here. But many guests who use Google didn't grant Casablanca a high rating.",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: 100.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.white,
                          width: 3.0,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          Text(
                            '4.9',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      width: 200.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.transparent,
                      ),
                      child: Column(children: const [
                        Text(
                          'Available services:',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        // Text(
                        //   'Zomato',
                        //   style: TextStyle(color: Colors.white),
                        // ),
                        // Text(
                        //   'Swiggy',
                        //   style: TextStyle(color: Colors.white),
                        // ),
                        // Text(
                        //   'Uber eats',
                        //   style: TextStyle(color: Colors.white),
                        // ),
                        //need to make a listview for displaying the services
                      ]),
                    ),

                    // Container(
                    //   width: 150.0,
                    //   height: 200.0,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(10.0),
                    //     color: Colors.transparent,
                    //     border: Border.all(
                    //       color: Colors.black,
                    //       width: 2.0,
                    //     ),
                    //   ),
                    // child: Center(
                    //   child: Text(
                    //     'Average Wait Time:100 min',
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 18.0,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ),
                    // ),
                    // )
                  ],
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
