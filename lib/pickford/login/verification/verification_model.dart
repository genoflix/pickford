import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pickford/includes/background_gradiente/background_gradiente_widget.dart';
import 'dart:ui';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'verification_widget.dart' show VerificationWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VerificationModel extends FlutterFlowModel<VerificationWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for backgroundGradiente component.
  late BackgroundGradienteModel backgroundGradienteModel;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    backgroundGradienteModel =
        createModel(context, () => BackgroundGradienteModel());
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    backgroundGradienteModel.dispose();
    pinCodeController?.dispose();
  }
}
