

import 'package:UI_Scanner/thame/PaletteColor.dart';
import 'package:UI_Scanner/thame/TypographyStyle.dart';
import 'package:UI_Scanner/view/widget/mails.dart';
import 'package:UI_Scanner/view/widget/primary_mail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DasboardPage extends StatefulWidget {
  @override
  _DasboardPageState createState() => _DasboardPageState();
}

class _DasboardPageState extends State<DasboardPage> {

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    return SafeArea(
      child: Scaffold(
        key: _drawerKey,
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.all(12),
              sliver: SliverAppBar(
                pinned: false,
                snap: true,
                floating: true,
                elevation: 2,
                backgroundColor: PaletteColor.primarybg,
                iconTheme: IconThemeData(
                  color: PaletteColor.text
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                primary: false,
                title: TextFormField(
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(left: 13),
                    hintText: 'Telusuri dalam email',
                    hintStyle: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipOval(
                      child: Image.network(
                          "https://lh3.googleusercontent.com/fife/ABSRlIoIsW1qGZwowIikK7zSG95_--QfGweUqAginSm7Ho6R6_QRnC-tAd-W42hUfQ6cCJ4hngtSwKqvaEm1N4dKZRGlj-8dZnDsFfrb7J1gYogWTvCThPduM_OMQK6jE_kk0jwrTRpWa0FGoWiXB-NLJtC5ull31rWeklHxKVPcjgUX-ePFFpeq7W0wf6ZwjEt0RV37M1OJNLIvaNqgClQayaVOVSSDMxkCrzk1twLFVIaDLrHsoH9y1Q9CWkcs--zOj6fppCOPfM21M7t5sJ9kVns0KvqYHKso_bb8p-a97rKWNFVKimNqcsv5qhc48F5uSopufTVPlJkYeZtd4VunXH6fGHjCHrBnrStcrW_0Z3ibWMwsITC5ij548PMEfqRvuWWTV9z12Gs1tfPLLtAQzC49SbRXR0QoEKHJ3y9EIqum01ND50jeK3sKKJorq34r6RRt8XNiHjDEup0uXlyy3HUf5-tDJdxnwnLY8RTacM6afplcIjaL0IqSVtRggc6S6oipLdBdpquaNSDVsbx2eUPUuVE59DRg8wbDQ8rP-TDf-7NR1_bMxNiacXQPaW_S1J8hg8CFLylWVSeb8q_tVg13fjclDV2EhFdGD0o47PspmOGdcpbmyUdOVEdTlgDjTVEJw1miEDxCqNVmpq8g8cCxJx20A-yam7cJvYhEn9hAdfAY_9-tP8xNf0SCep8jleRFdizHOB5oEfMaOINJBGIJ-vW8LVH5-WkWrynxZxo5PBM=s83-c"),
                    ),
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 12, left: 24, bottom: 12),
                child: Text("KOTAK MASUK",
                style: TypographyStyle.subtitle2,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  margin: EdgeInsets.only(top: 12, left: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        alignment: Alignment.topCenter,
                        width: 40,
                        child: ClipOval(
                          child: Container(
                            alignment: Alignment.center,
                            width: 40,
                            height: 40,
                            child: Text(
                              "G",
                              style: TypographyStyle.title.merge(
                                TextStyle(color: PaletteColor.primarybg),
                              ),
                            ),
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 12),
                        width: MediaQuery.of(context).size.width - 120,
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "GitHub",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text("data"),
                            Text("data"),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("9 Mar"),
                            SizedBox(height: 12),
                            Icon(Icons.star_outline),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }, childCount: 20),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
