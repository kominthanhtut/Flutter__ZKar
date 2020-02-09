//import 'dart:html';

import 'package:flutter/material.dart' as img;
import 'package:flutter/material.dart';
import 'package:flutter_ebox/model/seriesresponse.dart';
import 'package:flutter_ebox/ui/ebox_details_header.dart';
import 'package:flutter_ebox/ui/story_line.dart';

class SeriesDetails extends StatefulWidget {
  final Datum model;
  SeriesDetails({Key key, @required this.model});

  @override
  _SeriesDetailsState createState() => _SeriesDetailsState();
}

class _SeriesDetailsState extends State<SeriesDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: img.Stack(
          children: <Widget>[
            img.Container(
                height: 280,
                child: img.Image(
                  image: NetworkImage(widget.model.cover),
                  fit: BoxFit.fill,
                )),
            SingleChildScrollView(
              child: img.Container(
                color: Colors.white30,
                child: img.Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: img.Column(
                    children: <Widget>[
                      EboxDetailsHeader(
                        model: widget.model,
                      ),
                      img.Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: img.Container(
                          color: img.Colors.black54,
                          child: img.TabBar(
                            tabs: [
                              Tab(
                                text: "About",
                              ),
                              Tab(
                                text: "Series",
                              ),
                            ],
                          ),
                        ),
                      ),
                      img.Padding(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                          right: 10,
                        ),
                        child: img.Container(
                            height:  MediaQuery.of(context).size.height,
                            color: Colors.black54,
                            child: img.Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: img.TabBarView(
                                  children: [
                                   new Storyline(widget.model.content),
                                    Icon(Icons.directions_transit),
                                   
                                  ],
                                )
                                //  child: new Storyline(model.content),
                                )
                                ),
                      ),
               
                      
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//  body: SizedBox.expand(
//                       child: PageView(
//                         controller: _pageController,
//                         onPageChanged: (index) {
//                           setState(() => _currentIndex = index);
//                         },
//                         children: <Widget>[
//                           HomePage(),
//                           MoviePage(),
//                           SeriesPage(),
//                           AboutPage(),
//                         ],
//                       ),
//                     ),
