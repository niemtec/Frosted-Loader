import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frosted_loader/progress_bloc/progress_bloc.dart';
import 'package:frosted_loader/progress_bloc/progress_state.dart';
import 'package:frosted_loader/vertical_progress_bar.dart';
import 'package:newton_particles/newton_particles.dart';

import 'control_buttons.dart';

class VerticalRainProgress extends StatelessWidget {
  const VerticalRainProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProgressBloc(),
      child: Stack(
        children: [
          BlocBuilder<ProgressBloc, ProgressState>(
            builder: (context, state) {
              return VerticalProgressBar(
                progress: state.progress.toInt(),
                duration: 500,
              );
            },
          ),
          Newton(
            activeEffects: [
              RainEffect(
                particleConfiguration: ParticleConfiguration(
                  shape: CircleShape(),
                  size: const Size(50, 50),
                  color: const SingleParticleColor(color: Colors.blue),
                ),
                effectConfiguration: const EffectConfiguration(),
              )
            ],
          ),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                ),
              ),
            ),
          ),
          BlocBuilder<ProgressBloc, ProgressState>(
            builder: (context, state) {
              return Center(child: CurrentReadingCard(state.progress.toInt()));
            },
          ),
          const ControlButtons(),
        ],
      ),
    );
  }
}

Widget CurrentReadingCard(int progress) {
  return SizedBox(
    width: 200,
    height: 100,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black12,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(16),
            color: Colors.black.withOpacity(0.1),
          ),
          child: Center(
            child: Text(
              "${progress.toInt()}%",
              style: const TextStyle(fontSize: 32),
            ),
          ),
        ),
      ),
    ),
  );
}
