import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';
import 'package:ride_app/Components/Drawer.dart';
import 'package:url_launcher/url_launcher.dart';
import './FinishOrder.dart';
import './HomeScreen.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  void _launchMapsUrl(double lat, double lon) async {
    // final url = 'https://www.google.com/maps/search/?api=1&query=$lat,$lon';
    final url =
        'https://www.google.com/maps/dir/33.6494592,73.0988544/33.6484197,73.0293627/&travelmode=driving&dir_action=navigate';
    // final url = 'https://maps.apple.com/?q=33.6494592,73.0988544';
    // 'http://maps.apple.com/maps/dir/33.6494592,73.0988544/33.6484197,73.0293627/@33.6646603,72.9841701,12z/data=!3m1!4b1';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget buildBody(BuildContext context) {
    return (Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          leading: Icon(Icons.timelapse, color: Colors.black),
          title: Text(
            "10:00 PM - Delivery",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          trailing: Text(
            "Started",
            style: TextStyle(
                color: Colors.blueAccent, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Divider(
          height: 15.0,
          color: Colors.black,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          leading: Icon(Icons.person, color: Colors.black),
          title: Text(
            "User name",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          // trailing: Text("Started"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Divider(
          height: 15.0,
          color: Colors.black,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
            leading: Icon(Icons.add_location, color: Colors.black),
            title: Text("House # 156, street : 17, Islamabad, Pakistan"),
            trailing: IconButton(
                icon:
                    Icon(Icons.directions, color: Colors.blueAccent, size: 35),
                onPressed: () {
                  _launchMapsUrl(null, null);
                })),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Divider(
          height: 15.0,
          color: Colors.black,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          leading: Icon(Icons.info, color: Colors.black),
          title: Text(
            "Take good care of the things",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          // trailing: Text("Started"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Divider(
          height: 15.0,
          color: Colors.black,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          leading: Icon(Icons.restore_page, color: Colors.black),
          title: Text(
            "APR -7786",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          // trailing: Text("Started"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Divider(
          height: 15.0,
          color: Colors.black,
        ),
      ),
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(children: <Widget>[
            Expanded(
                flex: 5,
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Text("Cancel",
                        style:
                            TextStyle(color: Colors.redAccent, fontSize: 22)))),
            Expanded(
                flex: 5,
                child: FlatButton(
                    onPressed: () {
                      _launchMapsUrl(null, null);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FinishOrder()));
                    },
                    child: Text(
                      "Start",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 22),
                    ))),
          ])),
    ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromRGBO(1, 30, 31, .9),
        appBar: AppBar(
          title: Text('APR- 7786'),
        ),
        body: buildBody(context), //  mainBody(),
        drawer: DrawerComponent());
  }
}
