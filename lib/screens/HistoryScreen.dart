import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';
import 'package:ride_app/Components/Drawer.dart';
import 'package:url_launcher/url_launcher.dart';
import './OrderScreen.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  void _launchMapsUrl(double lat, double lon) async {
    // final url = 'https://www.google.com/maps/search/?api=1&query=$lat,$lon';
    // final url =  'https://www.google.com/maps/dir/33.6494592,73.0988544/33.6484197,73.0293627/&travelmode=driving&dir_action=navigate';
    final url = 'https://maps.apple.com/?q=33.6494592,73.0988544';
    // 'http://maps.apple.com/maps/dir/33.6494592,73.0988544/33.6484197,73.0293627/@33.6646603,72.9841701,12z/data=!3m1!4b1';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget buildBody(BuildContext context) {
    var top = (MediaQuery.of(context).size.height * 0.02);
    // return Container(
    //   margin: new EdgeInsets.only(top: top),
    //   child: FutureBuilder(
    //     // future: storage.ready,
    //     builder: (BuildContext context, AsyncSnapshot snapshot) {
    //       if (snapshot.data == null) {
    //         return Center(
    //           child: CircularProgressIndicator(),
    //         );
    //       }

    return ListView.builder(
        itemCount: 2,
        shrinkWrap: true,
        itemBuilder: (ctx, item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: (ListTile(
                onTap: () => {
                  // Navigator.push(context,
                      // MaterialPageRoute(builder: (context) => Order()))
                },
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.brightness_1,
                    size: 12,
                    color: Colors.black,
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text("10 PM - Pick up"),
                ),
                subtitle: Column(
                  children: <Widget>[
                    Text("House # 156, street : 17, Islamabad, Pakistan"),
                    Divider(
                      height: 15.0,
                      color: Colors.black,
                    ),
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.done, size: 25, color: Colors.greenAccent),
                ),
              )),
            ));

    //     },
    //   ),
    // );
  }

  Widget mainBody() {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.bottomCenter,
          height: (MediaQuery.of(context).size.height / 3.5),
          child: Icon(
            Icons.tag_faces,
            size: 70,
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: (MediaQuery.of(context).size.height / 7.5),
          child: Text(
            "All Clear !",
            style: TextStyle(
              fontSize: (MediaQuery.of(context).size.height * 0.06),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          height: (MediaQuery.of(context).size.height / 7.5),
          child: Text(
            "Look like you have no tasks",
            style: TextStyle(
              fontSize: (MediaQuery.of(context).size.height * 0.03),
            ),
          ),
        ),
        FlatButton(
            onPressed: () => _launchMapsUrl(33.6844, 73.0479),
            child: Text("Open Maps"))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromRGBO(1, 30, 31, .9),
        appBar: AppBar(
          title: Text('History'),
        ),
        body: buildBody(context), //  mainBody(),
        drawer: DrawerComponent());
  }
}



