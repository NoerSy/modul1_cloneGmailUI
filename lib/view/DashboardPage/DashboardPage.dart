import 'package:UI_Scanner/component/CustomElevation.dart';
import 'package:flutter/material.dart';

class DasboardPage extends StatefulWidget {
  @override
  _DasboardPageState createState() => _DasboardPageState();
}

class _DasboardPageState extends State<DasboardPage> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size(
              0,
              15,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  padding: const EdgeInsets.all(4),
                  alignment: Alignment.topCenter,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 10,
                        child: TextFormField(
                          style: TextStyle(fontSize: 18),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.only(top: 13),
                            prefixIcon: Icon(
                              Icons.menu,
                              size: 25,
                            ),
                            hintText: 'Telusuri dalam email',
                            hintStyle: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Center(
                            child: CircleAvatar(
                              radius: 24.0,
                              backgroundImage: NetworkImage(
                                "https://lh3.googleusercontent.com/fife/ABSRlIoIsW1qGZwowIikK7zSG95_--QfGweUqAginSm7Ho6R6_QRnC-tAd-W42hUfQ6cCJ4hngtSwKqvaEm1N4dKZRGlj-8dZnDsFfrb7J1gYogWTvCThPduM_OMQK6jE_kk0jwrTRpWa0FGoWiXB-NLJtC5ull31rWeklHxKVPcjgUX-ePFFpeq7W0wf6ZwjEt0RV37M1OJNLIvaNqgClQayaVOVSSDMxkCrzk1twLFVIaDLrHsoH9y1Q9CWkcs--zOj6fppCOPfM21M7t5sJ9kVns0KvqYHKso_bb8p-a97rKWNFVKimNqcsv5qhc48F5uSopufTVPlJkYeZtd4VunXH6fGHjCHrBnrStcrW_0Z3ibWMwsITC5ij548PMEfqRvuWWTV9z12Gs1tfPLLtAQzC49SbRXR0QoEKHJ3y9EIqum01ND50jeK3sKKJorq34r6RRt8XNiHjDEup0uXlyy3HUf5-tDJdxnwnLY8RTacM6afplcIjaL0IqSVtRggc6S6oipLdBdpquaNSDVsbx2eUPUuVE59DRg8wbDQ8rP-TDf-7NR1_bMxNiacXQPaW_S1J8hg8CFLylWVSeb8q_tVg13fjclDV2EhFdGD0o47PspmOGdcpbmyUdOVEdTlgDjTVEJw1miEDxCqNVmpq8g8cCxJx20A-yam7cJvYhEn9hAdfAY_9-tP8xNf0SCep8jleRFdizHOB5oEfMaOINJBGIJ-vW8LVH5-WkWrynxZxo5PBM=s83-c",
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                color: Colors.amber[colorCodes[index]],
                child: Center(child: Text('Entry ${entries[index]}')),
              );
            }),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white60,
          elevation: 8,
          onPressed: () {},
          child: Icon(
            Icons.maps_ugc_outlined,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
