import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _number = 0;
  bool _lock = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text('Digital Tasbih'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('images/display.png'))),
              child: Center(
                child: Text(
                  _number.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _lock = !_lock; 
                    });
                  },
                  child: Icon(
                    _lock ? Icons.lock : Icons.lock_open,
                    size: 30,
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (!_lock) {
                      setState(() {
                        _number++;
                      });
                    }
                  },
                  child: Image.asset(
                    'images/dry-clean.png',
                    height: 60,
                    width: 60,
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (!_lock) {
                      setState(() {
                        _number = 0; 
                      });
                    }
                  },
                  child: Icon(
                    Icons.repeat,
                    size: 30,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
