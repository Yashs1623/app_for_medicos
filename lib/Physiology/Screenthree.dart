import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'physiology_pdfs.dart';
import 'physiology_videos.dart';

class Screenthree extends StatefulWidget {
  @override
  _ScreenthreeState createState() => _ScreenthreeState();
}

class _ScreenthreeState extends State<Screenthree> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    PhysiologyPdfs(),
    PhysiologyVideos(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        centerTitle: true,
        elevation: 20,
        title: const Text(
          'Physiology',
          style: TextStyle(
            fontFamily: 'SansitaSwashed',
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: GNav(
            backgroundColor: Color(0xFF0A0E21),
            rippleColor: Colors.grey,
            hoverColor: Colors.grey[500],
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey[100],
            color: Colors.black,
            tabs: [
              GButton(
                icon: LineIcons.book,
                iconColor: Colors.white,
                text: 'Books',
                textStyle: TextStyle(
                  color: Color(0xFFEB1555),
                  fontSize: 20.0,
                  fontFamily: 'SansitaSwashed',
                ),
              ),
              GButton(
                icon: LineIcons.videoFile,
                iconColor: Colors.white,
                text: 'Videos',
                textStyle: TextStyle(
                  color: Color(0xFFEB1555),
                  fontSize: 20.0,
                  fontFamily: 'SansitaSwashed',
                ),
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(
                () {
                  _selectedIndex = index;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
