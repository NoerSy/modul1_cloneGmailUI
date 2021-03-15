

import 'package:UI_Scanner/thame/PaletteColor.dart';
import 'package:UI_Scanner/thame/TypographyStyle.dart';
import 'package:flutter/material.dart';

class ClassPractice extends StatelessWidget {
  final String kelas, jam, lab, pc;

  ClassPractice({@required this.kelas, this.jam, this.lab, this.pc});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(12),
      title: Text(kelas,
        style: TypographyStyle.caption2
            .merge(TextStyle(fontSize: 18)),),
      subtitle: Container(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Icon(
              Icons.access_alarm,
              color: PaletteColor.primary,
            ),
            SizedBox(width: 4),
            Text(jam),
            SizedBox(width: 14),
            Icon(
              Icons.meeting_room,
              color: PaletteColor.primary,
            ),
            SizedBox(width: 4),
            Text(lab),
            SizedBox(width: 14),
            Icon(
              Icons.computer,
              color: PaletteColor.primary,
            ),
            SizedBox(width: 4),
            Text(pc),
          ],
        ),
      ),
    );;
  }
}

