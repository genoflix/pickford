import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pickford/includes/background_gradiente/background_gradiente_widget.dart';
import '/pickford/includes/menu/menu_widget.dart';
import 'dart:ui';
import 'home_clean_widget.dart' show HomeCleanWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeCleanModel extends FlutterFlowModel<HomeCleanWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for backgroundGradiente component.
  late BackgroundGradienteModel backgroundGradienteModel;
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
    menuModel.dispose();
  }
}
