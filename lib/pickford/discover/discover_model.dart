import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pickford/includes/background_gradiente/background_gradiente_widget.dart';
import '/pickford/includes/menu/menu_widget.dart';
import 'dart:ui';
import 'discover_widget.dart' show DiscoverWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DiscoverModel extends FlutterFlowModel<DiscoverWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for backgroundGradiente component.
  late BackgroundGradienteModel backgroundGradienteModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    backgroundGradienteModel =
        createModel(context, () => BackgroundGradienteModel());
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    backgroundGradienteModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    menuModel.dispose();
  }
}
