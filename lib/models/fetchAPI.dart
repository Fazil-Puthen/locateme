import 'package:dio/dio.dart';
import 'package:locater/models/usermodel/usermodel.dart';

Future<UserDataList> getusers()async{
  final dio=Dio();
  String url='https://reqres.in/api/users?page=1';

  final result=await dio.get(url);
  if(result.statusCode==200){
    return UserDataList.fromJson(result.data);
  }
  else{
    throw Exception('failed to fetch data');
  }
}