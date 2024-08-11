import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'auth4_welcome_widget.dart' show Auth4WelcomeWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Auth4WelcomeModel extends FlutterFlowModel<Auth4WelcomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for passWord widget.
  FocusNode? passWordFocusNode;
  TextEditingController? passWordTextController;
  late bool passWordVisibility;
  String? Function(BuildContext, String?)? passWordTextControllerValidator;
  // State field(s) for passWord2 widget.
  FocusNode? passWord2FocusNode;
  TextEditingController? passWord2TextController;
  late bool passWord2Visibility;
  String? Function(BuildContext, String?)? passWord2TextControllerValidator;

  @override
  void initState(BuildContext context) {
    passWordVisibility = false;
    passWord2Visibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    emailTextController?.dispose();

    passWordFocusNode?.dispose();
    passWordTextController?.dispose();

    passWord2FocusNode?.dispose();
    passWord2TextController?.dispose();
  }
}
