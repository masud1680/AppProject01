import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  dynamic doingData = [
    {
      "image_file_name": "facial-massage.png",
      "product_name": "Facial"
    },
    {
      "image_file_name": "hair.png",
      "product_name": "Hair"
    },
    {
      "image_file_name": "hair-dye.png",
      "product_name": "Hair Dye"
    },
    {
      "image_file_name": "make-up.png",
      "product_name": "Makeup"
    },
    {
      "image_file_name": "manicure.png",
      "product_name": "Manicure"
    },
    {
      "image_file_name": "massage.png",
      "product_name": "Spa"
    },
    {
      "image_file_name": "massage (1).png",
      "product_name": "Massage"
    },
    {
      "image_file_name": "waxing.png",
      "product_name": "Waxing"
    }
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // user name and search
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 6,
                      children: [
                        SizedBox(height: 12),
                        Text(
                          "Hello, Masud",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          "Find the service you want and treat yourself",
                          style: TextStyle(
                            color: Color(0xFF737373),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF116774),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Icon(Icons.search, color: Colors.white, size: 30),
                      ),
                    ),
                  ],
                ),
              ),
          
              // Banner section
              SizedBox(
                height: 190,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20, left: 18),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://www.plasticpollutioncoalition.org/wp-content/uploads/FliptheScriptReport.jpg",
                              ),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 150,
                          width: 310,
                          child: Row(
                            children: [
                              //title & button
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 25,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Look more beautiful and \nsave more discount",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
          
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFF9E6),
                                        borderRadius: BorderRadiusGeometry.only(
                                          bottomRight: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                      height: 30,
                                      width: 150,
                                      child: Center(
                                        child: Text(
                                          "Get offer now!",
                                          style: TextStyle(
                                            color: Color(0xFFF0A148),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Discount circle
                              CircleAvatar(
                                backgroundColor: Color(0xFFF0A148),
                                radius: 45,
                                child: Transform.rotate(
                                  angle: -0.3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Up to",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        "50%",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 60,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadiusGeometry.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            height: 30,
                            width: 20,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 60,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadiusGeometry.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            height: 30,
                            width: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          
              // Doing round cards
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "What do you want to do ?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
          
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                child: SizedBox(
                  height: 220,
                  child: GridView.builder(
          
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 4,
                     childAspectRatio: 0.75
                   ),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Column(
                        spacing: 5,
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xFFE2F5FB),
                            radius: 35,
                            child: Image(
                              image: AssetImage("assets/home/${doingData[index]["image_file_name"]}"),
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Text(
                            "${doingData[index]["product_name"]}",
                            style: TextStyle(
                              color: Color(0xFF547C8A),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
          
              // Follow salons cards
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Salon you follow",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                        decoration: BoxDecoration(
                
                            image: DecorationImage(
                                image: AssetImage("assets/home/girl_profile.png"),
                                fit: BoxFit.fill
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Color(0xFF4ABDD1),
                                width: 3
                            )
                        ),
                
                        height: 80,
                        width: 80,
                      );
                    },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
