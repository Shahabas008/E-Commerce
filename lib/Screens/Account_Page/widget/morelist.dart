import 'package:ecommerce/Screens/Account_Page/model/more_setting_list_model.dart';
import 'package:flutter/material.dart';

class MoreSettingsList extends StatelessWidget {
  MoreSettingsList({Key? key}) : super(key: key);

  List<MoreSettingListModel> moreSettingsListName = [
    MoreSettingListModel("setting", Icons.settings),
    MoreSettingListModel("Orders", Icons.add_shopping_cart_outlined),
    MoreSettingListModel("Community", Icons.people_outline),
    MoreSettingListModel("Support", Icons.support_agent_outlined),
    MoreSettingListModel("Share", Icons.share_outlined),
    MoreSettingListModel("About us", Icons.question_mark_rounded),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: moreSettingsListName.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(
                moreSettingsListName[index].listIcon,
                color: Colors.black,
              ),
              title: Text(
                moreSettingsListName[index].listName,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto",
                ),
              ),
            );
          }),
    );
  }
}
