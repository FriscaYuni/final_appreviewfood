import 'dart:html';
import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:reviewapps/login.dart';
import 'package:reviewapps/models/food_models.dart';
import 'package:reviewapps/profile/profilepage.dart';
import 'package:reviewapps/screens/screens.dart';
import 'package:reviewapps/services/firebase_auth_service.dart';
import 'package:reviewapps/widget/bottom_navbar.dart';
import 'package:reviewapps/widget/image_container.dart';
import 'package:reviewapps/profile/side_bar.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  static const routeName = '/discover';

  @override
  Widget build(BuildContext context) {
    FirebaseAuth _auth = FirebaseAuth.instance;

    List<String> tabs = [''];

    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavBar(index: 1),
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [const _DiscoverFood(), _CategoryFood(tabs: tabs)],
        ),
      ),
    );
  }
}

class _CategoryFood extends StatelessWidget {
  const _CategoryFood({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    final articles = Article.articles;
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          indicatorColor: Color.fromARGB(255, 255, 255, 255),
          tabs: tabs
              .map(
                (tab) => Tab(
                  icon: Text(
                    tab,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              )
              .toList(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: TabBarView(
            children: tabs
                .map(
                  (tab) => StreamBuilder(
                    stream: FirestoreService().getFoods(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      } else {
                        if (snapshot.hasError) {
                          return Text(snapshot.error.toString());
                        } else {
                          List foodList = snapshot.data!.docs;
                          return ListView.builder(
                            shrinkWrap: true,
                            itemCount: foodList.length,
                            // itemCount: 3,
                            itemBuilder: ((context, index) {
                              DocumentSnapshot documentSnapshot =
                                  foodList[index];
                              Map<String, dynamic> data = documentSnapshot
                                  .data() as Map<String, dynamic>;

                              return InkWell(
                                onTap: () {
                                  // Navigator.pushNamed(
                                  //   context,
                                  //   ArticleScreen.routeName,
                                  //   arguments: data,
                                  // );
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        ArticleScreen(foodDetail: data),
                                  ));
                                },
                                child: Row(
                                  children: [
                                    ImageContainer(
                                      width: 80,
                                      height: 80,
                                      margin: const EdgeInsets.all(10.0),
                                      borderRadius: 5,
                                      // imageUrl: articles[index].imageUrl,
                                      imageUrl: data['imageUrl'],
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            // articles[index].title,
                                            data['title'],
                                            maxLines: 2,
                                            overflow: TextOverflow.clip,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge!
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          const SizedBox(height: 10),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.schedule,
                                                size: 18,
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                // '${DateTime.now().difference(articles[index].createdAt).inHours} hours ago',
                                                // '${DateTime.now().difference(data['createdAt']).inHours} hours ago',
                                                '',
                                                style: const TextStyle(
                                                    fontSize: 12),
                                              ),
                                              const SizedBox(width: 20),
                                              const Icon(
                                                Icons.visibility,
                                                size: 18,
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                // '${articles[index].views} views',
                                                '${data['views']} views',
                                                style: const TextStyle(
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                          );
                        }
                      }
                    },
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}

class _DiscoverFood extends StatelessWidget {
  const _DiscoverFood({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Pilih Makananmu',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.black, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 5),
          Text(
            'Makanan Dari Berbagai Daerah',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Search',
              fillColor: Colors.grey.shade200,
              filled: true,
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              suffixIcon: const RotatedBox(
                quarterTurns: 1,
                child: Icon(
                  Icons.tune,
                  color: Colors.grey,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
