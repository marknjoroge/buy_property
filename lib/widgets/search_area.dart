import 'package:flutter/material.dart';

class SearchArea extends StatefulWidget {
  @override
  _SearchAreaState createState() => _SearchAreaState();
}

class _SearchAreaState extends State<SearchArea> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          child: searchBar(null, null, null),
        ),
        Container(
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.green,
          ),
          child: IconButton(
            onPressed: () {
              bottomModal(context);
            },
            icon: Icon(
              Icons.filter_list,
            ),
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  TextField searchBar(Color? _color, String? _text, Icon? _icon) {
    _icon == null ? Icon(Icons.search) : _icon;
    return TextField(
      cursorColor: Colors.black54,
      cursorHeight: 18,
      cursorWidth: 5,
      decoration: InputDecoration(
        filled: true,
        fillColor: _color == null ? Colors.white : _color,
        prefixIcon: _icon,
        hintText: 'Search $_text',
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Future<void> bottomModal(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          height: 700,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Center(
            child: Stack(
              children: [
                Positioned(
                  top: 15,
                  right: 0,
                  left: 0,
                  child: Center(
                    child: Container(
                      height: 3,
                      width: 20,
                      color: Colors.black54,
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 0,
                  left: 0,
                  child: Center(
                    child: Text(
                      'Filter',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                    child: searchBar(
                      Colors.grey[200],
                      'Search location',
                      Icon(Icons.pin_drop),
                    ),
                  ),
                ),
                Positioned(
                  top: 130,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        h3Title('Property types'),
                        // ListView(
                        //   scrollDirection: Axis.horizontal,
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Text h3Title(String title) {
    return Text(
      '$title',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
