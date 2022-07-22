import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../apis/repositories/registerRepositories.dart';
import '../constants/baseurls.dart';
int designatioids = 0;
String marketname = "";
String MySelectionemployee = "";
class newdesignationdropdropdmnDetails {


  final int id;
  final String sport;

  newdesignationdropdropdmnDetails(this.id, this.sport);

  newdesignationdropdropdmnDetails.fromJson(Map jsonMap)
      : id = jsonMap['id'],
        sport = jsonMap['sport'];
  Map toMapData(){
    var mapGroup = new Map<String, dynamic>();
    mapGroup["sport"] = sport;
    mapGroup['id'] = id;
    return mapGroup;

  }
}



class designationdropdown extends StatefulWidget {
  @override
  _MyHomePageState15 createState() => _MyHomePageState15();
}

class _MyHomePageState15 extends State<designationdropdown> {
  String dropdownvalue = 'Select';
  String marketypessss = "";

  int id = 0;
  late final Function()? onChanged;

  @override
  Future _fetchJobs() async {


    final response = await  http.get(
      Uri.parse(
          '${baseurl}get/sports'),
      headers: <String, String>{
        'Accept': "appilication/json",
        'Authorization': 'Bearer $TOKEN',

      },
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      print("jsonResponse->>>>>>>>${jsonResponse}");
      return jsonResponse
          .map((job) => new newdesignationdropdropdmnDetails.fromJson(job))
          .toList();
    } else {
      throw Exception('Failed to load jobs from API');
    }
  }



  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 40,
        child: FutureBuilder(
            future: _fetchJobs(),
            builder: (context, snapshot) {
              print("holooo->>>>>${snapshot.data}");
              if (snapshot.hasData) {
                var newbookingagentid = snapshot.data! as List<newdesignationdropdropdmnDetails> ;
                print("dataedfghjk->>>>>>${newbookingagentid}");
                if (MySelectionemployee == "") {
                  MySelectionemployee = newbookingagentid![0].sport ;
                  print("dataedfghjk->>>>>>${MySelectionemployee}");
                }

                else{
                  MySelectionemployee = MySelectionemployee;
                }

                return StatefulBuilder(
                    builder: (context, setState) {
                      return Container(

                        height: 50,

                        decoration: BoxDecoration(


                          borderRadius: BorderRadius.circular(7),

                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: MySelectionemployee,

                            items: newbookingagentid.map((items) {
                              return DropdownMenuItem(
                                  onTap: (){setState((){
                                    id = items.id;
                                    designatioids = id;


                                    print("designatioids->>>>>>${designatioids}");
                                  });},

                                  value: items.sport,
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10,),
                                      Text(
                                        items.sport,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 10),
                                      ),
                                    ],
                                  ));
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                MySelectionemployee = newValue as String;
                                print("MySelection->>>>>>${MySelectionemployee}");
                              });
                            },
                          ),
                        ),
                      );
                    }
                );
              }else{
                return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.white,
                    child: Center(
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.white,
                        color: Colors.green,
                      ),
                    ));
              }
            }


        ));


  }



}