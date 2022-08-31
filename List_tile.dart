import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class list_tile_example extends StatelessWidget {
  const list_tile_example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "List Tile Example",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 100,
          color: Colors.lightGreenAccent,
          child: Center(
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage(
                  "images/car.jpg",
                ),
              ),
              title: const Text(
                "Muhammad Sohaib",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: const Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Container(
                color: Colors.brown,
                child: TextButton(
                  onPressed: () {
                    // ignore: avoid_print
                    print("object");
                  },
                  child: const Text(
                    "Details",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
