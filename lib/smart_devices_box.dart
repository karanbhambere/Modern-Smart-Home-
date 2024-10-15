import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartDevicesBox extends StatelessWidget {
  final String iconPath;
  final bool poweron;
  final String smartDeviceName;
  void Function(bool)? onChanged;

  SmartDevicesBox({
    super.key,
    required this.iconPath,
    required this.poweron,
    required this.smartDeviceName,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: poweron ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                iconPath,
                height: 65,
                // color: poweron ? Colors.white : Colors.grey,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      smartDeviceName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: poweron ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: pi / 2,
                  child: CupertinoSwitch(
                    value: poweron,
                    onChanged: onChanged,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
