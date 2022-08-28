import 'package:flutter/material.dart';
import 'package:flutter_book_reader/constants.dart';
import 'package:flutter_book_reader/widgets/book_rating.dart';
import 'package:flutter_book_reader/widgets/two_sided_rounded_button.dart';

class ReadingList extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final double rating;
  final VoidCallback pressDetails;
  final VoidCallback pressRead;
  const ReadingList({
    Key? key,
    required this.image,
    required this.title,
    required this.author,
    required this.rating,
    required this.pressDetails,
    required this.pressRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 202,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                height: 221,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 33,
                        color: kShadowColor)
                  ],
                )),
          ),
          Image.asset(
            image,
            width: 150,
          ),
          Positioned(
              top: 35,
              right: 10,
              child: Column(
                children: <Widget>[
                  IconButton(
                      onPressed: null, icon: Icon(Icons.favorite_border)),
                  BookRating(
                    score: 4.7,
                  ),
                ],
              )),
          Positioned(
              top: 160,
              child: Container(
                height: 85,
                width: 202,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: RichText(
                          maxLines: 2,
                          text: TextSpan(
                              style: TextStyle(color: kBlackColor),
                              children: [
                                TextSpan(
                                    text: "$title\n",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: author,
                                    style: TextStyle(color: kLightBlackColor))
                              ])),
                    ),
                    Spacer(),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: pressDetails,
                          child: Container(
                            width: 101,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.center,
                            child: Text("Details"),
                          ),
                        ),
                        Expanded(
                          child: TwoSidedRoundedButton(
                              text: "Read", press: pressRead),
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
