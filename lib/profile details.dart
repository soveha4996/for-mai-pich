

import 'package:flutter/material.dart';

import 'model.dart';

class Detail extends StatelessWidget {
  final People people;
  Detail(this.people);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(people.name),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            //Picture profile details

            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: NetworkImage(people.photo,),
                  fit: BoxFit.cover
                )
              ),
            ),
            const SizedBox(height: 20,),
            //Id

            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  const Text("ID: ", style: TextStyle(fontSize: 20),),
                  Text(people.id, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            //Name

            Padding(
              padding: const EdgeInsets.only(left: 50, top: 10),
              child: Row(
                children: [
                  const Text("Name: ", style: TextStyle(fontSize: 20),),
                  Text(people.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            //Gender

            Padding(
              padding: const EdgeInsets.only(left: 50, top: 10),
              child: Row(
                children: [
                  const Text("Sex: ", style: TextStyle(fontSize: 20),),
                  Text(people.gender, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            //Address

            Padding(
              padding: const EdgeInsets.only(left: 50, top: 10),
              child: Row(
                children: [
                  const Text("Address: ", style: TextStyle(fontSize: 20),),
                  Text(people.address, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            //Email

            Padding(
              padding: const EdgeInsets.only(left: 50, top: 10),
              child: Row(

                children: [
                  const Text("Email: ", style: TextStyle(fontSize: 20),),
                  Text(people.email, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
