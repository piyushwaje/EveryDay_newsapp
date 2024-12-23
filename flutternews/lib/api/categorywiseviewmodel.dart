import 'package:flutternews/api/categorywise.dart';

import 'newsapi.dart';

class catviewmodel
{


  final repo = fetchrepocat();
  Future<newsapi> fetchNewscat(String category) async{

    print("cate");
    print(category);
    final respond = await repo.fetchNewscat(category);
    return respond;
  }


}