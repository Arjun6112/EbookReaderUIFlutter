// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_book_reader/constants.dart';
import 'package:flutter_book_reader/screens/details_screen.dart';
import 'package:flutter_book_reader/widgets/book_rating.dart';
import 'package:flutter_book_reader/widgets/reading_card_list.dart';
import 'package:flutter_book_reader/widgets/two_sided_rounded_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/main_page_bg.png"),
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fitWidth)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: size.height * .1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: RichText(
                        text: TextSpan(
                      style: Theme.of(context).textTheme.displaySmall,
                      children: const [
                        TextSpan(text: "What are you \nreading"),
                        TextSpan(
                            text: " today?",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    )),
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingList(
                          image: "assets/images/book-1.png",
                          title: "Crushing & Influence",
                          author: "Gary Vee",
                          rating: 4.7,
                          pressDetails: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return DetailsScreen();
                              },
                            ));
                          },
                          pressRead: () {},
                        ),
                        ReadingList(
                          image: "assets/images/book-2.png",
                          title: "Top 10 Business Hacks",
                          author: "Herman Joel",
                          rating: 4.2,
                          pressDetails: () {},
                          pressRead: () {},
                        ),
                        ReadingList(
                          image: "assets/images/book-3.png",
                          title: "How to win friends and influence people",
                          author: "Gary Vee",
                          rating: 4.3,
                          pressDetails: () {},
                          pressRead: () {},
                        ),
                        ReadingList(
                          image: "assets/images/book-2.png",
                          title: "Crushing & Influence",
                          author: "Gary Vee",
                          rating: 4.7,
                          pressDetails: () {},
                          pressRead: () {},
                        ),
                        SizedBox(
                          width: 30,
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                              text: TextSpan(
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                  children: const [
                                TextSpan(text: "Best of the "),
                                TextSpan(
                                    text: " Day",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold))
                              ])),
                          bestOfTheDayCard(size, context),
                          RichText(
                              text: TextSpan(
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                  children: const [
                                TextSpan(text: "Continue "),
                                TextSpan(
                                    text: "Reading....",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold))
                              ])),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 80,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(38.5),
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 10),
                                      blurRadius: 33,
                                      color: Color(0xffD3D3D3).withOpacity(.84))
                                ]),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(38.5),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 30,
                                          right: 20,
                                        ),
                                        child: Row(children: <Widget>[
                                          Expanded(
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const <Widget>[
                                                Text(
                                                  "Top 10 Business Rules",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text("Gary Vee",
                                                    style: TextStyle(
                                                        color: kBlackColor)),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Text(
                                                    "Chapter 7 of 10",
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: kBlackColor),
                                                  ),
                                                ),
                                                SizedBox(height: 5)
                                              ])),
                                          Image.asset(
                                            "assets/images/book-2.png",
                                            width: 55,
                                          )
                                        ]),
                                      ),
                                    ),
                                    Container(
                                      height: 7,
                                      width: size.width * 0.65,
                                      decoration: BoxDecoration(
                                          color: kProgressIndicator,
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                    )
                                  ]),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            SizedBox(height: 40)
          ],
        ),
      ),
    );
  }
}

Container bestOfTheDayCard(Size size, BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20),
    width: double.infinity,
    height: 245,
    child: Stack(
      children: <Widget>[
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.only(
              left: 24,
              top: 24,
              right: size.width * .35,
            ),
            height: 230,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFEAEAEA).withOpacity(.45),
              borderRadius: BorderRadius.circular(29),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text(
                    "New York Time Best For 11th March 2020",
                    style: TextStyle(
                      fontSize: 9,
                      color: kLightBlackColor,
                    ),
                  ),
                ),
                Text(
                  "How To Win \nFriends &  Influence",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  "Gary Venchuk",
                  style: TextStyle(color: kLightBlackColor),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10.0),
                  child: Row(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: BookRating(score: 4.9),
                      ),
                      Expanded(
                        child: Text(
                          "When the earth was flat and everyone wanted to win the game of the best and people….",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Image.asset(
            "assets/images/book-3.png",
            width: size.width * .37,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: SizedBox(
            height: 40,
            width: size.width * .3,
            child: TwoSidedRoundedButton(
              text: "Read",
              radius: 24,
              press: () {},
            ),
          ),
        ),
      ],
    ),
  );
}
