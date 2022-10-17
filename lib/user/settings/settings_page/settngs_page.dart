// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:fashion_style/core/l10n/generated/l10n.dart';
import 'package:fashion_style/user/settings/helper/language_helper.dart';
import 'package:fashion_style/user/user_interface.dart';
import 'package:flutter/material.dart';

import '../../../core/service/settings_service.dart';

class SettngsPage extends UserInterface {

  late LanguageEnum currentLang;

  SettngsPage({Key? key}) : super(key: key) {
    currentLang = LanguageHelper.getCurrentLang();
  }
  
  @override
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: GestureDetector( 
        onTap: () => showLangDialog(context),
        child: Row(
          children: [
            Icon(Icons.language ,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 5.0),
              child: Text(
                S.current.user_setting_widget_change_language_language_title,
              ),
            ),
            Spacer(),
            Text(LanguageHelper.getCurrentLocalName() /* ,style: Themes().style(74) */,),
            Icon(
              SettingsService().isRTL ? Icons.keyboard_arrow_left : Icons.keyboard_arrow_right,
              /* color: Themes().color(2), */
            ),
          ],
        ),
      ),
    );
    /* return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.language),
            SizedBox(
              width: 15,
            ),
            PopupMenuButton(
              child: Text('choose language'),
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  child: Text('english'),
                  onTap: (){},
                ),
                PopupMenuItem(
                  child: Text('arabic'),
                  onTap: (){},
                ),
              ]
                
            ),
          ],
        ),
      ],
    ); */
  }
  
  @override
  String get title => 'setting';

void showLangDialog(BuildContext context){
    currentLang = LanguageHelper.getCurrentLang();
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text('Choose Language',),
          backgroundColor: Colors.white,
          contentPadding: EdgeInsets.fromLTRB(4, 8, 4, 8),
          // actionsPadding: EdgeInsets.all(4),
          content: StatefulBuilder(
            builder: (context, setState) {
              // ignore: sized_box_for_whitespace
              return Container(
                height: 150,
                child: Column(
                  children: [
                    ListTile(
                      leading: Radio<LanguageEnum>(
                        value: LanguageEnum.English,
                        groupValue: currentLang,
                        onChanged: (value) {
                          setState(() {
                            currentLang = value!;
                          });
                        },
                      ),
                      title: Text(S.current.user_setting_widget_change_language_english_text)
                    ),
                    ListTile(
                      leading: Radio<LanguageEnum>(
                        value: LanguageEnum.Arabic,
                        groupValue: currentLang,
                        onChanged: (value) {
                          setState(() {
                            currentLang = value!;
                          });
                        },
                      ),
                      title: Text(S.current.user_setting_widget_change_language_arabic_text)
                    ),
                  ],
                ),
              );
            },
          ), 
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(S.current.cansel),
              
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                LanguageHelper.saveSelectedLang(currentLang);
                
              },
              child: Text(S.current.save),
            ),
          ],
        );
      }
    );
  }
}