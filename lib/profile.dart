import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Icon(Icons.keyboard_backspace),
        ),
        centerTitle: true,
        title: Text(
          "My Profile",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.settings,
              size: 28,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            spacing: 20,
            children: [
              // profile image & name edit section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 15,
                children: [
                  Stack(
                    children: [
                      // profile image
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage("https://blog-pixomatic.s3.appcnt.com/image/22/01/26/61f166e1377d4/_orig/pixomatic_1572877223091.png")
                      ),

                      // icon
                      Positioned(
                          bottom: 0,
                          right: 2,
                          child: CircleAvatar(
                            backgroundColor:Colors.white,
                            child: Icon(Icons.camera_alt_outlined),
                          )
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // user name
                      Text(
                        "Masud Hasan",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      // user Email
                      Text(
                        "admin@gmail.com",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 10),
                      // Profile Edit button
                      InkWell(
                        onTap: () {
                          print("Clickeed");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10)
                          ),

                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            child: Text(
                              "Edit Profile",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),

              // list all options
              Column(
                spacing: 5,
                children: [
                  ListTile(

                    onTap: () {

                    },
                    leading: Icon(
                      Icons.favorite_border,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF737373),
                    ),
                    title: Text(
                      "Favourites",
                      style: TextStyle(
                        color: Color(0xFF404040),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: InkWell(
                      borderRadius: BorderRadius.circular(20),

                      onTap: () {
                        print("Ditels");
                      },
                      child: Icon(
                        Icons.chevron_right_rounded,
                        size: 30,
                      ),
                    ),

                  ),
                  ListTile(

                    onTap: () {

                    },
                    leading: Icon(
                      Icons.cloud_download_outlined,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF737373),
                    ),
                    title: Text(
                      "Downloads",
                      style: TextStyle(
                        color: Color(0xFF404040),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: InkWell(
                      borderRadius: BorderRadius.circular(20),

                      onTap: () {
                        print("Ditels");
                      },
                      child: Icon(
                        Icons.chevron_right_rounded,
                        size: 30,
                      ),
                    ),

                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    color: Color(0xFFF5F5F4),
                    height: 2,
                    width: double.infinity,
                  ),
                  ListTile(

                    onTap: () {

                    },
                    leading: Icon(
                      Icons.language,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF737373),
                    ),
                    title: Text(
                      "Language",
                      style: TextStyle(
                        color: Color(0xFF404040),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: InkWell(
                      borderRadius: BorderRadius.circular(20),

                      onTap: () {
                        print("Ditels");
                      },
                      child: Icon(
                        Icons.chevron_right_rounded,
                        size: 30,
                      ),
                    ),

                  ),
                  ListTile(

                    onTap: () {

                    },
                    leading: Icon(
                      Icons.location_on_outlined,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF737373),
                    ),
                    title: Text(
                      "Location",
                      style: TextStyle(
                        color: Color(0xFF404040),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: InkWell(
                      borderRadius: BorderRadius.circular(20),

                      onTap: () {
                        print("Ditels");
                      },
                      child: Icon(
                        Icons.chevron_right_rounded,
                        size: 30,
                      ),
                    ),

                  ),
                  ListTile(

                    onTap: () {

                    },
                    leading: Icon(
                      Icons.subscriptions_outlined,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF737373),
                    ),
                    title: Text(
                      "Subscription",
                      style: TextStyle(
                        color: Color(0xFF404040),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: InkWell(
                      borderRadius: BorderRadius.circular(20),

                      onTap: () {
                        print("Ditels");
                      },
                      child: Icon(
                        Icons.chevron_right_rounded,
                        size: 30,
                      ),
                    ),

                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    color: Color(0xFFF5F5F4),
                    height: 2,
                    width: double.infinity,
                  ),
                  ListTile(

                    onTap: () {

                    },
                    leading: Icon(
                      Icons.delete_outline_rounded,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF737373),
                    ),
                    title: Text(
                      "Clear Cash",
                      style: TextStyle(
                        color: Color(0xFF404040),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: InkWell(
                      borderRadius: BorderRadius.circular(20),

                      onTap: () {
                        print("Ditels");
                      },
                      child: Icon(
                        Icons.chevron_right_rounded,
                        size: 30,
                      ),
                    ),

                  ),
                  ListTile(

                    onTap: () {

                    },
                    leading: Icon(
                      Icons.access_time_sharp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF737373),
                    ),
                    title: Text(
                      "Clean history",
                      style: TextStyle(
                        color: Color(0xFF404040),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: InkWell(
                      borderRadius: BorderRadius.circular(20),

                      onTap: () {
                        print("Ditels");
                      },
                      child: Icon(
                        Icons.chevron_right_rounded,
                        size: 30,
                      ),
                    ),

                  ),
                  ListTile(

                    onTap: () {

                    },
                    leading: Icon(
                      Icons.logout,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    ),
                    title: Text(
                      "Log out",
                      style: TextStyle(
                        color: Color(0xFF404040),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: InkWell(
                      borderRadius: BorderRadius.circular(20),

                      onTap: () {
                        print("Ditels");
                      },
                      child: Icon(
                        Icons.chevron_right_rounded,
                        size: 30,
                      ),
                    ),

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
