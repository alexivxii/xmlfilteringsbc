import 'package:flutter/material.dart';
import 'package:xml_filtering_sbc/fifthQuery.dart';
import 'package:xml_filtering_sbc/firstQuery.dart';
import 'package:xml_filtering_sbc/fourthQuery.dart';
import 'package:xml_filtering_sbc/secondQuery.dart';
import 'package:xml_filtering_sbc/thirdQuery.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<HomePage> {

  initState() {
    super.initState();
  }

  TextEditingController EmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    ///initializari screen sizes
    Size _screenSize = MediaQuery.of(context).size;
    double _screenTopPadding = MediaQuery.of(context).viewPadding.top;

    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: _screenTopPadding < 30.0
            ? EdgeInsets.fromLTRB(00.0, 40.0, 0.0, 0.0) //Fara notch
            : EdgeInsets.fromLTRB(00.0, 30.0, 0.0, 0.0), //Cu notch // astea noi oricare si cu notch si fara
        /// dupa ? e fara notch si dupa : e cu notch
        child: Column(
          children: [
            // Container(
            //   alignment: Alignment.centerRight,
            //   margin: EdgeInsets.only(top:20, left:25,right: 25),
            //   child: InkWell(
            //       onTap: (){
            //
            //       },
            //       child: Text("Sign up", style: TextStyle(fontSize: 22, color: Color(0xffff682c), fontWeight: FontWeight.w500,),)
            //   ),
            // ),

            Flexible(
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  children: [
                    Column(
                      children: [

                        ///1
                        Container(
                          margin: EdgeInsets.only(top:20,left: 40, right: 40),

                          child: Text("Toate modelele detinute de compania mama aleasa",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 20, bottom: 20),
                            height: 40,
                            width: 190,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffff682c),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => FirstQuery()),
                                );
                              },
                              child: Text(
                                "View",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),

                        Divider(
                          height: 20,
                          thickness: 2,
                          indent: 20,
                          endIndent: 20,
                          color: Colors.grey

                        ),

                        ///2
                        Container(
                          margin: EdgeInsets.only(top:20,left: 40, right: 40),

                          child: Text("Modelele in functie de combustibil",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 20, bottom: 20),
                            height: 40,
                            width: 190,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffff682c),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => secondQuery(),
                                ));
                              },
                              child: Text(
                                "View",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),

                        Divider(
                            height: 20,
                            thickness: 2,
                            indent: 20,
                            endIndent: 20,
                            color: Colors.grey

                        ),

                        ///3
                        Container(
                          margin: EdgeInsets.only(top:20,left: 40, right: 40),

                          child: Text("Toate modelele pana in anul introdus",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 20, bottom: 20),
                            height: 40,
                            width: 190,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffff682c),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => thirdQuery(),
                                    ));
                              },
                              child: Text(
                                "View",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),

                        Divider(
                            height: 20,
                            thickness: 2,
                            indent: 20,
                            endIndent: 20,
                            color: Colors.grey

                        ),

                        ///4
                        Container(
                          margin: EdgeInsets.only(top:20,left: 40, right: 40),

                          child: Text("Modelele peste pretul ales",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 20, bottom: 20),
                            height: 40,
                            width: 190,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffff682c),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => fourthQuery(),
                                    ));
                              },
                              child: Text(
                                "View",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),

                        Divider(
                            height: 20,
                            thickness: 2,
                            indent: 20,
                            endIndent: 20,
                            color: Colors.grey

                        ),

                        ///5 if A and B then C
                        Container(
                          margin: EdgeInsets.only(top:20,left: 40, right: 40),

                          child: Text("Modelele in functie de bugetul ales si combustibil",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 20, bottom: 20),
                            height: 40,
                            width: 190,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffff682c),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => fifthQuery(),
                                    ));
                              },
                              child: Text(
                                "View",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}


// Container(
//   margin: EdgeInsets.only(top:20,left: 40, right: 40),
//   height: 50,
//   child: Theme(
//     data: new ThemeData(
//       primaryColor: Colors.black12,
//     ),
//     child: TextField(
//       style: TextStyle(color: Colors.black54),
//       cursorColor: Colors.grey,
//       controller: EmailController,
//       decoration: InputDecoration(
//         contentPadding: EdgeInsets.only(left: 10),
//         focusedBorder: const OutlineInputBorder(
//           borderSide:
//           const BorderSide(color: Colors.black12, width: 2.0),
//         ),
//         enabledBorder: const OutlineInputBorder(
//           borderSide:
//           const BorderSide(color: Colors.black12, width: 2.0),
//         ),
//         hintText: 'Email',
//         hintStyle: TextStyle(color: Colors.grey),
//       ),
//     ),
//   ),
// ),