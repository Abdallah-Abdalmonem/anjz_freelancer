import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/add_offer_widget.dart';
import '/components/change_themelightdark_widget.dart';
import '/components/open_location_widget.dart';
import '/components/show_map_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import '/flutter_flow/request_manager.dart';

import 'package:badges/badges.dart' as badges;
import 'technician_home_widget.dart' show TechnicianHomeWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class TechnicianHomeModel extends FlutterFlowModel<TechnicianHomeWidget> {
  ///  Local state fields for this page.

  bool offerAdded = false;

  bool showList = true;

  List<DocumentReference> chatUsers = [];
  void addToChatUsers(DocumentReference item) => chatUsers.add(item);
  void removeFromChatUsers(DocumentReference item) => chatUsers.remove(item);
  void removeAtIndexFromChatUsers(int index) => chatUsers.removeAt(index);
  void insertAtIndexInChatUsers(int index, DocumentReference item) =>
      chatUsers.insert(index, item);
  void updateChatUsersAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      chatUsers[index] = updateFn(chatUsers[index]);

  LatLng? location;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in technicianHome widget.
  TecnicianActiveREQRecord? activeReq;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  TechnicalRecord? technicalData;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  NotificationsRecord? motification;
  // Stores action output result for [Backend Call - Read Document] action in IconButton widget.
  ChatsRecord? doc;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  ChatsRecord? chatDoc;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  TecnicianActiveREQRecord? tecnicianActReq;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatMessagesRecord? chatMessage;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatMessagesRecord? chatMessage1;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  TechnicalRecord? technicalData1;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  NotificationsRecord? motification11;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  ChatsRecord? doc11Copy;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatsRecord? chatDoc111Copy;

  /// Query cache managers for this widget.

  final _myactiveManager =
      StreamRequestManager<List<TecnicianActiveREQRecord>>();
  Stream<List<TecnicianActiveREQRecord>> myactive({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<TecnicianActiveREQRecord>> Function() requestFn,
  }) =>
      _myactiveManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMyactiveCache() => _myactiveManager.clear();
  void clearMyactiveCacheKey(String? uniqueKey) =>
      _myactiveManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();

    /// Dispose query cache managers for this widget.

    clearMyactiveCache();
  }
}
