import 'package:data_save/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'fade_animations.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key key,
    @required AnimationController startController,
    @required AnimationController endController,
  })  : _startController = startController,
        _endController = endController,
        super(key: key);

  final AnimationController _startController;
  final AnimationController _endController;

  @override
  Widget build(BuildContext context) {
    return FadeFromUpAnimation(
      begin: 0.0,
      end: 0.3,
      // up: 0.8,
      startController: _startController,
      endController: _endController,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome back,',
                style: TextStyle(color: kSwatch5),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                'Astha',
                style: TextStyle(
                    color: kSwatch5, fontWeight: FontWeight.bold, fontSize: 16),
              )
            ],
          ),
          const Spacer(),
          Neumorphic(
            boxShape: const NeumorphicBoxShape.circle(),
            padding: const EdgeInsets.all(10),
            style: const NeumorphicStyle(
                color: kSwatch2, shape: NeumorphicShape.concave),
            child: const CircleAvatar(
              radius: 15,
              backgroundColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
