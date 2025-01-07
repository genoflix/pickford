import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'background_gradiente_model.dart';
export 'background_gradiente_model.dart';

class BackgroundGradienteWidget extends StatefulWidget {
  const BackgroundGradienteWidget({super.key});

  @override
  State<BackgroundGradienteWidget> createState() =>
      _BackgroundGradienteWidgetState();
}

class _BackgroundGradienteWidgetState extends State<BackgroundGradienteWidget> {
  late BackgroundGradienteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BackgroundGradienteModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            FlutterFlowTheme.of(context).black,
            FlutterFlowTheme.of(context).blueblack,
            FlutterFlowTheme.of(context).black
          ],
          stops: [0.0, 0.5, 1.0],
          begin: AlignmentDirectional(0.0, -1.0),
          end: AlignmentDirectional(0, 1.0),
        ),
      ),
    );
  }
}
