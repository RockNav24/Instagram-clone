import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      title: "Instagram Clone",
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          centerTitle: true,
          title: Text("Instagram"),
          leading: IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.live_tv),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 5),
              height: 80,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              width: 1.5,
                              color: Colors.red,
                            )),
                        child: Container(
                          padding: EdgeInsets.all(3),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image(
                              fit: BoxFit.cover,
                              height: 50,
                              width: 50,
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 2),
                        child: Text(
                          "Navod",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Divider(),
            Container(
              child: Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                      "https://avatars2.githubusercontent.com/u/36862700?s=460&u=4a0ef7822fcd8a52c6e3dcd6afc27236a03e49d2&v=4") ??
                                  Image(
                                    height: 350,
                                    image: AssetImage("img/loading.jpg"),
                                  ),
                              backgroundColor: Colors.red,
                            ),
                            title: Text(
                              "rock_nav_24",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            child: Image(
                              image: NetworkImage(
                                  "https://static01.nyt.com/images/2019/02/03/travel/03frugal-srilanka01/merlin_148552275_74c0d250-949c-46e0-b8a1-e6d499e992cf-superJumbo.jpg"),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.favorite_border,
                                        color: Colors.black,
                                        size: 35,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: IconButton(
                                      icon: Icon(Icons.comment,
                                          color: Colors.black, size: 30),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.send,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.bookmark_border,
                                  color: Colors.black,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              "413 likes",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 10),
                            child: RichText(
                              text: TextSpan(
                                text: "",
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "rock_nav_24",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  TextSpan(text: "  "),
                                  TextSpan(
                                      text:
                                          "Sri Lanka is well known for its rich Buddhist culture as well as other religions. Being a religious country, Sri Lanka has many places with religious and historic significance, which attract tourists from all over the world.",
                                      style: TextStyle(color: Colors.black)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 10,
          currentIndex: 0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              title: Text("Search"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box,
                size: 30,
              ),
              title: Text("Add"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                size: 30,
              ),
              title: Text("Liked"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              title: Text("Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
