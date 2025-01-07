import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pickford/includes/background_gradiente/background_gradiente_widget.dart';
import 'dart:ui';
import 'terms_widget.dart' show TermsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TermsModel extends FlutterFlowModel<TermsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
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
