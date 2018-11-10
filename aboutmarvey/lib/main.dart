import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: About(),
      debugShowCheckedModeBanner: false,
    ));

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        centerTitle: true,
      ),
      body: about(),
    );
  }

  Widget about() {
    double uniWidth = MediaQuery.of(context).size.width;
    double uniHeight = MediaQuery.of(context).size.height;

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: uniHeight / 25)),
          Center(
              child: Text(
            'About',
            style:
                TextStyle(fontSize: uniWidth / 20, fontWeight: FontWeight.bold),
          )),
          Padding(padding: EdgeInsets.only(top: uniHeight / 50)),

          //Making the parent a padding to avoid overflowing of text.
          Padding(
            padding: EdgeInsets.only(left: uniWidth / 20, right: uniWidth / 20),
            child: Text('BIO HERE. I am Pratik. MUJ. MARVEL. BLA BLA ajdasjkdba'
                'sjkbasdkjasddjhasbjhdagjkhdgajksdajkhdkjashdkj'
                'ahdkjahksdhaskjhdkajhdkjashdkjh'),
          ),
          Padding(padding: EdgeInsets.only(top: uniHeight / 20)),
          Center(child: Text('Images', style: TextStyle(fontSize: uniWidth/20, fontWeight: FontWeight.bold),)),
          Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: uniWidth/20)),
                      Container(
                        height: uniHeight / 5,
                        width: uniWidth / 3,
                        child: Image(
                          image: AssetImage('assets/Pratik.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: uniWidth/10)),
                      Container(
                        height: uniHeight / 5,
                        width: uniWidth / 3,
                        child: Image(
                          image: AssetImage('assets/Pratik.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: uniWidth/10)),
                      Container(
                        height: uniHeight / 5,
                        width: uniWidth / 3,
                        child: Image(
                          image: AssetImage('assets/Pratik.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: uniWidth/20)),
                    Container(
                      height: uniHeight / 5,
                      width: uniWidth / 3,
                      child: Image(
                        image: AssetImage('assets/Pratik.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: uniWidth/10)),
                    Container(
                      height: uniHeight / 5,
                      width: uniWidth / 3,
                      child: Image(
                        image: AssetImage('assets/Pratik.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: uniWidth/10)),
                    Container(
                      height: uniHeight / 5,
                      width: uniWidth / 3,
                      child: Image(
                        image: AssetImage('assets/Pratik.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
