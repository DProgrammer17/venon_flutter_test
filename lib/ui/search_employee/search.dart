import 'package:flutter/material.dart';
import 'package:venon_flutter_test/customs/search_click_listner.dart';
import 'package:venon_flutter_test/ui/search_employee/search_employee.dart';
import 'package:venon_flutter_test/ui/search_employee/search_employee_list.dart';
import 'package:venon_flutter_test/widgets/employee_info_tile.dart';
import 'package:venon_flutter_test/widgets/position_tile.dart';

class Search extends StatefulWidget with ChangeNotifier{
   Search({Key? key}) : super(key: key);
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  SearchListner searchListner = new SearchListner();
  bool pageChange = false;

  @override
  void initState() {
    searchListner.addListener(() {
      setState(() {
        pageChange = searchListner.searchBarClicked;
      });
      print('PageChange: $pageChange');
      print('updated');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: pageChange == false ? PositionTile(
              imageLink: 'assets/images/nour_image.png',
              companyImageLink: 'assets/images/apple_icon.png',
              employeeName: 'Jumaima Al Nour',
              companyName: 'Emory University',
              position: 'Business manager',
            ) : EmployeeInfoTile(
              profileImageLink: 'assets/images/deepa_image.png',
              employeeName: 'Deepa Bardhan',
              position: 'Sales Manager',
              favClicked: true,
            ),
          ),
        ],
      ),
    );
  }
}
