import 'package:flutter/material.dart';
import 'package:venon_flutter_test/customs/theme.dart';
import 'package:venon_flutter_test/ui/analytics/analytics_further_info.dart';
import 'package:venon_flutter_test/widgets/dotted_seperator.dart';
import 'package:venon_flutter_test/widgets/graph_asset.dart';
import 'package:venon_flutter_test/widgets/graph_asset_march.dart';

class Analytics extends StatefulWidget {
  const Analytics({Key? key}) : super(key: key);
  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  bool themeChanged = false;
  bool profileClicked = false;
  bool jobClicked = true;
  bool febuaryClicked = true;
  bool marchClicked = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 30, 14, 30),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      AnalyticsFurther()));
                        },
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
                              Icons.arrow_forward_ios_outlined,
                              size: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.2),
                      Text(
                        'Analytics',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20,
                          color: Theme.of(context).brightness.toString() ==
                                  'Brightness.light'
                              ? Colors.black
                              : Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Expanded(
                        child: SizedBox(width: size.width * 0.25),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            themeChanged = !themeChanged;
                            currentTheme.toggleTheme();
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            child: themeChanged == false
                                ? Icon(
                                    Icons.light_mode_outlined,
                                    size: 28,
                                    color: Theme.of(context).primaryColorLight,
                                  )
                                : Icon(
                                    Icons.dark_mode_outlined,
                                    size: 28,
                                    color: Theme.of(context).primaryColorLight,
                                  ),
                          ),
                        ),
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Center(
                            child: Image.asset(
                          'assets/images/profile_image.png',
                          scale: 2,
                        )),
                      ),
                    ],
                  ),
                  SizedBox(height: 28),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            border: Border.all(
                              width: 1,
                              color: Color(0xFFE4E6E8),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(23, 25, 23, 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 46,
                                  width: 46,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.home_repair_service_outlined,
                                      size: 22,
                                      color:Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 18),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '19.345',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 18,
                                        color: Theme.of(context)
                                                    .brightness
                                                    .toString() ==
                                                'Brightness.light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Views',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Color(0xFF8083A3).withOpacity(0.8),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 40),
                                Row(
                                  children: [
                                    Text(
                                      '+10%',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color: Color(0xFF44969E),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 2),
                                    Icon(
                                      Icons.north_east,
                                      size: 20,
                                      color: Color(0xFF44969E),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 14),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            border: Border.all(
                              width: 1,
                              color: Color(0xFFE4E6E8),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(23, 25, 23, 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 46,
                                  width: 46,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.group,
                                      size: 22,
                                      color:Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 18),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '19.345',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 18,
                                        color: Theme.of(context)
                                                    .brightness
                                                    .toString() ==
                                                'Brightness.light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Views',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Color(0xFF8083A3).withOpacity(0.8),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 40),
                                Row(
                                  children: [
                                    Text(
                                      '+10%',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color: Color(0xFF44969E),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 2),
                                    Icon(
                                      Icons.north_east,
                                      size: 20,
                                      color: Color(0xFF44969E),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 14),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            border: Border.all(
                              width: 1,
                              color: Color(0xFFE4E6E8),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(23, 25, 23, 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 46,
                                  width: 46,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.home_repair_service_outlined,
                                      size: 22,
                                      color:Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 18),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '19.345',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 18,
                                        color: Theme.of(context)
                                                    .brightness
                                                    .toString() ==
                                                'Brightness.light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Views',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Color(0xFF8083A3).withOpacity(0.8),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 40),
                                Row(
                                  children: [
                                    Text(
                                      '+10%',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color: Color(0xFF44969E),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 2),
                                    Icon(
                                      Icons.north_east,
                                      size: 20,
                                      color: Color(0xFF44969E),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      border: Border.all(
                        width: 1,
                        color: Color(0xFFE4E6E8),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 21, 0, 0),
                          child: Text(
                            'Listing performance',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 18,
                              color: Theme.of(context).brightness.toString() ==
                                      'Brightness.light'
                                  ? Colors.black
                                  : Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: 23),
                        Divider(
                          thickness: 1,
                          color: Color(0xFFE4E6E8),
                        ),
                        SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(26, 0, 35, 23),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 46,
                                      width: 46,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(40)),
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.bar_chart_outlined,
                                          size: 22,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Container(
                                        height: 12,
                                        width: 12,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          color: Color(0xFF00D066),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Views',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color: Theme.of(context)
                                                    .brightness
                                                    .toString() ==
                                                'Brightness.light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Container(
                                        height: 12,
                                        width: 12,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          color: Color(0xFFFFBD00),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Applications',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color: Theme.of(context)
                                                    .brightness
                                                    .toString() ==
                                                'Brightness.light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Container(
                                  width: size.width,
                                  height: 220,
                                  child: febuaryClicked == true ? GraphAsset() : GraphAssetMarch(),
                                ),
                                SizedBox(height: 20),
                                DottedSeperator(
                                  height: 1,
                                  color: Color(0xFFE4E6E8),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          febuaryClicked = true;
                                          marchClicked = false;
                                        });
                                      },
                                      child: Text(
                                        'February',
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 14,
                                          color:febuaryClicked == true ? Theme.of(context).primaryColorLight: Theme.of(context).primaryColorDark,
                                          fontWeight:febuaryClicked == true ? FontWeight.w600 : FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 18),
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          febuaryClicked = false;
                                          marchClicked = true;
                                        });
                                      },
                                      child: Text(
                                        'March',
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 14,
                                          color: marchClicked == true ? Theme.of(context).primaryColorLight: Theme.of(context).primaryColorDark,
                                          fontWeight: marchClicked == true ? FontWeight.w600 : FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      border: Border.all(
                        width: 1,
                        color: Color(0xFFE4E6E8),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 21, 0, 0),
                          child: Text(
                            'Breakdown',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 18,
                              color: Theme.of(context).brightness.toString() ==
                                      'Brightness.light'
                                  ? Colors.black
                                  : Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: 23),
                        Divider(
                          thickness: 1,
                          color: Color(0xFFE4E6E8),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 23, 24, 24),
                          child: Container(
                            child: Column(
                              children: [
                                Center(
                                  child: Container(
                                    height: 177,
                                    width: 177,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(180)),
                                      border: Border.all(
                                        width: 4,
                                        color: Color(0xFFFFBD00),
                                      ),
                                    ),
                                    child: Center(
                                      child: Container(
                                        height: 148,
                                        width: 148,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(150)),
                                          border: Border.all(
                                            width: 4,
                                            color: Color(0xFFFF4E00),
                                          ),
                                        ),
                                        child: Center(
                                          child: Container(
                                            height: 119,
                                            width: 119,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(180)),
                                              border: Border.all(
                                                width: 4,
                                                color: Color(0xFF44969E),
                                              ),
                                            ),
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '136',
                                                    style: TextStyle(
                                                      fontFamily: 'Inter',
                                                      fontSize: 28,
                                                      color: Theme.of(context)
                                                                  .brightness
                                                                  .toString() ==
                                                              'Brightness.light'
                                                          ? Colors.black
                                                          : Colors.white,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  SizedBox(height: 2),
                                                  Text(
                                                    'Total jobs',
                                                    style: TextStyle(
                                                      fontFamily: 'Inter',
                                                      fontSize: 12,
                                                      color: Theme.of(context)
                                                                  .brightness
                                                                  .toString() ==
                                                              'Brightness.light'
                                                          ? Colors.black
                                                          : Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 32),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Container(
                                        height: 12,
                                        width: 12,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          color: Color(0xFF44969E),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Complete jobs',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color: Theme.of(context)
                                                    .brightness
                                                    .toString() ==
                                                'Brightness.light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(width: 20),
                                    ),
                                    Text(
                                      '46',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color: Theme.of(context)
                                                    .brightness
                                                    .toString() ==
                                                'Brightness.light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 11.5),
                                Divider(
                                  thickness: 1,
                                  color: Color(0xFFE4E6E8),
                                ),
                                SizedBox(height: 11.5),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Container(
                                        height: 12,
                                        width: 12,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          color: Color(0xFFFFBD00),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Pending jobs',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color: Theme.of(context)
                                                    .brightness
                                                    .toString() ==
                                                'Brightness.light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(width: 20),
                                    ),
                                    Text(
                                      '56',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color: Theme.of(context)
                                                    .brightness
                                                    .toString() ==
                                                'Brightness.light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 11.5),
                                Divider(
                                  thickness: 1,
                                  color: Color(0xFFE4E6E8),
                                ),
                                SizedBox(height: 11.5),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Container(
                                        height: 12,
                                        width: 12,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          color: Color(0xFFFF4E00),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Cancelled jobs',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color: Theme.of(context)
                                                    .brightness
                                                    .toString() ==
                                                'Brightness.light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(width: 20),
                                    ),
                                    Text(
                                      '34',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color: Theme.of(context)
                                                    .brightness
                                                    .toString() ==
                                                'Brightness.light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      border: Border.all(
                        width: 1,
                        color: Color(0xFFE4E6E8),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 22, bottom: 26),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25, right: 25),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(27)),
                                color: Theme.of(context).primaryColor,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        profileClicked = true;
                                        jobClicked = false;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: profileClicked == true ? Colors.grey.withOpacity(0.8) : Colors.transparent,
                                            spreadRadius: 0,
                                            blurRadius: 4,
                                            offset: Offset(0,3), // changes position of shadow
                                          ),
                                        ],
                                        color: profileClicked == true
                                            ? Theme.of(context).backgroundColor
                                            : Colors.transparent,
                                      ),
                                      child: Padding(
                                        padding: profileClicked == true
                                            ? const EdgeInsets.fromLTRB(
                                                20, 14, 20, 14)
                                            : const EdgeInsets.fromLTRB(
                                                29, 14, 9, 14),
                                        child: Center(
                                          child: Text(
                                            'Latest profiles',
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontSize: 14,
                                              color: profileClicked == true ? Theme.of(context)
                                                  .brightness
                                                  .toString() ==
                                                  'Brightness.light' ? Theme.of(context).primaryColorDark :  Colors.white.withOpacity(0.9) : Theme.of(context).primaryColorDark,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        profileClicked = false;
                                        jobClicked = true;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: jobClicked == true ? Colors.grey.withOpacity(0.8) : Colors.transparent,
                                            spreadRadius: 0,
                                            blurRadius: 4,
                                            offset: Offset(0,3), // changes position of shadow
                                          ),
                                        ],
                                        color: jobClicked == true
                                            ? Theme.of(context).backgroundColor
                                            : Colors.transparent,
                                      ),
                                      child: Padding(
                                        padding: jobClicked == true
                                            ? const EdgeInsets.fromLTRB(
                                                20, 14, 20, 14)
                                            : const EdgeInsets.fromLTRB(
                                                9, 14, 29, 14),
                                        child: Center(
                                          child: Text(
                                            'Latest Jobs',
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontSize: 14,
                                              color: jobClicked == true ? Theme.of(context)
                                                  .brightness
                                                  .toString() ==
                                                  'Brightness.light' ? Theme.of(context).primaryColorDark :  Colors.white.withOpacity(0.9) : Theme.of(context).primaryColorDark,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 35),
                          Padding(
                            padding: const EdgeInsets.only(left: 22, right: 22),
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 16),
                                        child: Container(
                                          height: 46,
                                          width: 46,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40)),
                                            color: Theme.of(context)
                                                .primaryColor
                                                .withOpacity(0.7),
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                              'assets/images/dribbble_icon.png',
                                              scale: 2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Crisis Intervention Specialist',
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontSize: 14,
                                              color: Theme.of(context)
                                                          .brightness
                                                          .toString() ==
                                                      'Brightness.light'
                                                  ? Colors.black
                                                  : Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8),
                                                child: Text(
                                                  'London',
                                                  style: TextStyle(
                                                    fontFamily: 'Inter',
                                                    fontSize: 10,
                                                    color: Theme.of(context)
                                                        .primaryColorDark,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Icon(
                                                Icons.fiber_manual_record,
                                                size: 14,
                                                color: Theme.of(context)
                                                    .primaryColorDark,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8, right: 8),
                                                child: Text(
                                                  'Dribble Inc.',
                                                  style: TextStyle(
                                                    fontFamily: 'Inter',
                                                    fontSize: 10,
                                                    color: Theme.of(context)
                                                        .primaryColorDark,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Icon(
                                                Icons.fiber_manual_record,
                                                size: 14,
                                                color: Theme.of(context)
                                                    .primaryColorDark,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8, right: 8),
                                                child: Text(
                                                  'Full-Time',
                                                  style: TextStyle(
                                                    fontFamily: 'Inter',
                                                    fontSize: 10,
                                                    color: Theme.of(context)
                                                        .primaryColorDark,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 35),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 16),
                                        child: Container(
                                          height: 46,
                                          width: 46,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40)),
                                            color: Theme.of(context)
                                                .primaryColor
                                                .withOpacity(0.7),
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                              'assets/images/google_icon.png',
                                              scale: 2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Virtual Scheduler - Remote',
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontSize: 14,
                                              color: Theme.of(context)
                                                          .brightness
                                                          .toString() ==
                                                      'Brightness.light'
                                                  ? Colors.black
                                                  : Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8),
                                                child: Text(
                                                  'New York',
                                                  style: TextStyle(
                                                    fontFamily: 'Inter',
                                                    fontSize: 9,
                                                    color: Theme.of(context)
                                                        .primaryColorDark,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Icon(
                                                Icons.fiber_manual_record,
                                                size: 14,
                                                color: Theme.of(context)
                                                    .primaryColorDark,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8, right: 8),
                                                child: Text(
                                                  'Google Inc.',
                                                  style: TextStyle(
                                                    fontFamily: 'Inter',
                                                    fontSize: 9,
                                                    color: Theme.of(context)
                                                        .primaryColorDark,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Icon(
                                                Icons.fiber_manual_record,
                                                size: 14,
                                                color: Theme.of(context)
                                                    .primaryColorDark,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8, right: 8),
                                                child: Text(
                                                  'Remote',
                                                  style: TextStyle(
                                                    fontFamily: 'Inter',
                                                    fontSize: 9,
                                                    color: Theme.of(context)
                                                        .primaryColorDark,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 35),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 16),
                                        child: Container(
                                          height: 46,
                                          width: 46,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40)),
                                            color: Theme.of(context)
                                                .primaryColor
                                                .withOpacity(0.7),
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                              'assets/images/facebook_icon.png',
                                              scale: 2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Patient Care Advocate',
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontSize: 14,
                                              color: Theme.of(context)
                                                          .brightness
                                                          .toString() ==
                                                      'Brightness.light'
                                                  ? Colors.black
                                                  : Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8),
                                                child: Text(
                                                  'Washington',
                                                  style: TextStyle(
                                                    fontFamily: 'Inter',
                                                    fontSize: 9,
                                                    color: Theme.of(context)
                                                        .primaryColorDark,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Icon(
                                                Icons.fiber_manual_record,
                                                size: 14,
                                                color: Theme.of(context)
                                                    .primaryColorDark,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8, right: 8),
                                                child: Text(
                                                  'Facebook',
                                                  style: TextStyle(
                                                    fontFamily: 'Inter',
                                                    fontSize: 9,
                                                    color: Theme.of(context)
                                                        .primaryColorDark,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Icon(
                                                Icons.fiber_manual_record,
                                                size: 14,
                                                color: Theme.of(context)
                                                    .primaryColorDark,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8, right: 8),
                                                child: Text(
                                                  'Full-Time',
                                                  style: TextStyle(
                                                    fontFamily: 'Inter',
                                                    fontSize: 9,
                                                    color: Theme.of(context)
                                                        .primaryColorDark,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 35),
                          Padding(
                            padding: const EdgeInsets.only(left: 25, right: 25),
                            child: Container(
                              width: size.width,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(23)),
                                color: Theme.of(context).primaryColor,
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 12, 0, 12),
                                child: Center(
                                  child: Text(
                                    '... See all jobs',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      color:
                                          Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
