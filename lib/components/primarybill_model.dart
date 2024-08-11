import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'primarybill_widget.dart' show PrimarybillWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PrimarybillModel extends FlutterFlowModel<PrimarybillWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> chatUsers = [];
  void addToChatUsers(DocumentReference item) => chatUsers.add(item);
  void removeFromChatUsers(DocumentReference item) => chatUsers.remove(item);
  void removeAtIndexFromChatUsers(int index) => chatUsers.removeAt(index);
  void insertAtIndexInChatUsers(int index, DocumentReference item) =>
      chatUsers.insert(index, item);
  void updateChatUsersAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      chatUsers[index] = updateFn(chatUsers[index]);

  bool enable = true;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  RequestsRecord? request;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  NotificationsRecord? noti;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  TechnicalRecord? technical;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  UserNotificarionRecord? user;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatMessagesRecord? newChat;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatsRecord? newChatRef;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatMessagesRecord? newChat1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
