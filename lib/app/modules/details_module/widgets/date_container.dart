
import 'package:flutter/material.dart';

class DateContainer extends StatelessWidget {
  const DateContainer({Key? key, this.today = false, required this.day, required this.date}) : super(key: key);
  final bool today;
  final String day;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 2),
        padding:const EdgeInsets.all(5),
        decoration: ShapeDecoration(
          color:  today ? Theme.of(context).primaryColor:Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10
            )
          )
        ),
        child: Column
          (
          children: [
            Text(day, style: TextStyle(color:today?Colors.white: Colors.black.withOpacity(0.6)),),
             Text(date)
          ],
        ),
      ),
    );
  }
}
