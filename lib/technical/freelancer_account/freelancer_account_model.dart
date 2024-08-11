import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/request_manager.dart';

import 'freelancer_account_widget.dart' show FreelancerAccountWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FreelancerAccountModel extends FlutterFlowModel<FreelancerAccountWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Query cache managers for this widget.

  final _depitManager = StreamRequestManager<List<FinaldebtRecord>>();
  Stream<List<FinaldebtRecord>> depit({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<FinaldebtRecord>> Function() requestFn,
  }) =>
      _depitManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearDepitCache() => _depitManager.clear();
  void clearDepitCacheKey(String? uniqueKey) =>
      _depitManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();

    /// Dispose query cache managers for this widget.

    clearDepitCache();
  }
}
