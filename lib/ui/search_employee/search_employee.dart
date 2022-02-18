import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:venon_flutter_test/customs/listner.dart';
import 'package:venon_flutter_test/customs/search_click_listner.dart';
import 'package:venon_flutter_test/widgets/recommended_emp_card.dart';

class SearchEmployee extends StatefulWidget{
  const SearchEmployee({Key? key}) : super(key: key);
  @override
  State<SearchEmployee> createState() => _SearchEmployeeState();
}

class _SearchEmployeeState extends State<SearchEmployee>{
  SearchListner searchListner = new SearchListner();

  @override
  void initState() {
    searchListner.addListener(() {
      print('updated');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: Container(
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
          ),
        ),
        bottomSheet: Container(
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
                            searchListner.toggleSearch();
                              print(searchListner.searchBarClicked);
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
        ),
      ),
    );
  }

}