import 'package:flutter/material.dart';
import 'package:venon_flutter_test/widgets/position_tile.dart';
import 'package:venon_flutter_test/widgets/recommended_emp_card.dart';

class SearchAlt extends StatefulWidget{
  SearchAlt({Key? key}) : super(key: key);
  @override
  State<SearchAlt> createState() => _SearchAltState();
}

class _SearchAltState extends State<SearchAlt>{
  bool searchEmpSelected = true;
  bool searchEmpList = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: searchEmpSelected == true ?  SearchEmpBack() : SearchEmpListBack(),
      ),
      bottomSheet: searchEmpSelected == true ? SearchEmpBottom() : SearchEmpListBottom(),
    );
  }

  SearchEmpBack(){
    Widget searchEmp;
    var size = MediaQuery.of(context).size;
    searchEmp = Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "assets/images/job_search_background_image.png"),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: size.height * 0.3),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Search for a new \nemployee',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Enter your details to proceed further',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          )
        ],
      ),
    );

    return searchEmp;
  }

  SearchEmpBottom(){
    Widget searchEmpBottom;
    var size = MediaQuery.of(context).size;
    searchEmpBottom = Container(
      width: size.width,
      height: size.height * 0.4,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "assets/images/search_employee_list_back_image.png"),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Container(
        width: size.width,
        height: size.height * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22), topRight: Radius.circular(22)),
          color: Theme.of(context).backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 21, 14, 18),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                        color: Theme.of(context).backgroundColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0,3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 7, 3, 7),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                color: Theme.of(context).primaryColor,
                              ),
                              child: Icon(
                                Icons.search,
                                size: 20,
                                color: Theme.of(context).primaryColorLight,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: size.width * 0.6,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: 'Job title, keyword or company',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    color: Theme.of(context).primaryColorDark,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                         searchEmpSelected = false;
                         searchEmpList = true;
                        });
                      },
                      child: Icon(
                        Icons.keyboard_arrow_up_outlined,
                        size: 30,
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 27),
                Text(
                  'Recommended for you',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    color: Color(0xFF8083A3),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 24),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      RecommendedEmployeeCard(
                        profileImage: 'assets/images/tamas_image.png',
                        employeeName: 'Tamas Bunce',
                        companyName: 'Dribble Inc.',
                        position: 'Construction Manager',
                      ),
                      SizedBox(width: 14),
                      RecommendedEmployeeCard(
                        profileImage: 'assets/images/benedick_image.png',
                        employeeName: 'Benedikt Safiyulin',
                        companyName: 'Google Inc.',
                        position: 'Fitness Trainer',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );

    return searchEmpBottom;
  }

  SearchEmpListBack(){
    Widget searchEmpListBack;
    var size = MediaQuery.of(context).size;
    searchEmpListBack = Container(
      height: size.height * 0.3,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "assets/images/search_employee_list_back_image.png"),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20,left: 14, right: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: Theme.of(context).backgroundColor,
              ),
              child: Center(
                child: Icon(
                  Icons.notifications_none_outlined,
                  size: 25,
                  color: Theme.of(context).primaryColorLight,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        searchEmpSelected = true;
                        searchEmpList = false;
                      });
                    },
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  child: Image.asset(
                    'assets/images/search_users_profile.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

    return searchEmpListBack;
  }

  SearchEmpListBottom(){
    Widget searchEmpListBottom;
    var size = MediaQuery.of(context).size;
    searchEmpListBottom = Container(
      width: size.width,
      height: size.height * 0.75,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "assets/images/search_employee_list_back_image.png"),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Container(
        width: size.width,
        height: size.height * 0.75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22), topRight: Radius.circular(22)),
          color: Theme.of(context).backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 21, 14, 18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(22)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0,3), // changes position of shadow
                      ),
                    ],
                    color: Theme.of(context).backgroundColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 7, 8, 7),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Color(0xFF44969E),
                          ),
                          child: Icon(
                            Icons.search,
                            size: 24,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: size.width * 0.5,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: 'Job Title -Manager',
                              hintStyle: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 12,
                                color: Theme.of(context).primaryColorLight,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(width: 10),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color:
                            Theme.of(context).primaryColor.withOpacity(0.7),
                          ),
                          child: Icon(
                            Icons.location_on_outlined,
                            size: 24,
                            color: Theme.of(context).primaryColorLight,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 23),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                            border: Border.all(
                              width: 1,
                              color: Color(0xFFE4E6E8),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(18, 9, 20, 9),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Text(
                                    'Date Posted',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 12,
                                      color: Theme.of(context).primaryColorLight,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  size: 16,
                                  color: Theme.of(context).primaryColorLight,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                            border: Border.all(
                              width: 1,
                              color: Color(0xFFE4E6E8),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(18, 9, 20, 9),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Text(
                                    'Experience',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 12,
                                      color: Theme.of(context).primaryColorLight,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  size: 16,
                                  color: Theme.of(context).primaryColorLight,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                            border: Border.all(
                              width: 1,
                              color: Color(0xFFE4E6E8),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(18, 9, 20, 9),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Text(
                                    'Company',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 12,
                                      color: Theme.of(context).primaryColorLight,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  size: 16,
                                  color: Theme.of(context).primaryColorLight,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18),
                PositionTile(
                  imageLink: 'assets/images/ahmed_image.png',
                  companyImageLink: 'assets/images/google_icon.png',
                  employeeName: 'Ahmad Nazeri',
                  companyName: 'Google Inc.',
                  position: 'Sales manager',
                ),
                SizedBox(height: 6),
                PositionTile(
                  imageLink: 'assets/images/nour_image.png',
                  companyImageLink: 'assets/images/apple_icon.png',
                  employeeName: 'Jumaima Al Nour',
                  companyName: 'Emory University',
                  position: 'Business manager',
                ),
                SizedBox(height: 6),
                PositionTile(
                  imageLink: 'assets/images/xian_image.png',
                  companyImageLink: 'assets/images/dropbox_icon.png',
                  employeeName: 'Xian Zhou',
                  companyName: 'Shake Shack',
                  position: 'Marketing manager',
                ),
                SizedBox(height: 6),
                PositionTile(
                  imageLink: 'assets/images/lacara_image.png',
                  companyImageLink: 'assets/images/sketch_icon.png',
                  employeeName: 'Lacara Jones',
                  companyName: 'Core Group Resources',
                  position: 'Sales manager',
                ),
                SizedBox(height: 6),
                PositionTile(
                  imageLink: 'assets/images/shimma_image.png',
                  companyImageLink: 'assets/images/slack_icon.png',
                  employeeName: 'Thitiwat Shimma',
                  companyName: 'Catchafire Company',
                  position: 'Data analyst',
                ),
                SizedBox(height: 6),
                PositionTile(
                  imageLink: 'assets/images/ebua_image.png',
                  companyImageLink: 'assets/images/spotify_icon.png',
                  employeeName: 'Njimoluh Ebua',
                  companyName: 'Printpack',
                  position: 'Budget analyst',
                ),
              ],
            ),
          ),
        ),
      ),
    );

    return searchEmpListBottom;
  }

}