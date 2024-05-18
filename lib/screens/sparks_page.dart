import 'package:aurora/aurora.dart';
import 'package:flutter/material.dart';
import 'package:frosted_loader/sparks_progress.dart';
import 'package:newton_particles/newton_particles.dart';

class SparksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Aurora(
          size: 2000,
          colors: [Colors.purple, Colors.deepPurple,],
      )
    );
  }
}