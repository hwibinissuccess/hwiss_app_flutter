import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/common/data/preference/app_preferences.dart';
import 'package:fast_app_base/common/widget/w_big_button.dart';
import 'package:fast_app_base/screen/main/tab/stock/setting/w_switch_menu.dart';
import 'package:fast_app_base/screen/opensource/s_opensource.dart';
import 'package:flutter/material.dart';

import '../../../../../common/data/preference/prefs.dart';
import 'd_number.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: '설정'.text.make(),
      ),
      body: ListView(
        children: [
          // switch
          Obx(
            () => SwitchMenu(
              '푸시 설정',
              Prefs.isPushOnRx.get(),
              onChanged: (isOn) {
                Prefs.isPushOnRx.set(isOn);
              },
            ),
          ),

          //slider
          Obx(
            () => Slider(
              value: Prefs.sliderPosition.get(),
              onChanged: (value) {
                Prefs.sliderPosition.set(value);
              },
            ),
          ),
          //date time
          Obx(
            () => BigButton(
              '날짜 ${Prefs.birthday.get() == null ? "" : Prefs.birthday.get()?.formattedTime}',
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  firstDate: DateTime.now().subtract(90.days),
                  lastDate: DateTime.now().add(90.days),
                  initialDate: DateTime.now(),
                );
                if (date != null) {
                  Prefs.birthday.set(date);
                }
              },
            ),
          ),

          //number dialog
          Obx(
            () => BigButton(
              '저장된 숫자 ${Prefs.number.get()}',
              onTap: () async {
                final number = await NumberDialog().show();
                if (number != null) {
                  Prefs.number.set(number);
                }
              },
            ),
          ),

          BigButton(
            '오픈소스화면',
            onTap: () async {
              Nav.push(OpensourceScreen());
            },
          ),
        ],
      ),
    );
  }
}
