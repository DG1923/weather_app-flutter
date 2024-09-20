import 'package:flutter/material.dart';
import 'package:weather_app_2/Utillities/constants.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  final TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  controller: _controller,
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                  decoration: kInputDecoration.copyWith(
                    suffixIcon: InkWell(
                      onTap: (){
                        _controller.clear();
                      },
                      child: Icon(Icons.clear),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Here is input text : ${_controller.text}");
                  Navigator.pop(context,_controller.text);
                },
                child: Text(
                  'Get Weather',
                  style: kButtonTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
