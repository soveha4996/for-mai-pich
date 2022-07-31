import 'package:flutter/material.dart';

import 'mylistview.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: const Icon(Icons.view_headline),
        title: const Text('My App'),
        centerTitle: true,
      ),
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: Colors.blueAccent,
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                  )
                ),
                // Row of Picture profile and Text
                child: Row(
                  children: [
                    //Picture Profile

                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.teal,
                        border: Border.all(color: Colors.white, width: 2),
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRqc81ke--NsKKc_uM0J5z1DZHLcSMXv9wrA&usqp=CAU'),
                        ),
                      ),
                    ),
                    // Text

                    Container(
                      height: 50,
                      margin: const EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Soun Savdan', style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('458573'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(child: Mylist()),
    );
  }
}
