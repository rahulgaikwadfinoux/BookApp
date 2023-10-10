import 'package:bookapp/book_app.dart';
import 'package:bookapp/constants/debug_mode.dart';
import 'package:bookapp/utils/custom_plugins.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void runBookAPP(BookAppModeEnum mymode) {
  if (mymode == BookAppModeEnum.debug || mymode == BookAppModeEnum.devlopment) {
    runApp(
      DevicePreview(
        enabled: true,
        tools: const [
          ...DevicePreview.defaultTools,
          CustomPlugin(),
        ],
        builder: (context) => BookApp(mymode: mymode),
      ),
    );
  } else {
    runApp(BookApp(mymode: mymode));
  }
}
