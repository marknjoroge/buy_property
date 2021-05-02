import 'package:buy_property/widgets/search_area.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hello!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'James Butler',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 34,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/james.jpg'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: SearchArea(),
            ),
            Container(
              height: 130,
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  propertyTypes('3sq.jpg', true),
                  propertyTypes('skycrapper.png', false),
                  propertyTypes('flat.png', false),
                  propertyTypes('house.png', false),
                  propertyTypes('shouse.png', false),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'All Properties',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'See All',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                  propertyPreview('apart1.jpg', 'Fransisco Apartment', 'San Fransisco Carlifornia', '\$1500'),
                  propertyPreview('apart2.jpg', 'NY Apartment', 'New York', '\$1200'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget propertyPreview(String _property, String _propName,
      String _propLocation, String _propPrice) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 3),
      child: Container(
        height: 315,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                height: 200,
                width: 400,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image(
                      image: AssetImage('assets/property/$_property'),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 195,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$_propName',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.black38,
                          size: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '$_propLocation',
                          style: TextStyle(color: Colors.black38),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '$_propPrice',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 33),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 177,
              right: 20,
              child: IconButton(
                icon: Icon(Icons.bookmark_add_rounded),
                color: Colors.redAccent,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget propertyTypes(String _image, bool _isSelected) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        width: 80,
        height: 80,
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
                image: AssetImage('assets/icons/$_image'),
                height: 40,
                width: 40,
              ),
            ),
            Positioned(
              bottom: -2,
              right: 0,
              left: 0,
              child: Center(
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: _isSelected ? Colors.blue : Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}