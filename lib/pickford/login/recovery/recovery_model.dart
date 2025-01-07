import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pickford/includes/background_gradiente/background_gradiente_widget.dart';
import 'dart:ui';
import 'recovery_widget.dart' show RecoveryWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RecoveryModel extends FlutterFlowModel<RecoveryWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for backgroundGradiente component.
  late BackgroundGradienteModel backgroundGradienteModel;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '07bfwsds' /* Fill in this field */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    backgroundGradienteModel =
        createModel(context, () => BackgroundGradienteModel());
    emailTextControllerValidator = _emailTextControllerValidator;
  }

  @override
  void dispose() {
    backgroundGradienteModel.dispose();
    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
