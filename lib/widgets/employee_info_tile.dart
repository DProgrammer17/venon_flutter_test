import 'package:flutter/material.dart';

class EmployeeInfoTile extends StatefulWidget{
  final bool favClicked;
  final String? profileImageLink;
  final String? employeeName;
  final String? position;

  const EmployeeInfoTile({Key? key, this.favClicked = false, this.profileImageLink, this.employeeName, this.position}) : super(key: key);

  @override
  State<EmployeeInfoTile> createState() => _EmployeeInfoTileState();
}

class _EmployeeInfoTileState extends State<EmployeeInfoTile>{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        border: Border.all(
          width: 1,
          color: Color(0xFFE4E6E8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(13, 18, 15, 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                child: widget.favClicked == false ? Icon(
                  Icons.star_border_outlined,
                  size: 24,
                  color: Theme.of(context).primaryColorLight,
                ) : Icon(
                  Icons.star,
                  size: 24,
                  color: Theme.of(context).primaryColorLight,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Container(
                height: 36,
                width: 36,
                child: Image.asset('${widget.profileImageLink}', scale: 2,),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${widget.employeeName}',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    color: Theme.of(context)
                        .primaryColorLight,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  '${widget.position}',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 12,
                    color: Theme.of(context)
                        .primaryColorDark,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Expanded(child: SizedBox(width: 13),),
            Icon(
              Icons.more_horiz_outlined,
              size: 20,
              color: Theme.of(context).primaryColorLight,
            ),
          ],
        ),
      ),
    );
  }

}