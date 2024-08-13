import 'package:flutter/material.dart';

void main() {
  runApp(WaterLevelApp());
}

class WaterLevelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water Level Monitor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WaterLevelHomePage(),
    );
  }
}

class WaterLevelHomePage extends StatefulWidget {
  @override
  _WaterLevelHomePageState createState() => _WaterLevelHomePageState();
}

class _WaterLevelHomePageState extends State<WaterLevelHomePage> {
  double waterLevel = 0.0; // Placeholder for water level percentage

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Water Level Monitor'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Water Level',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200,  // Increased width
              height: 200, // Increased height
              child: CircularProgressIndicator(
                value: waterLevel,
                strokeWidth: 15,  // Increased stroke width
                backgroundColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 20),
            Text(
              '${(waterLevel * 100).toStringAsFixed(0)}%',
              style: TextStyle(fontSize: 24),  // Increased font size
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateWaterLevel,
        tooltip: 'Update',
        child: Icon(Icons.refresh),
      ),
    );
  }

  void _updateWaterLevel() {
    // This function will update the water level.
    // Replace this with the actual logic to get data from ESP32.
    setState(() {
      waterLevel = 0.7; // Placeholder value (70% water level)
    });
  }
}
