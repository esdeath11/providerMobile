
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learnprovider/Data/model.dart';


class DataAPI{

  MyModel result;

  Future<MyModel> getData(context) async{
    http.Response resp = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'), ]
    headers: HttpHeader.contentTypeHeader:"application/json",
    );


  }





  }


}