import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,top: 0,right: 0,
              bottom: MediaQuery.of(context).size.height * 0.09,
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    margin: const EdgeInsets.only(bottom: 25),
                    decoration: ShapeDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.elliptical(150, 80),
                            bottomLeft: Radius.circular(20)),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: ShapeDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                  shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6)))),
                              child: IconButton(
                                  padding: const EdgeInsets.all(0),
                                  onPressed: () {},
                                  icon: const BackButton(color: Colors.white,)),
                            ),
                            const Text(
                              "Details",
                              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              decoration:const  ShapeDecoration(

                                  shape:  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(6)))),
                              child: IconButton(
                                  padding: const EdgeInsets.all(0),
                                  onPressed: () {},
                                  icon:  Icon(
                                    Icons.arrow_back,
                                    color: Theme.of(context).primaryColor,
                                  )),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Dr Jenny Wilson",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.thirteen_mp,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "Dentist",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text("4.9",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18))
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text("visiting hour",
                                    style: TextStyle(color: Colors.white)),
                                const Text("11AM - 12PM",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text("Total patient",
                                    style: TextStyle(color: Colors.white)),
                                const Text("1200+",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            Expanded(
                              child: Image.asset(
                                "assets/img/doctor1.jpg",
                                fit: BoxFit.contain,
                                scale: 2,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),


                 const  Padding(
                    padding:  EdgeInsets.only(left: 15.0),

                    child: Text("Description", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  ),
                  const Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("A dentist is a medical professional hwo specialises in "
                        "dentistry, the diagnosis, and treatment of diseases and"
                        " conditions of tooth. This helps to prevent complications "
                        "of the patient's health"),
                  ),
                  Padding(padding:const  EdgeInsets.all(15.0),child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Schedule", style: TextStyle(fontSize: 20),),
                        Text("<June>", style: TextStyle(fontSize:20,color: Theme.of(context).primaryColor),)
                      ],
                    ),)

                ],
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                height: MediaQuery.of(context).size.height * 0.08,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration:const  ShapeDecoration(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                )
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Container(),
               const  Text("Book an appointment", style: TextStyle(color: Colors.white),),
               const  Icon(Icons.arrow_forward_ios_outlined, color: Colors.white,)
              ],
            ),))
          ],
        ),
      ),
    );
  }
}
