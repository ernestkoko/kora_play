import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CustomSlidable extends StatelessWidget {
  const CustomSlidable({Key? key, required this.onTap, required this.name, required this.profession}) : super(key: key);
  final Function(BuildContext) onTap;
  final String name;
  final String profession;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(vertical: 4),

      decoration:  ShapeDecoration(
          color: Theme.of(context).primaryColor ,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          )
      ),
      child: Slidable(
        key: const ValueKey(0),
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              // An action can be bigger than the others.
              flex: 2,
              onPressed: onTap,
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Colors.white,
              icon: Icons.message,
              borderRadius: BorderRadius.circular(10),

            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration:  ShapeDecoration(
              color: Colors.grey.shade200,
              shape:const  RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(10)))),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/img/doctor1.jpg",
                    fit: BoxFit.fill,
                    height: 70,
                    width: 70,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    name,
                    style:const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(profession,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5))),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.yellow,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        "4.3",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5)),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Icon(
                        Icons.access_time_outlined,
                        color: Colors.lightBlueAccent,
                      ),
                      Text(
                        "11Am - 03 Pm",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5)),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
