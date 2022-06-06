import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:internship/nested-scrollview/profile.dart';

class Mynested extends StatefulWidget {
  const Mynested({Key? key}) : super(key: key);

  @override
  State<Mynested> createState() => _MynestedState();
}

class _MynestedState extends State<Mynested> with TickerProviderStateMixin {
  late TabController _tabController;
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: NeverScrollableScrollPhysics(),
        headerSliverBuilder: (context, isScolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.white,
              collapsedHeight: 250,
              expandedHeight: 250,
              flexibleSpace: Profileview(),
            ),
            // SliverPersistentHeader(
            //   delegate: MyDeleget(
            //   TabBar(
            //     tabs: [
            //       Tab(icon: Icon(Icons.grid_on)),
            //     ],
            //     indicatorcolor: Colors.blue,
            //     unselectedlabelcolor: Colors.grey,
            //     labelcolor: Colors.black,
            //   )),
            //   floating: true,
            //   pinned: true,
            // )
            TabBar(controller: _tabController, tabs: [
              Tab(
                icon: Icon(Icons.post_add_outlined),
              ),
              Tab(
                icon: Icon(Icons.video_label),
              ),
              Tab(
                icon: Icon(Icons.tag),
              ),
            ]),
            TabBarView(children: [
              Center(
                child: Text("Post"),
              ),
              Center(
                child: Text("Reels"),
              ),
              Center(
                child: Text("Tagged Post"),
              )
            ])
          ];
        },
        body: Container(),
      ),
    );
  }
}
