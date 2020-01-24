import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';

class EDataItem extends StatelessWidget {
  final title;
  String image;
  final rate;
  final tap;
  EDataItem(
      {Key key,
      @required this.title,
      @required this.image,
      @required this.rate,
      @required this.tap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Stack(children: <Widget>[
        Container(
          height: 260.0,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(3.0, 0.0, 3.0, 0.0),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 185.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(image), fit: BoxFit.fill)),
                ),
              ),
              Marquee(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 50,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.amberAccent,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  rate,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
