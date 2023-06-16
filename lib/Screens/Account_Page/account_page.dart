import 'package:ecommerce/Screens/Account_Page/widget/morelist.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              104.0,
              82.0,
              104.0,
              56.0,
            ),
            child: Column(
              children: [
                const Center(
                  child: CircleAvatar(
                    radius: 80.0,
                    backgroundImage: AssetImage("assets/images/user2.png"),
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  "Alex Marshall",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto",
                  ),
                ),
                const Text(
                  "@alex_marshall",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto",
                    color: Color(
                      0xFF707070,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 36.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3669C9),
                    foregroundColor: Colors.white,
                    fixedSize: const Size(141.0, 36.0),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontFamily: "DMSans",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 0.5,
            thickness: 1,
            color: Color(0xFFE7E7E7),
          ),
          MoreSettingsList(),
        ],
      ),
    );
  }
}
