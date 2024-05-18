import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frosted_loader/progress_bloc/progress_bloc.dart';
import 'package:frosted_loader/progress_bloc/progress_state.dart';
import 'package:newton_particles/newton_particles.dart';

import 'control_buttons.dart';

class SparksProgress extends StatelessWidget {
  const SparksProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProgressBloc(),
      child: Column(

        children: [
          Stack(
            children: [
              // BlocBuilder<ProgressBloc, ProgressState>(
              //   builder: (context, state) {
              //
              //   },
              // ),

              // ClipRRect(
              //   child: BackdropFilter(
              //     filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
              //     child: Container(
              //       width: double.infinity,
              //       height: double.infinity,
              //       decoration: BoxDecoration(
              //         color: Colors.white.withOpacity(0.1),
              //       ),
              //     ),
              //   ),
              // ),
              BlocBuilder<ProgressBloc, ProgressState>(
                builder: (context, state) {
                  return Center(
                    child: Text(
                      "${state.progress.toInt()}%",
                      style: const TextStyle(fontSize: 32),
                    ),
                  );
                },
              ),
              const ControlButtons(),
            ],
          ),
        ],
      ),
    );
  }
}
