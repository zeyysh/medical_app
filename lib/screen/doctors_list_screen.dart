import 'dart:convert';
import 'dart:core';

import 'package:aria_dr/model/doctor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DoctorListScreen extends StatefulWidget {
  static const String id = "DoctorListScreenId";

  @override
  _DoctorListScreenState createState() => _DoctorListScreenState();
}

class _DoctorListScreenState extends State<DoctorListScreen> {
  Future<List<Doctor>> getData() async {
    var url = "http://10.0.2.2:80/test.php";
    final response = await http.get(url);
    if (response.statusCode == 200) {
      List doctors = jsonDecode(response.body);
      return doctors.map((doctor) => new Doctor.fromJson(doctor)).toList();
    } else {
      throw Exception("Unable to get JSON data");
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aria Dr'),
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  //Navigator.of(context).push(Main)
                })
          ],
        ),
        body: Material(
          child: Center(
            child: FutureBuilder<List<Doctor>>(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Doctor> doctors = snapshot.data;
                  return CustomListView(doctors);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return CircularProgressIndicator();
              },
            ),
          ),
        ),
      ),
    );
  }
}

class CustomListView extends StatelessWidget {
  List doctors = [];

  CustomListView(this.doctors);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: doctors.length,
      itemBuilder: (BuildContext context, int index) {
        return createViewItem(doctors[index], context);
      },
    );
  }

  Widget createViewItem(Doctor doctor, BuildContext context) {
    return ListTile(
      title: Card(
        child: Container(
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(doctor.firstName + " " + doctor.lastName),
              Text(doctor.specialty),
            ],
          ),
        ),
      ),
    );
  }
}
