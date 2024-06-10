import 'package:flutter/material.dart';

class ExIcon extends StatelessWidget {
  const ExIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Stack(
              children: [
                Icon(
                  Icons.favorite_border_outlined,
                  size: 90,
                  color: Colors.red,
                ),
                Positioned(
                  top: 10,
                  left: 70,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.circle, // 크기가 지정되어 있어야 보임
                        color: Colors.black87,
                      ),
                    ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
