import 'package:flutter/material.dart';

import '../../../../res/constants.dart';

class DrawerImage extends StatelessWidget {
  const DrawerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => Dialog(
            backgroundColor: Colors.transparent,
            child: InteractiveViewer(
              panEnabled: true,
              boundaryMargin: const EdgeInsets.all(20),
              minScale: 0.5,
              maxScale: 4.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/sssssri.jpg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        );
      },
      child: Container(
        height: 100,
        width: 100,
        padding: const EdgeInsets.all(defaultPadding / 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            colors: [
              Colors.pink,
              Colors.blue.shade900,
            ],
          ),
          boxShadow: const [
            BoxShadow(color: Colors.pink, blurRadius: 10, offset: Offset(0, 2)),
            BoxShadow(color: Colors.blue, blurRadius: 10, offset: Offset(0, -2)),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Transform.rotate(
            angle: 0.1,
            child: Image.asset(
              'assets/images/sssssri.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
