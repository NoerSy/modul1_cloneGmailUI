import 'package:UI_Scanner/thame/PaletteColor.dart';
import 'package:UI_Scanner/thame/TypographyStyle.dart';
import 'package:flutter/material.dart';

import 'view/DashboardPage/DashboardPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Modul 1',
      home: Jadwal(),
    );
  }
}

class Jadwal extends StatefulWidget {
  @override
  _JadwalState createState() => _JadwalState();
}

class _JadwalState extends State<Jadwal> {
  final List<String> days = <String>[
    'Senin',
    'Selasa',
    'Rabu',
    'Kamis',
    'Jumat',
    'Sabtu'
  ];

  final List<String> kelas = <String>[
    'Pemrograman Fungsional F',
    'Pemrograman Dasar F',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PaletteColor.primary,
        title: Text("Jadwal Praktikum"),
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: days.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: PaletteColor.primary,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              children: [
                Container(
                  height: 50,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 24),
                    child: Text(
                      days[index],
                      style: TypographyStyle.caption2.merge(
                        TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: PaletteColor.primarybg,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.all(12),
                        title: Text(
                          "Pemrograman Fungsional F",
                          style: TypographyStyle.caption2
                              .merge(TextStyle(fontSize: 18)),
                        ),
                        subtitle: Container(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              Icon(
                                Icons.access_alarm,
                                color: PaletteColor.primary,
                              ),
                              SizedBox(width: 4),
                              Text("00:00 - 00:00"),
                              SizedBox(width: 14),
                              Icon(
                                Icons.meeting_room,
                                color: PaletteColor.primary,
                              ),
                              SizedBox(width: 4),
                              Text("Lab A"),
                              SizedBox(width: 14),
                              Icon(
                                Icons.computer,
                                color: PaletteColor.primary,
                              ),
                              SizedBox(width: 4),
                              Text("A25"),
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(12),
                        title: Text(
                          "Pemrograman Dasar F",
                          style: TypographyStyle.caption2
                              .merge(TextStyle(fontSize: 18)),
                        ),
                        subtitle: Container(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              Icon(
                                Icons.access_alarm,
                                color: PaletteColor.primary,
                              ),
                              SizedBox(width: 4),
                              Text("00:00 - 00:00"),
                              SizedBox(width: 14),
                              Icon(
                                Icons.meeting_room,
                                color: PaletteColor.primary,
                              ),
                              SizedBox(width: 4),
                              Text("Lab A"),
                              SizedBox(width: 14),
                              Icon(
                                Icons.computer,
                                color: PaletteColor.primary,
                              ),
                              SizedBox(width: 4),
                              Text("A25"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
