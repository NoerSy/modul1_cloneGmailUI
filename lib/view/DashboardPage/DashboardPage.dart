import 'package:UI_Scanner/thame/PaletteColor.dart';
import 'package:UI_Scanner/thame/TypographyStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DasboardPage extends StatefulWidget {
  @override
  _DasboardPageState createState() => _DasboardPageState();
}

class _DasboardPageState extends State<DasboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Container(
          height: 70.0,
          width: 70.0,
          child: FittedBox(
            child: FloatingActionButton(
              child: Icon(
                Icons.add,
                color: Colors.black54,
                size: 30,
              ),
              backgroundColor: PaletteColor.primarybg2,
              onPressed: () {},
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverPadding(padding: EdgeInsets.all(4)),
            SliverPadding(
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 12),
              sliver: SliverAppBar(
                pinned: false,
                snap: true,
                floating: true,
                elevation: 5,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(color: PaletteColor.text),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
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
                child: Text(
                  "KOTAK MASUK",
                  style: TypographyStyle.subtitle2,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return InkWell(
                  onTap: () => {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    margin: EdgeInsets.only(top: 12, left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          alignment: Alignment.topCenter,
                          width: 50,
                          child: ClipOval(
                            child: Container(
                              alignment: Alignment.center,
                              width: 50,
                              height: 50,
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
                              Text(
                                "Menerapkan Container, Row, Column, ListView Builder, Orientasi Portrait dan Landscape tidak bermasalah",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
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
              Container(
                margin: EdgeInsets.only(left: 20, top: 4),
                alignment: Alignment.centerLeft,
                height: 50,
                child: Text(
                  "Gmail",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.inbox),
                title: Text('Semua Kotak Masuk'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.inbox),
                title: Text('Kotak Masuk'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Container(
                margin: EdgeInsets.only(left: 18, top: 12, bottom: 4),
                child: Text(
                  "SEMUA LEBEL",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.star_border_outlined),
                title: Text('Berbintang'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.access_time_rounded),
                title: Text('Ditunda'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.label_important_outline),
                title: Text('Penting'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.send_sharp),
                title: Text('Terkirim'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.schedule_send),
                title: Text('Terjadwal'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app_sharp),
                title: Text('Kotak Keluar'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.insert_drive_file_outlined),
                title: Text('Darf'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.email_outlined),
                title: Text('Semua Email'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.info_outline),
                title: Text('Spam'),
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
