import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:newap/team.dart';

class Myhomepage extends StatelessWidget {
  Myhomepage({Key? key}) : super(key: key);

  List<Team> teams = [];

  Future getteams() async {
    var response = await http.get(Uri.https('balldontlie.io', 'api/v1/teams'));

    var jsondata = jsonDecode(response.body);

    for (var eachTeam in jsondata['data']) {
      final team = Team(
        abbreviation: eachTeam['abbreviation'],
        city: eachTeam['city'],
        name: eachTeam['name'],
        conference: eachTeam['conference'],
        division: eachTeam['division'],
      );

      teams.add(team);
    }
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getteams(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(teams[index].abbreviation),
                              Text('Name :' + teams[index].name),
                              Text('Conference :' + teams[index].conference),
                              Text('Division :' + teams[index].division)
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
