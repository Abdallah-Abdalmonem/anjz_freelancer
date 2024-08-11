import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'creat_invoice_widget.dart' show CreatInvoiceWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreatInvoiceModel extends FlutterFlowModel<CreatInvoiceWidget> {
  ///  Local state fields for this component.

  List<FFUploadedFile> imagesList = [];
  void addToImagesList(FFUploadedFile item) => imagesList.add(item);
  void removeFromImagesList(FFUploadedFile item) => imagesList.remove(item);
  void removeAtIndexFromImagesList(int index) => imagesList.removeAt(index);
  void insertAtIndexInImagesList(int index, FFUploadedFile item) =>
      imagesList.insert(index, item);
  void updateImagesListAtIndex(int index, Function(FFUploadedFile) updateFn) =>
      imagesList[index] = updateFn(imagesList[index]);

  String? image;

  List<FFUploadedFile> workImageList = [];
  void addToWorkImageList(FFUploadedFile item) => workImageList.add(item);
  void removeFromWorkImageList(FFUploadedFile item) =>
      workImageList.remove(item);
  void removeAtIndexFromWorkImageList(int index) =>
      workImageList.removeAt(index);
  void insertAtIndexInWorkImageList(int index, FFUploadedFile item) =>
      workImageList.insert(index, item);
  void updateWorkImageListAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      workImageList[index] = updateFn(workImageList[index]);

  int length = 0;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  bool isDataUploading3 = false;
  List<FFUploadedFile> uploadedLocalFiles3 = [];
  List<String> uploadedFileUrls3 = [];

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  NotificationsRecord? notiRef;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
