import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp(MaterialApp(home: MyApp(),));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text('URL Launcher'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              launch('tel: 0176639800 ');
            }, child: Text('Call')),
            ElevatedButton(onPressed: (){
              launch('sms: 017789088089');
            }, child: Text('SMS')),
            ElevatedButton(onPressed: (){
              launch('https://www.google.com/maps/place/Cumilla+Victoria+Government+College/@23.4597512,91.1814044,18zadata=!4m12!1m6!3m5!1s0x37537d05fcfe94db:0x1d9bc8f29755e8e1!2sCumilla+Victoria+Government+College!8m2!3d23.45967!4d91.1824773!3m4!1s0x37537d05fcfe94db:0x1d9bc8f29755e8e1!8m2!3d23.45967!4d91.1824773');
            }, child: Text('Google Maps')),
            ElevatedButton(onPressed: (){
              launch('https://mail.google.com/mail/u/0/#inbox');
            }, child: Text('Gmail')),
          ],
        ),
      ),
    );
  }
}
