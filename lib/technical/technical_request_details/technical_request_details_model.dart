import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/show_map_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/technical/creat_invoice/creat_invoice_widget.dart';
import '/flutter_flow/request_manager.dart';

import 'technical_request_details_widget.dart'
    show TechnicalRequestDetailsWidget;
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

class TechnicalRequestDetailsModel
    extends FlutterFlowModel<TechnicalRequestDetailsWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> chatUsers = [];
  void addToChatUsers(DocumentReference item) => chatUsers.add(item);
  void removeFromChatUsers(DocumentReference item) => chatUsers.remove(item);
  void removeAtIndexFromChatUsers(int index) => chatUsers.removeAt(index);
  void insertAtIndexInChatUsers(int index, DocumentReference item) =>
      chatUsers.insert(index, item);
  void updateChatUsersAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      chatUsers[index] = updateFn(chatUsers[index]);

  DocumentReference? activeReq;

  bool enable = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Read Document] action in IconButton widget.
  ChatsRecord? chatDoc;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  TechnicalRecord? technicalData;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  NotificationsRecord? motification;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  RequestsRecord? doc;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  TechnicalRecord? technicalData1;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  NotificationsRecord? motification1;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  RequestsRecord? doc1;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  FinaldebtRecord? finalDept;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  InvoiceRecord? invoice12;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  PricingRecord? pricing;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  InvoiceRecord? invoice1;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  PricingRecord? pricing1;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Read Document] action in FloatingActionButton widget.
  TechnicalRecord? trchRef;
  // Stores action output result for [Backend Call - Read Document] action in FloatingActionButton widget.
  ChatsRecord? chatCopy13;
  // Stores action output result for [Firestore Query - Query a collection] action in FloatingActionButton widget.
  CustomerserviceRecord? data;
  // Stores action output result for [Backend Call - Create Document] action in FloatingActionButton widget.
  ChatsRecord? cREATEDchatRef13;

  /// Query cache managers for this widget.

  final _invoiceManager = StreamRequestManager<List<InvoiceRecord>>();
  Stream<List<InvoiceRecord>> invoice({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<InvoiceRecord>> Function() requestFn,
  }) =>
      _invoiceManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearInvoiceCache() => _invoiceManager.clear();
  void clearInvoiceCacheKey(String? uniqueKey) =>
      _invoiceManager.clearRequest(uniqueKey);

  final _acceptedOfferManager = StreamRequestManager<OffersRecord>();
  Stream<OffersRecord> acceptedOffer({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<OffersRecord> Function() requestFn,
  }) =>
      _acceptedOfferManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAcceptedOfferCache() => _acceptedOfferManager.clear();
  void clearAcceptedOfferCacheKey(String? uniqueKey) =>
      _acceptedOfferManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    /// Dispose query cache managers for this widget.

    clearInvoiceCache();

    clearAcceptedOfferCache();
  }
}
