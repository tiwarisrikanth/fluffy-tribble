import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

class HomeExp extends StatefulWidget {
  @override
  _HomeExpState createState() => _HomeExpState();
}

class _HomeExpState extends State<HomeExp> {
  @override
  Widget build(BuildContext context) {
    Future<List<FakeData>> modeData() async {
      var apiUrl = await http.get(Uri.parse(
          "http://www.json-generator.com/api/json/get/bTLRYXyqaa?indent=2"));

      var jsonData = json.decode(apiUrl.body);

      List<FakeData> model = [];

      for (var u in jsonData) {
        FakeData mode = FakeData(u["job"]);

        model.add(mode);
      }
      return model;
    }

    Future<List<FakeDataForEvents>> eventsData() async {
      var apiUrl = await http.get(Uri.parse(
          "http://www.json-generator.com/api/json/get/cebuSZlYpu?indent=2"));

      var jsonData = json.decode(apiUrl.body);

      List<FakeDataForEvents> model = [];

      for (var u in jsonData) {
        FakeDataForEvents events = FakeDataForEvents(u["company"]);

        model.add(events);
      }
      return model;
    }

    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: ContainedTabBarView(
        tabs: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(
                Icons.settings,
                size: 20,
              ),
              Text(
                '\t\tScenes',
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(
                Icons.calendar_today,
                size: 20,
              ),
              Text(
                '\t\tEvents',
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          ),
        ],
        tabBarProperties: TabBarProperties(
          innerPadding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 8.0,
          ),
          indicator: ContainerTabIndicator(
            color: Colors.blue.shade800,
            radius: BorderRadius.circular(16.0),
          ),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey[600],
        ),
        views: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  child: FutureBuilder(
                    future: modeData(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (!snapshot.hasData)
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: LinearProgressIndicator(
                              minHeight: 4.0,
                              valueColor: new AlwaysStoppedAnimation<Color>(
                                  Colors.blue.shade800),
                            ),
                          ),
                        );
                      if (snapshot.data == null) {
                        return Container(
                          child: Center(
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.blue.shade800,
                            ),
                          ),
                        );
                      } else {
                        return Container(
                          color: Colors.white,
                          margin: EdgeInsets.only(top: 10),
                          child: ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onDoubleTap: () {
                                  print(snapshot.data[index].event.toString());
                                },
                                onLongPress: () {
                                  //EditEvent();
                                },
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(left: 10, right: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade400,
                                            offset: const Offset(1.0, 1.0),
                                            blurRadius: 2.0,
                                            spreadRadius: 1.0,
                                          ), //BoxShadow
                                        ],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ListTile(
                                          title: Text(
                                            snapshot.data[index].job.toString(),
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                color: Colors.white,
                child: FutureBuilder(
                  future: eventsData(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (!snapshot.hasData)
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: LinearProgressIndicator(
                            minHeight: 4.0,
                            valueColor: new AlwaysStoppedAnimation<Color>(
                                Colors.blue.shade800),
                          ),
                        ),
                      );
                    if (snapshot.data == null) {
                      return Container(
                        child: Center(
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.blue.shade800,
                          ),
                        ),
                      );
                    } else {
                      return Container(
                        color: Colors.white,
                        margin: EdgeInsets.only(top: 10),
                        child: ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onDoubleTap: () {
                                print(snapshot.data[index].company.toString());
                              },
                              onLongPress: () {
                                //EditEvent();
                              },
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade400,
                                          offset: const Offset(1.0, 1.0),
                                          blurRadius: 2.0,
                                          spreadRadius: 1.0,
                                        ), //BoxShadow
                                      ],
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ListTile(
                                        title: Text(
                                          snapshot.data[index].company
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onTap: () {},
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ],
        onChange: (index) => print(index),
      ),
    );
  }
}

class FakeData {
  final String job;
  // final bool status;

  FakeData(this.job);
}

class FakeDataForEvents {
  final String company;

  FakeDataForEvents(this.company);
}
