import 'package:AtaAkjemal/utils/utils.dart';
import 'package:AtaAkjemal/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DialogTextButton extends StatelessWidget {
  const DialogTextButton({
    Key? key,
    required this.copiedText,
    required this.text,
  }) : super(key: key);

  final String copiedText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: dialogColor,
            content: TextWidget(
              text: 'copied'.tr,
              textAlign: TextAlign.center,
              fontSize: Dimensions.textSize18,
            ),
            duration: const Duration(seconds: 1),
          ),
        );
        await Clipboard.setData(
          ClipboardData(text: copiedText),
        );
      },
      child: TextWidget(
        text: text.tr,
        textAlign: TextAlign.center,
        fontSize: Dimensions.textSize18,
      ),
    );
  }
}
