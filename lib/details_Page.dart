import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  String? img;
  String? name;
  String? type;
  double? weight;
  double? height;

  DetailsPage({this.img, this.name, this.type, this.weight, this.height});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(name.toString()),
      ),
      body: Stack(
        children: [
          Positioned(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width - 20,
            top: 100.0,
            left: 10.0,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    name.toString(),
                    style:
                        TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                  ),
                  Text('Height : $height'),
                  Text('Weight : $weight'),
                  Text(
                    'Type',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  FilterChip(
                    padding: EdgeInsets.all(10.0),
                    label: Text('$type'),
                    onSelected: (b) {},
                    backgroundColor: Colors.amber,
                  ),
                  Text('Weakness '),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FilterChip(
                        padding: EdgeInsets.all(10.0),
                        label: Text(
                          'Guns',
                          style: TextStyle(color: Colors.white),
                        ),
                        onSelected: (b) {},
                        backgroundColor: Colors.redAccent,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      FilterChip(
                        padding: EdgeInsets.all(10.0),
                        label: Text(
                          'Sneaks',
                          style: TextStyle(color: Colors.white),
                        ),
                        onSelected: (b) {},
                        backgroundColor: Colors.redAccent,
                      ),
                    ],
                  ),
                  Text('Next Elevation '),
                  FilterChip(
                    padding: EdgeInsets.all(10.0),
                    label: Text(
                      'Big $name',
                      style: TextStyle(color: Colors.white),
                    ),
                    onSelected: (b) {},
                    backgroundColor: Colors.green,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              // decoration: BoxDecoration(
              //   image: DecorationImage(image: AssetImage(img.toString()))
              // ),
              height: 120.0,
              width: 120.0,
              child: Image(
                image: AssetImage(img.toString()),
              ),
            ),
          )
        ],
      ),
    );
  }
}
