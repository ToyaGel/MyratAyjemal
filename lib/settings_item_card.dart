import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsItemCard extends StatelessWidget {
  const SettingsItemCard({
    Key? key,
    required this.title,
    this.subtitle,
    required this.icon,
    required this.widget,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final String icon;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Color(0xff424242),
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
      ),
      child: Row(
        children: [
          Icon(Icons.language),
          const SizedBox(width: 18.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.titleMedium),
                    if (subtitle != null)
                      Text(subtitle!, style: Theme.of(context).textTheme.bodySmall)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: widget,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
