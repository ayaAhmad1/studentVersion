import 'package:flutter/material.dart';

class NavigateBar extends StatelessWidget {
  final int currentPage;
  final int totalPageCount;
  final Color mainColor;
  final VoidCallback onPrevious;
  final VoidCallback onNext;
  final ValueChanged<int> onDotTap;

  NavigateBar({
    required this.currentPage,
    required this.totalPageCount,
    required this.mainColor,
    required this.onPrevious,
    required this.onNext,
    required this.onDotTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: onPrevious,
            child: Image.asset('assets/back.png'),
          ),
          Row(
            children: List.generate(totalPageCount, (index) {
              return GestureDetector(
                onTap: () => onDotTap(index),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Icon(
                    Icons.circle,
                    color: currentPage == index ? mainColor : Colors.grey[350],
                  ),
                ),
              );
            }),
          ),
          TextButton(
            child: Image.asset('assets/forward.png'),
            onPressed: onNext,
          ),
        ],
      ),
    );
  }
}
