import 'package:flutter/material.dart';

class RecommendedEmployeeCard extends StatefulWidget{
  final String? profileImage;
  final String? employeeName;
  final String? companyName;
  final String? position;

  const RecommendedEmployeeCard({Key? key,  this.profileImage, this.employeeName, this.companyName, this.position}) : super(key: key);

  @override
  State<RecommendedEmployeeCard> createState() => _RecommendedEmployeeCardState();
}

class _RecommendedEmployeeCardState extends State<RecommendedEmployeeCard>{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        border: Border.all(
          width: 1,
          color: Color(0xFFE4E6E8),
        ),
        color: Theme.of(context).backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor,
            spreadRadius: 0,
            blurRadius: 1,
            offset: Offset(2,2), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 25, 27),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Image.asset('${widget.profileImage}', height: 62, width: 62,),
           SizedBox(height: 19),
           Text(
             '${widget.employeeName}',
             style: TextStyle(
               fontFamily: 'Inter',
               fontSize: 18,
               color: Theme.of(context).primaryColorLight,
               fontWeight: FontWeight.w600,
             ),
           ),
           SizedBox(height: 6),
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(
                     right: 8),
                 child: Text(
                   '${widget.companyName}',
                   style: TextStyle(
                     fontFamily: 'Inter',
                     fontSize: 11,
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
                   '${widget.position}',
                   style: TextStyle(
                     fontFamily: 'Inter',
                     fontSize: 11,
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
      ),
    );
  }

}