import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String? iconPath;
  final String title;
  final Widget? valueWidget;
  final bool? isVisibleArrow;
  final double? verticalPadding;
  final void Function()? onTap;

  const ListItem(
      {super.key,
        this.iconPath,
        required this.title,
        this.valueWidget,
        this.isVisibleArrow,
        this.verticalPadding,
        this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: 20, vertical: verticalPadding ?? 12),
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 2.0),
                child: Text(
                  title,
                  textScaleFactor: 1.0,
                  style: const TextStyle(
                    color: Color(0xff2a2a2a),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            valueWidget ?? const SizedBox(),
            Visibility(
              visible: isVisibleArrow == true,
              child: const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
