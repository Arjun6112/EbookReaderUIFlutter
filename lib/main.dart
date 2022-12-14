import 'package:flutter/material.dart';
import 'package:flutter_book_reader/constants.dart';
import 'package:flutter_book_reader/screens/home_screen.dart';
import 'package:flutter_book_reader/widgets/rounded_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: kBlackColor)),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/BitMap.png'),
                  fit: BoxFit.fill)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                text: TextSpan(
                    style: Theme.of(context).textTheme.headline4,
                    children: const [
                      TextSpan(
                        text: 'flamin',
                      ),
                      TextSpan(
                          text: "go",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: RoundedButton(
                    text: "start reading",
                    fontSize: 20,
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }));
                    },
                  ))
            ],
          )),
    );
  }
}
