import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorListScreen extends StatefulWidget {
  static const String id = "DoctorListScreenId";

  @override
  _DoctorListScreenState createState() => _DoctorListScreenState();
}

class _DoctorListScreenState extends State<DoctorListScreen> {
  static Map<int, bool> countToValue = <int, bool>{};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListView(
        children: <Widget>[
          for (int count in List.generate(9, (index) => index + 1))
            ListTile(
              title: Text('List item $count'),
              isThreeLine: true,
              subtitle: Text('Secondary text\nTertiary text'),
              leading: Icon(Icons.label),
              selected: countToValue[count] ?? false,
              trailing: Checkbox(
                value: countToValue[count] ?? false,
                onChanged: (bool value) {
                  setState(() {
                    countToValue[count] = value;
                  });
                },
              ),
            ),
        ],
      ),
    );
  }
}
