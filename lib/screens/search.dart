import 'package:buy_property/screens/main_page.dart';
import 'package:buy_property/widgets/constants.dart';
import 'package:buy_property/widgets/search_area.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
              child: SearchArea(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: H3Title(title: 'Matched Property'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    MiniPropView(
                      propImgLocation: 'assets/property/sub1.jpg',
                      propName: 'Peace Apartments',
                      propLocation: 'San Fransisco',
                    ),
                    MiniPropView(
                      propImgLocation: 'assets/property/sub2.jpg',
                      propName: 'Wooden Ville',
                      propLocation: 'San Fransisco',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: H3Title(title: 'Company'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    propertyBrokers(
                        'assets/brokers/company.png', true, 'harder'),
                    propertyBrokers(
                        'assets/brokers/harder.png', false, 'some brokers'),
                    propertyBrokers(
                        'assets/brokers/horizon.jpg', false, 'horizon homes'),
                    propertyBrokers(
                        'assets/brokers/structure.jpg', false, 'future group'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: comment('person1.jpg', 'James Orengo'),
            ),
          ],
        ),
      ),
    );
  }

  Widget propertyBrokers(String _image, bool _isSelected, String name) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 0,
              right: 0,
              child: Image(
                image: AssetImage('$_image'),
                height: 40,
                width: 40,
              ),
            ),
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Center(
                  child: Text(
                '$name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Center(
                  child: Text(
                'Broker',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )),
            ),
            Positioned(
              bottom: -2,
              right: 0,
              left: 0,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: _isSelected ? Colors.blue : Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget comment(String image, String name) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Container(
        width: 400,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/people/$image'),
                  radius: 25,
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$name',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Broker',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla consectetur nibh vestibulum ullamcorper feugiat. Maecenas finibus suscipit mauris, et feugiat purus vehicula id. Phasellus ac purus vitae est faucibus porttitor. Proin id nunc at arcu porta tincidunt nec a arcu. Suspendisse pulvinar congue tristique. Nunc ut grav',
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

class MiniPropView extends StatelessWidget {
  MiniPropView({
    Key? key,
    required String propImgLocation,
    required String propName,
    required String propLocation,
  })  : _propLocation = propLocation,
        _propName = propName,
        _propImgLocation = propImgLocation,
        super(key: key);

  String? _propLocation;
  String? _propName;
  String? _propImgLocation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 320,
        height: 220,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image(
                    image: AssetImage('$_propImgLocation'),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 20,
              right: 0,
              child: Text(
                '$_propName',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_pin,
                    color: Colors.white,
                  ),
                  Text(
                    '$_propLocation',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
