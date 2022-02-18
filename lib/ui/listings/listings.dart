import 'package:flutter/material.dart';
import 'package:venon_flutter_test/widgets/employee_info_tile.dart';

class Listings extends StatefulWidget {
  @override
  State<Listings> createState() => _ListingsState();
}

class _ListingsState extends State<Listings> {
  bool candidatesClicked = true;
  bool listingsClicked = false;
  bool scheduleClicked = false;
  bool dontaeiFav = false;
  bool deepaFave = true;
  bool liaFav = false;
  bool grigFav = true;
  bool noutFav = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(14, 25, 14, 27),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 18),
                        child: Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 18,
                              color: Theme.of(context).primaryColorLight,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Image.asset(
                          'assets/images/patient_care_image.png',
                          height: 42,
                          width: 42,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Patient Care Advocate',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 15,
                              color: Theme.of(context).primaryColorLight,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Full-Time',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              color: Theme.of(context).primaryColorLight,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: SizedBox(width: 9),
                      ),
                      Icon(
                        Icons.more_horiz_outlined,
                        size: 20,
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              candidatesClicked = true;
                              listingsClicked = false;
                              scheduleClicked = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                candidatesClicked == true ? BoxShadow(
                                  color: Color(0xFF999BA8).withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: Offset(0,3), // changes position of shadow
                                ): BoxShadow(
                                  color: Colors.transparent,
                                  spreadRadius: 0,
                                  blurRadius: 0,
                                  offset: Offset(0,0), // changes position of shadow
                                ),
                              ],
                              color: candidatesClicked == true ? Colors.white : Colors.transparent,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(18, 13, 15, 11),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 4),
                                    child: Icon(
                                      Icons.group,
                                      size: 18,
                                      color: candidatesClicked == true ? Theme.of(context).primaryColorLight : Theme.of(context).primaryColorDark,
                                    ),
                                  ),
                                  Text(
                                    'Job candidates',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 12,
                                      color: candidatesClicked == true ? Theme.of(context).primaryColorLight : Theme.of(context).primaryColorDark,
                                      fontWeight: candidatesClicked == true ? FontWeight.w600 : FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              listingsClicked = true;
                              candidatesClicked =false;
                              scheduleClicked = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                listingsClicked == true ? BoxShadow(
                                  color: Color(0xFF999BA8).withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: Offset(0,3), // changes position of shadow
                                ): BoxShadow(
                                  color: Colors.transparent,
                                  spreadRadius: 0,
                                  blurRadius: 0,
                                  offset: Offset(0,0), // changes position of shadow
                                ),
                              ],
                              color: listingsClicked == true ? Colors.white : Colors.transparent,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(18, 13, 15, 11),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 4),
                                    child: Icon(
                                      Icons.info_outline,
                                      size: 18,
                                      color: listingsClicked == true ? Theme.of(context).primaryColorLight : Theme.of(context).primaryColorDark,
                                    ),
                                  ),
                                  Text(
                                    'Listing details',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 12,
                                      color: listingsClicked == true ? Theme.of(context).primaryColorLight : Theme.of(context).primaryColorDark,
                                      fontWeight: listingsClicked == true ? FontWeight.w600 : FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              scheduleClicked = true;
                              listingsClicked = false;
                              candidatesClicked = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                scheduleClicked == true ? BoxShadow(
                                  color: Color(0xFF999BA8).withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: Offset(0,3), // changes position of shadow
                                ): BoxShadow(
                                  color: Colors.transparent,
                                  spreadRadius: 0,
                                  blurRadius: 0,
                                  offset: Offset(0,0), // changes position of shadow
                                ),
                              ],
                              color: scheduleClicked == true ? Colors.white : Colors.transparent,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(18, 13, 15, 11),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 4),
                                    child: Icon(
                                      Icons.event_note_outlined,
                                      size: 18,
                                      color: scheduleClicked == true ? Theme.of(context).primaryColorLight : Theme.of(context).primaryColorDark,
                                    ),
                                  ),
                                  Text(
                                    'Schedule',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 12,
                                      color: scheduleClicked == true ? Theme.of(context).primaryColorLight : Theme.of(context).primaryColorDark,
                                      fontWeight: scheduleClicked == true ? FontWeight.w600 : FontWeight.w400,
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
                  SizedBox(height: 26),
                  Container(
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(23)),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Padding(
                      padding:
                      const EdgeInsets.fromLTRB(0, 13, 0, 13),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Interviews',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                color:
                                Theme.of(context).primaryColorLight,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.keyboard_arrow_down_outlined,
                              size: 20,
                              color: Theme.of(context).primaryColorLight,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(23)),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Padding(
                      padding:
                      const EdgeInsets.fromLTRB(22, 7, 22, 7),
                      child: Text(
                        '10 Jan 2021',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 12,
                          color:
                          Theme.of(context).primaryColorDark,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 17),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        dontaeiFav = !dontaeiFav;
                      });
                    },
                    child: EmployeeInfoTile(
                      profileImageLink: 'assets/images/dontae_image.png',
                      employeeName: 'Dontae Little',
                      position: 'Financial Advisor',
                      favClicked: dontaeiFav,
                    ),
                  ),
                  SizedBox(height: 8),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        deepaFave = !deepaFave;
                      });
                    },
                    child: EmployeeInfoTile(
                      profileImageLink: 'assets/images/deepa_image.png',
                      employeeName: 'Deepa Bardhan',
                      position: 'Sales Manager',
                      favClicked: deepaFave,
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(23)),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Padding(
                      padding:
                      const EdgeInsets.fromLTRB(22, 7, 22, 7),
                      child: Text(
                        '12 Jan 2021',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 12,
                          color:
                          Theme.of(context).primaryColorDark,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 17),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        liaFav = !liaFav;
                      });
                    },
                    child: EmployeeInfoTile(
                      profileImageLink: 'assets/images/castro_image.png',
                      employeeName: 'Lia Castro',
                      position: 'Marketing Manager',
                      favClicked: liaFav,
                    ),
                  ),
                  SizedBox(height: 8),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        grigFav = !grigFav;
                      });
                    },
                    child: EmployeeInfoTile(
                      profileImageLink: 'assets/images/grigoriy_image.png',
                      employeeName: 'Grigoriy Kozhukh',
                      position: 'Computer Analyst',
                      favClicked: grigFav,
                    ),
                  ),
                  SizedBox(height: 8),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        noutFav = !noutFav;
                      });
                    },
                    child: EmployeeInfoTile(
                      profileImageLink: 'assets/images/nout_image.png',
                      employeeName: 'Nout Golstein',
                      position: 'Support Specialist',
                      favClicked: noutFav,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
