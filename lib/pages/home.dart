// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_instagram_ul/util/bubble_store.dart';
import 'package:flutter_instagram_ul/util/user_post.dart';

class Home extends StatelessWidget {
  final List people = [
    'Jane',
    'Mary',
    'moses',
    'martin',
    'Jack',
    'moses',
  ];
   Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Instagram',
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: [
                  Icon(Icons.add),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Icon(Icons.favorite),
                  ),
                  Icon(Icons.share),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            ///store
            Container(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: people.length,
                    itemBuilder: ((context, index) {
                      return BubbleStore(text: people[index]);
                    }))),

            ///posts
            UserPost(name: 'kachigo',),
            ///
          ],
        ));
  }
}
