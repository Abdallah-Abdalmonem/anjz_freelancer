import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/refusee_reason_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'review_technical_account_widget.dart' show ReviewTechnicalAccountWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ReviewTechnicalAccountModel
    extends FlutterFlowModel<ReviewTechnicalAccountWidget> {
  ///  Local state fields for this page.

  List<FFUploadedFile> iamges = [];
  void addToIamges(FFUploadedFile item) => iamges.add(item);
  void removeFromIamges(FFUploadedFile item) => iamges.remove(item);
  void removeAtIndexFromIamges(int index) => iamges.removeAt(index);
  void insertAtIndexInIamges(int index, FFUploadedFile item) =>
      iamges.insert(index, item);
  void updateIamgesAtIndex(int index, Function(FFUploadedFile) updateFn) =>
      iamges[index] = updateFn(iamges[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'xkmku6ff' /* الاسم مطلوب */,
      );
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'v4e8nttv' /* العنوان مطلوب */,
      );
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  NotificationsRecord? refNotification;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  RequesToJoinAsaTechnicianRecord? reqDocument;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController3Validator = _textController3Validator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();
  }
}
