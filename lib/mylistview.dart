import 'package:flutter/material.dart';
import 'package:list/model.dart';
import 'package:list/profile%20details.dart';

class Mylist extends StatelessWidget {
  Mylist({Key? key}) : super(key: key);
  final list = People.generate();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading:
              CircleAvatar(backgroundImage: NetworkImage(list[index].photo)),
          title: Text(list[index].name),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail(list[index])));
          }
        );
      },
    );
  }
}
