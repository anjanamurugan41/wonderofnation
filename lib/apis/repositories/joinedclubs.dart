
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oo/apis/repositories/registerRepositories.dart';

import '../../addClubs/myclubs.dart';
import '../../constants/webApiprovider.dart';
import '../../homePage/navigator.dart';
import 'clublistrepositories.dart';



class ClubjoinedbuttonRepository{
  getLeaveeport( context, int listId) async {
    final Map<String, dynamic> _queryParameters = <String, dynamic>{
      "club_id": listId,

    };
    print("_queryParameters : " + _queryParameters.toString());
    try {
      final response = await WebApiProvider().getData(
          url: "club/join",
          isPost: true,
          token: TOKEN,
          queryParameters: _queryParameters,
          isQueryParmeter: true);
print("object0->>>>${response}");
      if (response["message"] == "success") {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  Myclubs()),
        );
      } else {
        throw response.statusCode;
      }
    } catch (error) {
      print(error);
    }
  }
}
