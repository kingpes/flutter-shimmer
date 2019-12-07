import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Unlock extends StatelessWidget {
  final days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  final months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  @override
  Widget build(BuildContext context) {
    final time = DateTime.now();
    final hour = time.hour;
    final minute = time.minute;
    final day = time.weekday;
    final month = time.month;
    final dayInMonth = time.day;
    return Scaffold(
      appBar: AppBar(
        title: Text('Slide To Unlock'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://flutterlibrary.page.link/bg7",
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 48.0,
            right: 0.0,
            left: 0.0,
            child: Center(
              child: Column(
                children: [
                  Text(
                    '${hour < 10 ? '0$hour' : '$hour'}:${minute < 10 ? '0$minute' : '$minute'}',
                    style: TextStyle(
                      fontSize: 60.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                  ),
                  Text(
                    '${days[day - 1]}, ${months[month - 1]} $dayInMonth',
                    style: TextStyle(fontSize: 24.0, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 24.0,
              left: 0.0,
              right: 0.0,
              child: Center(
                child: Opacity(
                  opacity: 0.99,
                  child: Shimmer.fromColors(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.chevron_right, size: 40),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        ),
                        Text(
                          'Slide to unlock',
                          style:
                              TextStyle(fontSize: 28.0, color: Colors.white),
                        )
                      ],
                    ),
                    baseColor: Colors.white,
                    highlightColor: Colors.black12,
                    loop: 0,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
