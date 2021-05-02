import 'package:flutter/material.dart';

import 'constants.dart';

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
          child: SearchBar(color: null, text: 'Search', icon: null),
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

  Future<void> bottomModal(BuildContext context) {
    double _currentSliderValue = 20;
    double _currentSliderVal = 80;
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
                    child: SearchBar(
                        color: Colors.grey[200],
                        text: 'Search location',
                        icon: Icon(Icons.pin_drop)),
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
                        H3Title(title: 'Property types'),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: ButtonBar(
                      mainAxisSize: MainAxisSize
                          .min, // this will take space as minimum as posible(to center)
                      children: <Widget>[
                        new ElevatedButton(
                          child: new Text(
                            'Apartments',
                            style: TextStyle(color: Colors.white, fontSize: 19),
                          ),
                          onPressed: null,
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue),
                              elevation: MaterialStateProperty.all(5)),
                        ),
                        new ElevatedButton(
                          child: new Text(
                            'Land',
                            style: TextStyle(color: Colors.black, fontSize: 19),
                          ),
                          onPressed: null,
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              elevation: MaterialStateProperty.all(5)),
                        ),
                        new ElevatedButton(
                          child: new Text(
                            'Commercial',
                            style: TextStyle(color: Colors.black, fontSize: 19),
                          ),
                          onPressed: null,
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              elevation: MaterialStateProperty.all(5)),
                        ),
                        new ElevatedButton(
                          child: new Text(
                            'villa',
                            style: TextStyle(color: Colors.black, fontSize: 19),
                          ),
                          onPressed: null,
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              elevation: MaterialStateProperty.all(5)),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 230,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        H3Title(title: 'Property Size'),
                        Text(
                          'Up to 1000 sqft',
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 260,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Slider(
                      value: _currentSliderValue,
                      min: 0,
                      max: 100,
                      divisions: 100,
                      label: null,
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: 310,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: H3Title(title: 'Property type'),
                  ),
                ),
                Positioned(
                  top: 340,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Slider(
                      value: _currentSliderVal,
                      min: 0,
                      max: 100,
                      divisions: 100,
                      label: null,
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderVal = value;
                        });
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: 400,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: null,
                          style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(
                                Size(
                                  MediaQuery.of(context).size.width * 0.35,
                                  40,
                                ),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              elevation: MaterialStateProperty.all(3)),
                          child: Text(
                            'Reset',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: null,
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),)),
                            minimumSize: MaterialStateProperty.all(
                              Size(
                                MediaQuery.of(context).size.width * 0.45,
                                40,
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                          ),
                          child: Text(
                            'Check Availability',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
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
}

class SearchBar extends StatelessWidget {
  SearchBar({
    Key? key,
    required Color? color,
    required String? text,
    required Icon? icon,
  })  : _color = color,
        _text = text,
        _icon = icon,
        super(key: key);

  final Color? _color;
  final String? _text;
  Icon? _icon;

  @override
  Widget build(BuildContext context) {
    _icon = _icon == null ? Icon(Icons.search) : _icon;
    return TextField(
      cursorColor: Colors.black54,
      cursorHeight: 18,
      cursorWidth: 5,
      decoration: InputDecoration(
        filled: true,
        fillColor: _color == null ? Colors.white : _color,
        prefixIcon: _icon,
        hintText: '$_text',
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
