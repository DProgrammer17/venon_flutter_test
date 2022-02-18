import 'package:flutter/material.dart';
import 'package:venon_flutter_test/customs/search_click_listner.dart';
import 'package:venon_flutter_test/ui/search_employee/search_employee.dart';
import 'package:venon_flutter_test/ui/search_employee/search_employee_list.dart';

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
      child: Container(
        child: pageChange == false ? SearchEmployee() : SearchEmployeeList(),
      ),
    );
  }
}
