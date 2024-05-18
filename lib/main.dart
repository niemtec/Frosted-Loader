import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frosted_loader/control_buttons.dart';
import 'package:frosted_loader/screens/home_page.dart';
import 'package:frosted_loader/progress_bloc/progress_bloc.dart';
import 'package:frosted_loader/progress_bloc/progress_state.dart';
import 'package:frosted_loader/vertical_rain_progress.dart';
import 'package:newton_particles/newton_particles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frosted Loaders Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

