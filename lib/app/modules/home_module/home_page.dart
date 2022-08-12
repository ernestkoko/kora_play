import 'package:flutter/material.dart';
import 'package:kora_play/app/data/data.dart';
import 'package:kora_play/app/modules/details_module/details_page.dart';
import 'package:kora_play/app/modules/home_module/widgets/custom_slidable.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final categories = [
    {"title": "Dentist"},
    {"title": "Heart Surgeon"},
    {"title": "Optician"},
    {"title": "Doctor"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SafeArea(

          child: Stack(

            children: [
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: MediaQuery.of(context).size.height * 0.079,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(70),
                                child: Image.asset(
                                  "assets/img/doctor1.jpg",
                                  fit: BoxFit.fill,
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Welcome back",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Nazmul",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                          decoration: ShapeDecoration(
                              color: Colors.grey.shade200,
                              shape: const  RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ))),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add_chart_outlined)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Upcoming Appointment",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        Text(
                          "See all",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Column(
                      children: [
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
                                        const Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        ),
                                        Column(
                                          children: const [
                                            Text("Dr Rohul Alom",
                                                style:
                                                    TextStyle(color: Colors.white)),
                                            Text("Tooth, Specialist",
                                                style:
                                                    TextStyle(color: Colors.white))
                                          ],
                                        )
                                      ],
                                    ),
                                    const Icon(
                                      Icons.more_vert_rounded,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding:const  EdgeInsets.all(8),
                                      decoration: ShapeDecoration(
                                          color: Theme.of(context)
                                              .primaryColorLight
                                              .withOpacity(0.2),
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8)))),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.calendar_month,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text("Sept 18, 2022",
                                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: ShapeDecoration(
                                          color: Theme.of(context)
                                              .primaryColorLight
                                              .withOpacity(0.2),
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8)))),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.access_time_outlined,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            "(11Am - 03Pm)",
                                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Expanded(
                            child: TextField(
                          style: TextStyle(fontSize: 14),
                          decoration: InputDecoration(
                              filled: true,
                              contentPadding: EdgeInsets.all(0),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              hintText: "Search...",
                              hintStyle: TextStyle(color: Colors.grey),
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
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Category",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),

                    ///list view that scrolls horizontally
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                          itemCount: categories.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (ctx, int index) {
                            return Container(
                              padding: const EdgeInsets.all(7),
                              margin: const EdgeInsets.all(4),
                              decoration: ShapeDecoration(
                                  color: Colors.grey.shade200,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8)))),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.monitor_heart,
                                    color: Colors.red,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text("${categories[index]["title"]}")
                                ],
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Top Rated Doctors",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),

                    ///Slidables
                    Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 3,
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemBuilder: (ctx, int index) => CustomSlidable(
                              onTap: (ctx) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (ctx1) => DetailsPage()));
                              },
                              name: Data.professionals[index]["name"] ?? "",
                              profession: Data.professionals[index]
                                      ["profession"] ??
                                  "")),
                    )
                  ],
                ),
              ),

              ///Bottom nav bar
              Positioned(
                  height: MediaQuery.of(context).size.height * 0.07,
                  bottom: 0,
                  left: 10,
                  right: 10,
                  child: Container(
                    decoration: const ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.home,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.calendar_month,
                                color: Colors.white)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.message_outlined,
                                color: Colors.white)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.person, color: Colors.white))
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
