import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pickford/includes/background_gradiente/background_gradiente_widget.dart';
import 'dart:ui';
import 'splash_widget.dart' show SplashWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SplashModel extends FlutterFlowModel<SplashWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for backgroundGradiente component.
  late BackgroundGradienteModel backgroundGradienteModel;

  @override
  void initState(BuildContext context) {
    backgroundGradienteModel =
        createModel(context, () => BackgroundGradienteModel());
  }

  @override
  void dispose() {
    backgroundGradienteModel.dispose();
  }
}
