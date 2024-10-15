import 'dart:math';

import 'package:flutter/material.dart';
import 'package:smart_home/smart_devices_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List mySmartDevices = [
    ["Smart Light", "assets/images smarth light.png", true],
    ["Smart Ac", "assets/images ac.jpg", true],
    [
      "Smart Tv",
      "assets/smart-tv-remote-icon-black-600nw-2224369365.webp",
      true
    ],
    ["Smart Fan", "assets/images fan.png", true],
  ];
  void powerSwitchChanged(bool value, int index) {
    setState(() {
      mySmartDevices[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 127, 117, 117),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 127, 117, 117),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Padding(
              padding: EdgeInsets.only(right: 330),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 23, top: 60),
                child: Text(
                  'Welcome Home ,',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 2,
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'MITCH KOKO',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              thickness: 0.5,
              height: 1,
              indent: sqrt1_2,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 250),
            child: Text(
              'Smart Devices',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: GridView.builder(
                itemCount: mySmartDevices.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return SmartDevicesBox(
                    smartDeviceName: mySmartDevices[index][0],
                    iconPath: mySmartDevices[index][1],
                    poweron: mySmartDevices[index][2],
                    onChanged: (value) => powerSwitchChanged(value, index),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
