import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Profilepage.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Icon(Icons.clear_all_rounded, size: 28,))
              ),
            ],),actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.account_circle_sharp,
              size:30,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile_1(user: null,),));
            },
          )
        ],

        ),
        body:
       Container(
       decoration: BoxDecoration(
       image: DecorationImage(
    image: AssetImage('assets/images/designt-removebg-preview.png'),
    fit: BoxFit.scaleDown
    ),
       ),
         child: Opacity(
           opacity: 0.8,
           child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context);
                    },
                    child: Container(
                      height: 150,
                      width: 600,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text("Table Orders",
                        style: TextStyle(fontStyle: FontStyle.italic,
                          fontSize: 40,
                          color: Colors.black
                        )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
              InkWell(
                onTap: () {
                  Navigator.of(context);
                },
                child: Container(
                  height: 150,
                  width: 600,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text("Take Away Orders",
                        style: TextStyle(fontStyle: FontStyle.italic,
                            fontSize: 40,
                            color: Colors.black
                        )
                    ),
                  ),
                ),
              ),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context);
                    },
                    child: Container(
                      height: 150,
                      width: 600,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text("Parcel Orders",
                            style: TextStyle(fontStyle: FontStyle.italic,
                                fontSize: 40,
                                color: Colors.black
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
         ),
       ),
      )
        );
  }
}
