import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/settings/controllers/settings_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../values/text_styles.dart';

class AlertWidget extends StatelessWidget {
  SettingsController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18.0, bottom: 4.0),
          child: Row(
            children: [
              Obx(() => InkWell(
                    child: controller.selectedLangCode.contains('en')
                        ? const Icon(Icons.radio_button_checked)
                        : const Icon(Icons.radio_button_off),
                    onTap: () {
                      controller.updateLanguage('en');
                    },
                  )),
              const SizedBox(
                width: 8.0,
              ),
              InkWell(
                onTap: () {
                  controller.updateLanguage('en');
                },
                child: const Text(
                  'English',
                  style: settingsItemStyle,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0, bottom: 0.0),
          child: Row(children: [
            Obx(
              () => InkWell(
                child: controller.selectedLangCode.contains('bn')
                    ? const Icon(Icons.radio_button_checked)
                    : const Icon(Icons.radio_button_off),
                onTap: () {
                  controller.updateLanguage('bn');
                },
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            InkWell(
                onTap: () {
                  controller.updateLanguage('bn');
                },
                child: const Text('বাংলা', style: settingsItemStyle)),
          ]),
        ),
      ],
    );
  }
}
