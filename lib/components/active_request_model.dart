import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/show_map_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'active_request_widget.dart' show ActiveRequestWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ActiveRequestModel extends FlutterFlowModel<ActiveRequestWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> chatGroup = [];
  void addToChatGroup(DocumentReference item) => chatGroup.add(item);
  void removeFromChatGroup(DocumentReference item) => chatGroup.remove(item);
  void removeAtIndexFromChatGroup(int index) => chatGroup.removeAt(index);
  void insertAtIndexInChatGroup(int index, DocumentReference item) =>
      chatGroup.insert(index, item);
  void updateChatGroupAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      chatGroup[index] = updateFn(chatGroup[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Read Document] action in Row widget.
  ChatsRecord? chatDoc;
  // Stores action output result for [Backend Call - Create Document] action in Row widget.
  ChatsRecord? ref;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
