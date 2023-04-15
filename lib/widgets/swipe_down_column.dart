import 'package:AtaAkjemal/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SwipeDownColumn extends StatelessWidget {
  const SwipeDownColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ArrowDownWidget(
          delayStart: 300,
        ),
        ArrowDownWidget(
          delayStart: 400,
        ),
        ArrowDownWidget(
          delayStart: 500,
        ),
      ],
    );
  }
}
