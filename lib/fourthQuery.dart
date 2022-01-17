import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:xml/xml.dart';
import 'package:xml2json/xml2json.dart';

class fourthQuery extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<fourthQuery> {

  initState() {
    super.initState();
  }

  List modele=[];
  List modeleShow=[];
  TextEditingController pretController = TextEditingController();
  final Xml2Json xml2Json = Xml2Json();

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
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top:20, left:25,right: 25),
              child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text("Back", style: TextStyle(fontSize: 22, color: Color(0xffff682c), fontWeight: FontWeight.w500,),)
              ),
            ),

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

                          child: Text("Modelele peste pretul ales",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:20,left: 40, right: 40),
                          height: 50,
                          child: Theme(
                            data: new ThemeData(
                              primaryColor: Colors.black12,
                            ),
                            child: TextField(
                              style: TextStyle(color: Colors.black54),
                              cursorColor: Colors.grey,
                              controller: pretController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 10),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(color: Colors.black12, width: 2.0),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(color: Colors.black12, width: 2.0),
                                ),
                                hintText: 'Pret',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
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
                                //final file = new File('assets/CarCompanies.xml');
                                //final document = XmlDocument.parse(file.readAsStringSync());
                                //print(document);

                                final CarCompaniesXML = '''<?xml version="1.0"?>
<faptesireguli>
    <fapte>
	<parentCompany>
		<name>Volkswagen Group</name>
		<company>
			<name>Volkswagen</name>
			<car>
				<model>id3</model>
				<year>2019</year>
				<fuel>electric</fuel>
				<price>39000</price>
			</car>
			<car>
				<model>up</model>
				<year>2013</year>
				<fuel>electric</fuel>
				<price>8500</price>
			</car>
			<car>
				<model>golf 4</model>
				<year>1997</year>
				<fuel>diesel</fuel>
				<price>2000</price>
			</car>
			<car>
				<model>golf 5</model>
				<year>2012</year>
				<fuel>diesel</fuel>
				<price>3000</price>
			</car>
		</company>
		<company>
			<name>Audi</name>
			<car>
				<model>r8</model>
				<year>2018</year>
				<fuel>diesel</fuel>
				<price>166000</price>
			</car>
			<car>
			    <model>s1</model>
				<year>2016</year>
				<fuel>diesel</fuel>
				<price>35000</price>
			</car>
		</company>
	</parentCompany>
	<parentCompany>
		<name>Renault-Nissan-Mitsubishi</name>
		<company>
			<name>Nissan</name>
			<car>
				<model>altima</model>
				<year>2016</year>
				<fuel>diesel</fuel>
				<price>15600</price>
			</car>
			<car>
				<model>leaf</model>
				<year>2019</year>
				<fuel>electric</fuel>
				<price>38000</price>
			</car>
		</company>
		<company>
			<name>Renault</name>
			<car>
				<model>zoe</model>
				<year>2020</year>
				<fuel>electric</fuel>
				<price>31000</price>
			</car>
			<car>
				<model>megane</model>
				<year>2018</year>
				<fuel>diesel</fuel>
				<price>22000</price>
			</car>
		</company>
		
	</parentCompany>
</fapte>
<reguli>
    <regula>
        <if>
            <model>x</model>
            <company>y</company>
            <conditie>equals</conditie>
        </if>
        <then>
            <exista>adevarat</exista>
        </then>
    </regula>
</reguli>
</faptesireguli>

''';

                                //  final document = XmlDocument.parse(CarCompaniesXML);
                                // //print(document.toXmlString(pretty: true, indent: '\t'));
                                // final models = document.findAllElements('model');
                                // print(models);


                                var document = XmlDocument.parse(CarCompaniesXML);
                                var allStringElements = document.findAllElements('model');

                                print(allStringElements);

                                print("---------------------XML 2 JSON--------------");

                                xml2Json.parse(CarCompaniesXML);
                                var jsonString = xml2Json.toParker();
                                // print(jsonString);

                                // // dissect the first element...
                                // var firstElement = allStringElements.first;
                                // print(firstElement.text);
                                // print(firstElement.attributes.first.value); // should really search the attributes for the one called 'name', but as there's only one...
                                //
                                // // or do something useful with the whole list
                                // for (var element in allStringElements) {
                                //   print('${element.attributes.first.value}->${element.text}');
                                // }

                                final data=jsonDecode(jsonString);

                                print(data);
                                print(data["faptesireguli"]["fapte"]["parentCompany"][0]["name"]);
                                print(data["faptesireguli"]["fapte"]["parentCompany"][0]["company"][0]["car"][0]);
                                List ListParentCompany=data["faptesireguli"]["fapte"]["parentCompany"];
                                print(ListParentCompany.length);

                                print("Output prima regula");


                                for(int i=0;i<ListParentCompany.length;i++)
                                {

                                  print(ListParentCompany[i]["name"]);
                                  List ListCompaniesInside = ListParentCompany[i]["company"];

                                  for(int j=0;j<ListCompaniesInside.length;j++)
                                  {
                                    print(ListCompaniesInside[j]["name"]);
                                    for(int k=0;k<ListCompaniesInside[j]['car'].length;k++)
                                    {
                                      if(int.parse(ListCompaniesInside[j]['car'][k]["price"])>=int.parse(pretController.text))
                                        modele.add(ListCompaniesInside[j]['car'][k]["model"]);

                                    }
                                  }

                                }

                                print(modele);
                                setState(() {
                                  modeleShow=modele;
                                  modele=[];
                                });

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

                        Container(
                          margin: EdgeInsets.only(top:20,left: 20, right: 20),
                          child: ListView.builder(
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              itemCount: modeleShow.length,
                              itemBuilder: (BuildContext context, int index){
                                return Container(
                                  margin: EdgeInsets.only(top:10, bottom:10),
                                  child: Text("${modeleShow[index]}",style: TextStyle(fontSize: 20),),
                                );
                              }
                          ),
                        )

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