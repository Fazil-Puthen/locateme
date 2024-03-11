import 'package:flutter/material.dart';
import 'package:locater/models/constants.dart';
import 'package:locater/models/usermodel/usermodel.dart';

class Usercard extends StatelessWidget {
  final UserDataList data;
  const Usercard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
                  itemBuilder:(context, index) {
    final user=data.data[index];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), ),
        child: 
        
        //user card
        Card(
          color: Colors.white,
          elevation: 15,
          shadowColor: Colors.black,
          child: Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)),
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Row(
              children: [
                wbox,
                CircleAvatar(
                radius: 35,
                  backgroundImage: NetworkImage(user['avatar']),),
                wbox,
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('Id: ${user['id']}',style: cardfont,),
                box,
                Text('${user['first_name']} ${user['last_name']}',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                Text(user['email'],style:const  TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.normal),)],),
              ],
            ),
          ),
        )
      ),
    ); 
                  }, 
                  separatorBuilder:(context, index) => box,
                  itemCount: data.data.length);
  }
}