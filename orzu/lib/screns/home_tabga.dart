import 'package:flutter/material.dart';
import 'package:orzu/screns/detail_page.dart';

class HomeTabGa extends StatelessWidget {
  const HomeTabGa({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, 
            ),
            child: Column(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailsPage())),
                        

                        child: Container(
                          height: 330,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              image: DecorationImage(
                         image:AssetImage("assets/fon.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      //
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Gildeskal, Noeway",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w400),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 19,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "4.91",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 3,),
                      Text("4,459 kilometrs away",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w300)),
                      Text("Jun 30-Jul 5",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w300)),
                              SizedBox(height: 3,),
                      Row(
                        children: [
                          Text(
                            "\$439",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(width: 3,),
                          Text("night",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 35,)
              ],
            ),
          );
        })));
  }
}