import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

int count = 1;
List<String> ingredients = [];

class IngredientsScreen extends StatefulWidget {
  static const String id = 'ingredients_screen';
  @override
  _IngredientsScreenState createState() => _IngredientsScreenState();
}

class _IngredientsScreenState extends State<IngredientsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7EC5C1),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffEE4D4D),
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Image.asset('images/add.png')),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Have anything in mind?',
                  style: GoogleFonts.dancingScript(
                      color: Colors.white, fontSize: 30.0)),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "\tLet's find the perfect one for you :)",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: InkWell(
                    onTap: () {
                      print('oof');
                    },
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                  //Image.asset('images/search.png'),
                ),
                onChanged: (value) {
                  print('search pressed');
                },
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60.0),
                    topRight: Radius.circular(60.0),
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 30.0,
                    ),
                    Text(
                      "or Don't know where to start?",
                      style: GoogleFonts.dancingScript(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Just open your fridge and tell us what you find!',
                      style: GoogleFonts.rambla(
                          color: Color(0xff737373), fontSize: 17.0),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 20.0,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: count,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 40.0, vertical: 10.0),
                            child: TextField(
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffF9D6DC),
                                hintText: "Name of ingredient",
                                hintStyle: TextStyle(color: Colors.black54),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide.none,
                                ),
                                suffixIcon: InkWell(
                                  onTap: () {
                                    print('oof');
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Image.asset('images/cross.png'),
                                  ),
                                ),
                                //Image.asset('images/search.png'),
                              ),
                              onChanged: (value) {
                                ingredients[index] = value;
                                print(ingredients);
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Material(
                      elevation: 5.0,
                      color: Color(0xff4D9194),
                      borderRadius: BorderRadius.circular(30.0),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                          child: MaterialButton(
                            onPressed: () {
                              print('pressed');
                              //Navigator.pushNamed(context, IngredientsScreen.id);
                            },
                            minWidth: 150.0,
                            height: 30.0,
                            child: Text(
                              "Let the magic begin !",
                              style: GoogleFonts.rambla(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
