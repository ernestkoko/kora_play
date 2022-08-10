import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(Icons.person)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Welcome back"),
                          Text(
                            "Nazmul",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.add_chart_outlined))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Up Coming Appointment"),
                  Text(
                    "See all",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Card(
                elevation: 15,
                shadowColor: Theme.of(context).primaryColorDark,
                color: Theme.of(context).primaryColor,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, top: 15.0, right: 8.0, bottom: 25.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.person),
                              Column(
                                children: const [
                                  Text("Dr Rohul Alom"),
                                  Text("Tooth, Specialist")
                                ],
                              )
                            ],
                          ),
                          Icon(Icons.more_vert_rounded)
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: ShapeDecoration(
                                color: Theme.of(context)
                                    .primaryColorLight
                                    .withOpacity(0.2),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)))),
                            child: Row(
                              children: const [
                                Icon(Icons.calendar_month),
                                Text("Sept 18, 2022")
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: ShapeDecoration(
                                color: Theme.of(context)
                                    .primaryColorLight
                                    .withOpacity(0.2),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)))),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.access_time_outlined,
                                  color: Colors.white,
                                ),
                                Text("Sept 18, 2022")
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Expanded(
                      child: TextField(
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                    decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintText: "Search ...",
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ))),
                  )),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    decoration: ShapeDecoration(
                        color: Theme.of(context).primaryColor,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8)))),
                    child: const Icon(
                      Icons.connecting_airports_sharp,
                      size: 50,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            const   SizedBox(
                height: 12.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:const  [
                  Text(
                    "Category",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
