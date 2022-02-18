import 'package:flutter/material.dart';
import 'package:venon_flutter_test/customs/theme.dart';
import 'package:venon_flutter_test/ui/analytics/analytics.dart';
import 'package:venon_flutter_test/ui/bottom_index_nav.dart';
import 'package:venon_flutter_test/widgets/dotted_seperator.dart';

class AnalyticsFurther extends StatefulWidget {
  final bool? theme;
  const AnalyticsFurther({Key? key, this.theme}) : super(key: key);
  @override
  State<AnalyticsFurther> createState() => _AnalyticsFurtherState();
}

class _AnalyticsFurtherState extends State<AnalyticsFurther> {
  bool themeChanged = false;

  @override
  Widget build(BuildContext context) {
   // themeChanged == widget.theme == true ? themeChanged : widget.theme;
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
                                      BottomNavIndex(
                                        index: 4,
                                      )));
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
                              Icons.arrow_back_ios,
                              size: 18,
                              color: Theme.of(context).primaryColorLight,
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
                            padding: const EdgeInsets.fromLTRB(24, 15, 21, 17),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Performance',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Theme.of(context).primaryColorDark,
                                      ),
                                    ),
                                    SizedBox(width: 60),
                                    Icon(
                                      Icons.north_east,
                                      size: 14,
                                      color: Color(0xFF44969E),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 11),
                                Text(
                                  '4.950',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 20,
                                    color: Theme.of(context).primaryColorLight,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Row(
                                  children: [
                                    Text(
                                      'Job Applicants',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 12,
                                        color:
                                            Theme.of(context).primaryColorLight,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 50),
                                    Text(
                                      '+8%',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 12,
                                        color: Color(0xFF44969E),
                                        fontWeight: FontWeight.w500,
                                      ),
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
                            padding: const EdgeInsets.fromLTRB(24, 15, 21, 17),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Conversion',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Theme.of(context).primaryColorDark,
                                      ),
                                    ),
                                    SizedBox(width: 90),
                                    Icon(
                                      Icons.north_east,
                                      size: 14,
                                      color: Color(0xFF44969E),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 11),
                                Text(
                                  '148',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 20,
                                    color: Theme.of(context).primaryColorLight,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Row(
                                  children: [
                                    Text(
                                      'Meetings scheduled',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 12,
                                        color:
                                            Theme.of(context).primaryColorLight,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 30),
                                    Text(
                                      '+8%',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 12,
                                        color: Color(0xFF44969E),
                                        fontWeight: FontWeight.w500,
                                      ),
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
                            padding: const EdgeInsets.fromLTRB(24, 15, 21, 17),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Performance',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Theme.of(context).primaryColorDark,
                                      ),
                                    ),
                                    SizedBox(width: 60),
                                    Icon(
                                      Icons.north_east,
                                      size: 14,
                                      color: Color(0xFF44969E),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 11),
                                Text(
                                  '4.950',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 20,
                                    color: Theme.of(context).primaryColorLight,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Row(
                                  children: [
                                    Text(
                                      'Job Applicants',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 12,
                                        color:
                                            Theme.of(context).primaryColorLight,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 50),
                                    Text(
                                      '+8%',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 12,
                                        color: Color(0xFF44969E),
                                        fontWeight: FontWeight.w500,
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
                            'Trending countries',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 18,
                              color: Theme.of(context).primaryColorLight,
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
                          padding: const EdgeInsets.fromLTRB(26, 0, 35, 28),
                          child: Container(
                            child: Column(
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 19),
                                        child: Text(
                                          'All Regions',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            color: Theme.of(context)
                                                .primaryColorLight,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 19, right: 19),
                                        child: Text(
                                          'Europe',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            color: Theme.of(context)
                                                .primaryColorDark,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 19, right: 19),
                                        child: Text(
                                          'Asia',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            color: Theme.of(context)
                                                .primaryColorDark,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 19, right: 19),
                                        child: Text(
                                          'Africa',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            color: Theme.of(context)
                                                .primaryColorDark,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 19, right: 19),
                                        child: Text(
                                          'Middle East',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            color: Theme.of(context)
                                                .primaryColorDark,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 37),
                                Center(
                                    child: Image.asset(
                                  'assets/images/world_map_image.png',
                                  scale: 1.2,
                                )),
                                SizedBox(height: 37),
                                Row(
                                  children: [
                                    Text(
                                      'Country',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 12,
                                        color:
                                            Theme.of(context).primaryColorDark,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: size.width * 0.31),
                                    Text(
                                      'CV',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 12,
                                        color:
                                            Theme.of(context).primaryColorDark,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: size.width * 0.12),
                                    Text(
                                      'Views',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 12,
                                        color:
                                            Theme.of(context).primaryColorDark,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 18),
                                Row(
                                  children: [
                                    Text(
                                      'USA',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Theme.of(context).primaryColorLight,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(width: size.width * 0.31),
                                    Text(
                                      '1.350',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Theme.of(context).primaryColorDark,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: size.width * 0.10),
                                    Text(
                                      '99.5k',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Theme.of(context).primaryColorLight,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 13, bottom: 13),
                                  child: DottedSeperator(
                                    height: 1,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Canada',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Theme.of(context).primaryColorLight,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(width: size.width * 0.25),
                                    Text(
                                      '1.120',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Theme.of(context).primaryColorDark,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: size.width * 0.10),
                                    Text(
                                      '84.5k',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Theme.of(context).primaryColorLight,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 13, bottom: 13),
                                  child: DottedSeperator(
                                    height: 1,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Germany',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Theme.of(context).primaryColorLight,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(width: size.width * 0.23),
                                    Text(
                                      '980',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Theme.of(context).primaryColorDark,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: size.width * 0.12),
                                    Text(
                                      '80.1k',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Theme.of(context).primaryColorLight,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 13, bottom: 13),
                                  child: DottedSeperator(
                                    height: 1,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Australia',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Theme.of(context).primaryColorLight,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(width: size.width * 0.24),
                                    Text(
                                      '764',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Theme.of(context).primaryColorDark,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: size.width * 0.11),
                                    Text(
                                      '72.5k',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Theme.of(context).primaryColorLight,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 13, bottom: 13),
                                  child: DottedSeperator(
                                    height: 1,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'China',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Theme.of(context).primaryColorLight,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(width: size.width * 0.3),
                                    Text(
                                      '648',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Theme.of(context).primaryColorDark,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: size.width * 0.11),
                                    Text(
                                      '63.7k',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Theme.of(context).primaryColorLight,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 13, bottom: 27),
                                  child: DottedSeperator(
                                    height: 1,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.bar_chart_outlined,
                                      size: 22,
                                      color:
                                          Theme.of(context).primaryColorLight,
                                    ),
                                    Text(
                                      'See full report',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        color:
                                            Theme.of(context).primaryColorLight,
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
                            'Popular profiles',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 18,
                              color: Theme.of(context).primaryColorLight,
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
                          padding: const EdgeInsets.fromLTRB(24, 23, 24, 30),
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 14),
                                      child: Image.asset(
                                        'assets/images/elise_image.png',
                                        scale: 1.7,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Elise Beverley',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            color: Theme.of(context)
                                                .primaryColorLight,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(height: 2),
                                        Text(
                                          'Match 90.4%',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 12,
                                            color: Theme.of(context)
                                                .primaryColorLight,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(child: SizedBox(width: 12)),
                                    Container(
                                      height: 4,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3)),
                                        color:
                                            Color(0XFF44969E).withOpacity(0.5),
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 3,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(3)),
                                            color: Color(0XFF44969E),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 24),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 14),
                                      child: Image.asset(
                                        'assets/images/olivia_image.png',
                                        scale: 1.7,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Olivia Eklund',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            color: Theme.of(context)
                                                .primaryColorLight,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(height: 2),
                                        Text(
                                          'Match 70.2%',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 12,
                                            color: Theme.of(context)
                                                .primaryColorLight,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(child: SizedBox(width: 12)),
                                    Container(
                                      height: 4,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3)),
                                        color:
                                            Color(0XFFFFBD00).withOpacity(0.5),
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 3,
                                          width: 28,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(3)),
                                            color: Color(0XFFFFBD00),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 24),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 14),
                                      child: Image.asset(
                                        'assets/images/carol_image.png',
                                        scale: 1.7,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tiontay Carroll',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            color: Theme.of(context)
                                                .primaryColorLight,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(height: 2),
                                        Text(
                                          'Match 51.6%',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 12,
                                            color: Theme.of(context)
                                                .primaryColorLight,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(child: SizedBox(width: 12)),
                                    Container(
                                      height: 4,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3)),
                                        color:
                                            Color(0XFFFF4E00).withOpacity(0.5),
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 3,
                                          width: 11,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(3)),
                                            color: Color(0XFFFF4E00),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
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
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.group,
                                              size: 20,
                                              color:
                                              Theme.of(context).primaryColorLight,
                                            ),
                                            SizedBox(width: 8),
                                            Text(
                                              'Explore more profiles',
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 14,
                                                color:
                                                Theme.of(context).primaryColorLight,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
