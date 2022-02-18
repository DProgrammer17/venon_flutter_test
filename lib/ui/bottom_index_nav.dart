import 'package:flutter/material.dart';
import 'package:venon_flutter_test/customs/search_click_listner.dart';
import 'package:venon_flutter_test/ui/analytics/analytics.dart';
import 'package:venon_flutter_test/ui/listings/listings.dart';
import 'package:venon_flutter_test/ui/search_employee/search.dart';

class BottomNavIndex extends StatefulWidget{
  final int index;
  const BottomNavIndex({Key? key, required this.index}) : super(key: key);

  @override
  State<BottomNavIndex> createState() => _BottomNavIndexState();
}

class _BottomNavIndexState extends State<BottomNavIndex>{
  SearchListner searchListner = new SearchListner();
  bool searchClick = false;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: widget.index != 4 ? _pages.elementAt(_selectedIndex) : _pages.elementAt(widget.index),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Stack(
          children: [
            Container(),
            Positioned(
              bottom: 0,
              child: Container(
                width: size.width,
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Theme.of(context).backgroundColor,
                  iconSize: 30,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  unselectedItemColor: Theme.of(context).primaryColorLight,
                  selectedItemColor: Color(0xFF44969E),
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.timelapse,
                        size: 25,
                      ),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon:  Icon(
                        Icons.inbox_outlined,
                        size: 25,
                      ),
                      label: 'Inbox',
                    ),
                    BottomNavigationBarItem(
                      icon:  Icon(
                        Icons.person_search,
                        size: 40,
                      ),
                      label: 'Search',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.mic_none_outlined,
                        size: 25,
                      ),
                      label: 'Messages',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.reorder_outlined,
                        size: 25,
                      ),
                      label: 'Messages',
                    ),
                  ],
                  currentIndex: _selectedIndex, //New
                  onTap: _onItemTapped,
                ),
              ),
            ),
            Positioned(
              left: size.width * 0.425,
              bottom: 8,
              child: GestureDetector(
                onTap: (){
                  _onItemTapped(2);
                },
                child: Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0,3), // changes position of shadow
                      ),
                    ],
                    color: _selectedIndex != 2 ? Theme.of(context).backgroundColor : Color(0xFF44969E),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.person_search_outlined,
                      size: 22,
                      color: _selectedIndex != 2 ?  Theme.of(context).primaryColorLight : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _pages = <Widget>[
    Container(),
    Listings(),
    Search(),
    Container(),
    Analytics(),
  ];

}