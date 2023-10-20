import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.facebook.com/phillippejames.catubig/');

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFAFB42B),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('image/iconp.jpg'),
                radius: 60.0,
              ),
              Text(
                'Phillippe Catubig',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'App Developer',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 150.0,
                child: Divider(
                  thickness: 1.2,
                  color: Colors.white,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Color(0xFFAFB42B),
                    ),
                    title: Text(
                      '+63 960 253 6855',
                    ),
                  ),
                )
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
                  child: Padding(
                    padding: EdgeInsets.all(2.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Color(0xFFAFB42B),
                      ),
                      title: Text(
                        'cpc0103@dlsud.edu.ph',
                      ),
                    ),
                  )
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
                  child: Padding(
                    padding: EdgeInsets.all(2.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Color(0xFFAFB42B),
                      ),
                      title: Text(
                        'PASCAM 2, Gen.Trias, Cavite',
                      ),
                    ),
                  )
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
                  child: Padding(
                    padding: EdgeInsets.all(2.0),

                    child: ListTile(
                      leading: Icon(
                        Icons.account_circle,
                        color: Color(0xFFAFB42B),
                        ),
                      title: Text(
                        '@phillippejames.catubig'
                       ),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: Color (0xFFAFB42B),
                      ),
                      onTap: () {
                        launchUrl(_url);
                       },
                      ),
                    ),
                  )
            ],
          )
        )
      ),
    );
  }
}
