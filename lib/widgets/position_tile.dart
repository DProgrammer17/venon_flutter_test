import 'package:flutter/material.dart';

class PositionTile extends StatefulWidget{
  final String? imageLink;
  final String? employeeName;
  final String? companyImageLink;
  final String? companyName;
  final String? position;

  const PositionTile({Key? key, this.imageLink, this.employeeName, this.companyImageLink, this.companyName, this.position}) : super(key: key);
  @override
  State<PositionTile> createState() => _PositionTileState();
}

class _PositionTileState extends State<PositionTile>{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        border: Border.all(
          width: 1,
          color: Color(0xFFE4E6E8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 16, 0, 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                height: 42,
                width: 42,
                child: Image.asset('${widget.imageLink}', scale: 2,),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('${widget.companyImageLink}', height: 13, width: 13,),
                    SizedBox(width: 5),
                    Text(
                      '${widget.companyName}',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 9.5,
                        color: Theme.of(context)
                            .primaryColorLight,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.stop,
                      size: 10,
                      color: Theme.of(context).primaryColorLight,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '${widget.position}',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 9.5,
                        color: Theme.of(context)
                            .primaryColorLight,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}