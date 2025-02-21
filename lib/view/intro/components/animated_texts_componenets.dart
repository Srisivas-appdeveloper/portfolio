import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../res/constants.dart';

class AnimatedImageContainer extends StatefulWidget {
  const AnimatedImageContainer({Key? key, this.height = 250, this.width = 250})
      : super(key: key);
  final double? width;
  final double? height;

  @override
  AnimatedImageContainerState createState() => AnimatedImageContainerState();
}

class AnimatedImageContainerState extends State<AnimatedImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _flipController;
  late Animation<double> _flipAnimation;
  int _currentAnimationIndex = 0; // Keeps track of which animation is displayed

  final List<String> _animationPaths = [
    'assets/animation/Animation - 1738324979795.json',
    'assets/animation/Animation - 1738322173431.json',
  ];

  @override
  void initState() {
    super.initState();
    _flipController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _flipAnimation = Tween<double>(begin: 0.0, end: pi)
        .animate(CurvedAnimation(parent: _flipController, curve: Curves.easeInOut));

    // Start flipping animation cycle
    Future.delayed(const Duration(seconds: 3), () {
      _startAutoFlip();
    });
  }

  void _startAutoFlip() async {
    while (mounted) {
      await Future.delayed(const Duration(seconds: 3)); // Wait before flip starts
      if (mounted) {
        await _flipController.forward(); // Flip animation forward
        setState(() {
          _currentAnimationIndex = (_currentAnimationIndex + 1) % _animationPaths.length;
        });
        await _flipController.reverse(); // Flip animation back
      }
    }
  }

  @override
  void dispose() {
    _flipController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _flipAnimation,
      builder: (context, child) {
        final flipValue = _flipAnimation.value;
        final isFlipped = flipValue > (pi / 2);

        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001) // Perspective effect
            ..rotateY(flipValue),
          child: Container(
            height: widget.height!,
            width: widget.width!,
            padding: const EdgeInsets.all(defaultPadding / 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(colors: [
                Colors.pinkAccent,
                Colors.blue,
              ]),
              boxShadow: const [
                BoxShadow(
                  color: Colors.pink,
                  offset: Offset(-2, 0),
                  blurRadius: 20,
                ),
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(2, 0),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Lottie.asset(
                _animationPaths[_currentAnimationIndex],
                fit: BoxFit.contain,
              ),
            ),
          ),
        );
      },
    );
  }
}
