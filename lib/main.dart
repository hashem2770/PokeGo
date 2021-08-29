import 'package:flutter/material.dart';
import 'package:pokego/details_Page.dart';
import 'pokeModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Poke Go'),
      ),
      body: GridView.builder(
        itemCount: PokeModel.samples.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(12.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DetailsPage(
                      img: PokeModel.samples[index].picPath,
                      name: PokeModel.samples[index].name,
                      height: PokeModel.samples[index].height,
                      weight: PokeModel.samples[index].weight,
                      type: PokeModel.samples[index].type,
                    );
                  }),
                );
              },
              child: Card(
                elevation: 4.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 7,
                      child: Container(
                        padding: EdgeInsets.only(top: 12.0),
                        child: Image(
                          image: AssetImage(PokeModel.samples[index].picPath,),
                          fit: BoxFit.cover ,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            PokeModel.samples[index].name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.ac_unit_rounded),

      ),
    );
  }
}
