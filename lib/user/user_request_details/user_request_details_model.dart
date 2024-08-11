import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/payment_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/request_manager.dart';

import 'user_request_details_widget.dart' show UserRequestDetailsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class UserRequestDetailsModel
    extends FlutterFlowModel<UserRequestDetailsWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> chatUsersList = [];
  void addToChatUsersList(DocumentReference item) => chatUsersList.add(item);
  void removeFromChatUsersList(DocumentReference item) =>
      chatUsersList.remove(item);
  void removeAtIndexFromChatUsersList(int index) =>
      chatUsersList.removeAt(index);
  void insertAtIndexInChatUsersList(int index, DocumentReference item) =>
      chatUsersList.insert(index, item);
  void updateChatUsersListAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      chatUsersList[index] = updateFn(chatUsersList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Read Document] action in IconButton widget.
  ChatsRecord? chat;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Read Document] action in FloatingActionButton widget.
  ChatsRecord? chatDocument;
  // Stores action output result for [Firestore Query - Query a collection] action in FloatingActionButton widget.
  CustomerserviceRecord? data;
  // Stores action output result for [Backend Call - Create Document] action in FloatingActionButton widget.
  ChatsRecord? chatRef;

  /// Query cache managers for this widget.

  final _userInvoiceManager = StreamRequestManager<List<InvoiceRecord>>();
  Stream<List<InvoiceRecord>> userInvoice({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<InvoiceRecord>> Function() requestFn,
  }) =>
      _userInvoiceManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserInvoiceCache() => _userInvoiceManager.clear();
  void clearUserInvoiceCacheKey(String? uniqueKey) =>
      _userInvoiceManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    /// Dispose query cache managers for this widget.

    clearUserInvoiceCache();
  }
}
