import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/select_category_widget.dart';
import '/components/terms_and_conditions_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'create_technical_account_widget.dart' show CreateTechnicalAccountWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateTechnicalAccountModel
    extends FlutterFlowModel<CreateTechnicalAccountWidget> {
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
        'wzmjdcbe' /* الاسم مطلوب */,
      );
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'hecbq4fu' /* العنوان مطلوب */,
      );
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '32x5x9ge' /* ادخل جنسيتك */,
      );
    }

    return null;
  }

  // Stores action output result for [Bottom Sheet - SelectCategory] action in Button widget.
  List<DocumentReference>? categoriesLIST;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  bool isDataUploading3 = false;
  List<FFUploadedFile> uploadedLocalFiles3 = [];
  List<String> uploadedFileUrls3 = [];

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TechnicalRecord? ref;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  RequesToJoinAsaTechnicianRecord? reqRef;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
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
  }
}
