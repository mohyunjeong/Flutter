import 'package:flutter/material.dart';

class ExBanner extends StatelessWidget {
  const ExBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: 90,
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Expanded( // 텍스트가 들어갈 공간
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '아이유와 도미너를 더 맛있게',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      '도미노 매니아되고 ~40% 할인받자!',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
              Expanded( // 이미지가 들어갈 공간
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Image.asset(
                      'image/domino.png',
                      alignment: Alignment.centerRight
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
