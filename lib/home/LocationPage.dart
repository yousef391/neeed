
import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  int start = 50;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/map.png'), fit: BoxFit.cover),
        ),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                  ),
                  height: 250,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SizedBox(
                        height: 0,
                      ),
                      Text(
                        'Select Location',
                        style: TextStyle(
                            fontFamily: 'Urbanist',
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: '  Enter your adress...',
                              prefixIcon: Icon(Icons.location_on,
                              color: Color(0xff0097b2),),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff0097b2))
                              ),
                              ),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            start.toString(),
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 5.00,
                          ),
                          Text(
                            'KM',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 7.00),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 15.00),
                        ),
                        child: Slider(
                            value: start.toDouble(),
                            min: 0.0,
                            max: 100.0,
                            activeColor: Color(0xff0097b2),
                            onChanged: (double newValue) {
                              setState(() {
                                start = newValue.round();
                              });
                            }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Save',
                              style: TextStyle(fontSize: 15),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF0097B2),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.my_location,
                              size: 20,
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF0097B2),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 00,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}