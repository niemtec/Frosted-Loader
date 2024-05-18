import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frosted_loader/progress_bloc/progress_bloc.dart';
import 'package:frosted_loader/progress_bloc/progress_event.dart';

class ControlButtons extends StatelessWidget {
  const ControlButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<ProgressBloc>(context).add(
                    DecreaseProgress());
              },
              child: const Text('-'),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<ProgressBloc>(context).add(
                    IncreaseProgress());
              },
              child: const Text('+'),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}