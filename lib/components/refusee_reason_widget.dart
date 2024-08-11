import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'refusee_reason_model.dart';
export 'refusee_reason_model.dart';

class RefuseeReasonWidget extends StatefulWidget {
  const RefuseeReasonWidget({
    super.key,
    required this.reqDocument,
    required this.technicalDocument,
  });

  final RequesToJoinAsaTechnicianRecord? reqDocument;
  final TechnicalRecord? technicalDocument;

  @override
  State<RefuseeReasonWidget> createState() => _RefuseeReasonWidgetState();
}

class _RefuseeReasonWidgetState extends State<RefuseeReasonWidget> {
  late RefuseeReasonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RefuseeReasonModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(
              0.0,
              -3.0,
            ),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 40.0),
              child: TextFormField(
                controller: _model.textController,
                focusNode: _model.textFieldFocusNode,
                autofocus: false,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: FFLocalizations.of(context).getText(
                    '4yfz6i60' /* ادخل سبب الرفض هنا... */,
                  ),
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).labelMediumFamily),
                      ),
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).labelMediumFamily),
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
                maxLines: null,
                minLines: 3,
                validator: _model.textControllerValidator.asValidator(context),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 12.0),
              child: FFButtonWidget(
                onPressed: () async {
                  await widget!.reqDocument!.reference
                      .update(createRequesToJoinAsaTechnicianRecordData(
                    seen: true,
                    accepted: false,
                  ));

                  await widget!.technicalDocument!.reference
                      .update(createTechnicalRecordData(
                    refused: true,
                    acceptable: false,
                  ));

                  var notificationsRecordReference =
                      NotificationsRecord.collection.doc();
                  await notificationsRecordReference
                      .set(createNotificationsRecordData(
                    time: getCurrentTimestamp,
                    type: 'technicalAccountRefused',
                    sender: currentUserReference,
                    user: widget!.technicalDocument?.userRef,
                    seen: false,
                    refusReason: _model.textController.text,
                  ));
                  _model.notRef = NotificationsRecord.getDocumentFromData(
                      createNotificationsRecordData(
                        time: getCurrentTimestamp,
                        type: 'technicalAccountRefused',
                        sender: currentUserReference,
                        user: widget!.technicalDocument?.userRef,
                        seen: false,
                        refusReason: _model.textController.text,
                      ),
                      notificationsRecordReference);

                  await UserNotificarionRecord.createDoc(
                          widget!.technicalDocument!.userRef!)
                      .set(createUserNotificarionRecordData(
                    ref: _model.notRef?.reference,
                    time: getCurrentTimestamp,
                    seen: false,
                    type: 'technicalAccountRefused',
                    senderRef: currentUserReference,
                    refusReson: _model.textController.text,
                  ));

                  await widget!.technicalDocument!.userRef!
                      .update(createUsersRecordData(
                    reviewStatus: 'technicalAccountRefused',
                    refuseReason: _model.textController.text,
                  ));

                  context.goNamed('technicalsRequests');

                  setState(() {});
                },
                text: FFLocalizations.of(context).getText(
                  'dz9o2sm7' /* رفض */,
                ),
                options: FFButtonOptions(
                  width: 270.0,
                  height: 50.0,
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                  color: Color(0xFFF00F13),
                  textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleMediumFamily,
                        color: FlutterFlowTheme.of(context).info,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleMediumFamily),
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    width: 0.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                  hoverColor: FlutterFlowTheme.of(context).primaryText,
                  hoverTextColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                },
                text: FFLocalizations.of(context).getText(
                  'ewctclz0' /* الغاء */,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 50.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts:
                            GoogleFonts.asMap().containsKey('Lexend Deca'),
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 0.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
