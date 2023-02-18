// ignore_for_file: non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_radio/flutter_radio.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //Default
  String image = "images/nrj.png";
  String url = "https://scdn.nrjaudio.fm/adwz2/fr/30001/mp3_128.mp3";
  //NRJ
  String image_nrj = "images/nrj.png";
  String circle_nrj = "images/circle_nrj.png";
  String url_nrj = "https://scdn.nrjaudio.fm/adwz2/fr/30001/mp3_128.mp3";
  //FUN RADIO
  String image_fun = "images/fun.png";
  String circle_fun = "images/circle_fun.png";
  String url_fun = "https://streaming.radio.funradio.fr/fun-1-44-128?listen=webCwsBCggNCQgLDQUGBAcGBg";
  //SKYROCK
  String image_skyrock = "images/skyrock.png";
  String circle_skyrock = "images/circle_skyrock.png";
  String url_skyrock = "https://icecast.skyrock.net/s/parisidf_aac_128k";
  //EUROPE 2
  String image_europe2 = "images/europe2.png";
  String circle_europe2 = "images/circle_europe2.png";
  String url_europe2 = "https://europe2.lmn.fm/europe2.mp3";
  //MOUV
  String image_mouv = "images/mouv.png";
  String circle_mouv = "images/circle_mouv.png";
  String url_mouv = "https://direct.mouv.fr/live/mouv-midfi.mp3";
  //RFM
  String image_rfm = "images/rfm.png";
  String circle_rfm = "images/circle_rfm.png";
  String url_rfm = "https://stream.rfm.fr/rfm.mp3";

  bool check = true;
  Image image_radio(String circle) {
    return Image.asset(
      '$circle',
      height: 80.0,
    );
  }

  void play(String urlRadio, String imageRadio) {
    url = urlRadio; //url_radio
    print('$url');
    image = imageRadio; //image_radio
    print('$image');
    FlutterRadio.play(url: url);
    check = false;
  }

  GestureDetector bouton_client(String url, String image, String circle) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            play(url, image); //url_radio image_radio
          },
        );
      },
      child: image_radio(circle), // circle_radio
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[900],
            title: Image.asset(
              'images/aurel.png',
              height: 35,
            ),
          ),
          body: Container(
            color: Colors.grey[900],
            child: new Column(
              children: <Widget>[
                SizedBox(
                  height: 25.0,
                ),
                Expanded(
                  flex: 3,
                  //margin: EdgeInsets.fromLTRB(50.0, 10, 50.0, 10.0),
                  child: Container(
                    color: Colors.white,
                    child: Image.asset('$image'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: IconButton(
                      onPressed: () {
                        FlutterRadio.playOrPause(url: url);
                        setState(
                          () {
                            if (check) {
                              check = false;
                            } else {
                              check = true;
                            }
                          },
                        );
                      },
                      icon: Icon(check
                          ? Icons.play_circle_filled
                          : Icons.pause_circle_filled),
                      color: Colors.white,
                      iconSize: 85,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Expanded(
                  flex: 1,
                  child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      bouton_client(url_nrj, image_nrj, circle_nrj),
                      bouton_client(
                          url_fun, image_fun, circle_fun),
                      bouton_client(
                          url_skyrock, image_skyrock, circle_skyrock),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.5,
                ),
                Expanded(
                  flex: 1,
                  child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      bouton_client(url_europe2, image_europe2, circle_europe2),
                      bouton_client(url_mouv, image_mouv, circle_mouv),
                      bouton_client(
                          url_rfm, image_rfm, circle_rfm),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
              ],
            ),
          ),
        ));
  }
}
