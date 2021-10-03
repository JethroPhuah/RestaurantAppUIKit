import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_ui_kit/screens/home.dart';
import 'package:restaurant_ui_kit/screens/main_screen.dart';
import 'package:restaurant_ui_kit/screens/search.dart';
import 'package:restaurant_ui_kit/screens/notifications.dart';
import 'package:restaurant_ui_kit/util/foods.dart';
import 'package:restaurant_ui_kit/widgets/badge.dart';
import 'package:restaurant_ui_kit/widgets/grid_product.dart';


class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // leadingWidth: 500,
      //   leading:
      //   Row(
      //     children: [
      //       IconButton(
      //           icon: const Icon(Icons.my_location, color: Colors.red,),
      //           onPressed: () {
      //
      //           },
      //       ),
      //     Expanded(
      //       child: Container(
      //             child: Text("current location",
      //               style: TextStyle(
      //                 color: Colors.black,
      //               ),
      //             ),
      //         )
      //       ),
      //     ],
      //   ),
      //
      //   backgroundColor: Colors.white,
      //   automaticallyImplyLeading: false,
      //   centerTitle: true,
      //   title: Text(
      //     "Hangout",
      //     style: TextStyle(
      //       color: Colors.black,
      //     ),
      //
      //   ),
      //   elevation: 0.0,
      //
      // ),

      body: Padding(

        padding: EdgeInsets.fromLTRB(10.0,0,10.0,0),
        child: ListView(
            children: [
              Divider(),
              _stack("Food", "assets/food5.jpeg", context, "1"), Divider(),
              _stack("Event", "assets/food6.jpeg", context, "2"), Divider(),
              _stack("Places of Interest", "assets/food7.jpeg", context, "3"), Divider(),
              _stack("MeetUp", "assets/food8.jpeg", context, "4"), Divider(),

            ]
        )

      ),

    );
  }
}

ListTile _tile(String title, String subtitle, IconData icon) {
  return ListTile(
      leading: Container(
        height: 1000,
        width: 80,
        child: CircleAvatar(
        backgroundImage: AssetImage(
        'assets/food1.jpeg'),
        ),
      ),
      title: Text('some text'),
      subtitle:
      Text('some text.'),
  );
}

GestureDetector _stack(String title, String imgPath, BuildContext context, String test) {
  return GestureDetector(
    // onTap: (){
      onTap: () {
        print("Container clicked");
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => Home()));
      },
  child: Stack(

      children: <Widget>[
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgPath),
                fit: BoxFit.fill,
            ),
          ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
  ]


  )
  );
}
