import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'primarybill_model.dart';
export 'primarybill_model.dart';

class PrimarybillWidget extends StatefulWidget {
  const PrimarybillWidget({
    super.key,
    required this.offerDoc,
    required this.otherUser,
    required this.userReq,
  });

  final OffersRecord? offerDoc;
  final DocumentReference? otherUser;
  final DocumentReference? userReq;

  @override
  State<PrimarybillWidget> createState() => _PrimarybillWidgetState();
}

class _PrimarybillWidgetState extends State<PrimarybillWidget> {
  late PrimarybillModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrimarybillModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<PricingRecord>>(
      stream: queryPricingRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 20.0,
              height: 20.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<PricingRecord> bottomSheetEditPricingRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final bottomSheetEditPricingRecord =
            bottomSheetEditPricingRecordList.isNotEmpty
                ? bottomSheetEditPricingRecordList.first
                : null;

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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'nlp61s1l' /* اذا كنت تريد قطع غيار مع الفني... */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleMediumFamily,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleMediumFamily),
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 8.0, 12.0, 4.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'oq06bheq' /* تفصيل الفاتورة */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodySmallFamily,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodySmallFamily),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 4.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '8smnzr5k' /* سعر خدمة */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelLargeFamily,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelLargeFamily),
                                  ),
                            ),
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: valueOrDefault<String>(
                                      widget!.offerDoc?.value?.toString(),
                                      '0',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleLargeFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleLargeFamily),
                                        ),
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      '2vdyeita' /* ر س */,
                                    ),
                                    style: TextStyle(
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 12.0,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleLargeFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleLargeFamily),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 4.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'fy0nuu19' /* عمولة  */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelLargeFamily,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelLargeFamily),
                                  ),
                            ),
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: valueOrDefault<String>(
                                      bottomSheetEditPricingRecord
                                          ?.userOaymentCommision
                                          ?.toString(),
                                      '5',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleLargeFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleLargeFamily),
                                        ),
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      '1j7kb8by' /* ر س */,
                                    ),
                                    style: TextStyle(
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 12.0,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleLargeFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleLargeFamily),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 4.0, 12.0, 16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'p3cufn9h' /* Total */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelLargeFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily),
                                      ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 36.0,
                                  icon: Icon(
                                    Icons.info_outlined,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 18.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ],
                            ),
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: (bottomSheetEditPricingRecord!
                                                .userOaymentCommision +
                                            valueOrDefault<double>(
                                              widget!.offerDoc?.value,
                                              0.0,
                                            ))
                                        .toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleLargeFamily,
                                          fontSize: 28.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleLargeFamily),
                                        ),
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'x8eygb8b' /* ر س */,
                                    ),
                                    style: TextStyle(
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      fontWeight: FontWeight.w200,
                                      fontSize: 12.0,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleLargeFamily,
                                      fontSize: 30.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleLargeFamily),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 12.0, 20.0, 12.0),
                        child: FFButtonWidget(
                          onPressed: !_model.enable
                              ? null
                              : () async {
                                  _model.enable = false;
                                  setState(() {});

                                  await widget!.offerDoc!.reference
                                      .update(createOffersRecordData(
                                    accepted: true,
                                  ));

                                  await widget!.offerDoc!.reqRef!
                                      .update(createRequestsRecordData(
                                    choosedTecnicla:
                                        widget!.offerDoc?.technical,
                                    acceptedOffer: widget!.offerDoc?.reference,
                                    userReq: widget!.userReq,
                                  ));
                                  _model.request =
                                      await RequestsRecord.getDocumentOnce(
                                          widget!.offerDoc!.reqRef!);

                                  await TecnicianActiveREQRecord.createDoc(
                                          widget!.offerDoc!.technical!)
                                      .set(createTecnicianActiveREQRecordData(
                                    req: _model.request?.reference,
                                    time: getCurrentTimestamp,
                                    ended: false,
                                    active: true,
                                  ));

                                  var notificationsRecordReference =
                                      NotificationsRecord.collection.doc();
                                  await notificationsRecordReference
                                      .set(createNotificationsRecordData(
                                    time: getCurrentTimestamp,
                                    type: 'offerAccepted',
                                    sender: currentUserReference,
                                    seen: false,
                                    technical: widget!.offerDoc?.technical,
                                    offerRef: widget!.offerDoc?.reference,
                                    reqRef: widget!.offerDoc?.reqRef,
                                  ));
                                  _model.noti =
                                      NotificationsRecord.getDocumentFromData(
                                          createNotificationsRecordData(
                                            time: getCurrentTimestamp,
                                            type: 'offerAccepted',
                                            sender: currentUserReference,
                                            seen: false,
                                            technical:
                                                widget!.offerDoc?.technical,
                                            offerRef:
                                                widget!.offerDoc?.reference,
                                            reqRef: widget!.offerDoc?.reqRef,
                                          ),
                                          notificationsRecordReference);
                                  _model.technical =
                                      await TechnicalRecord.getDocumentOnce(
                                          widget!.offerDoc!.technical!);

                                  var userNotificarionRecordReference =
                                      UserNotificarionRecord.createDoc(
                                          _model.technical!.userRef!);
                                  await userNotificarionRecordReference
                                      .set(createUserNotificarionRecordData(
                                    ref: _model.noti?.reference,
                                    time: getCurrentTimestamp,
                                    seen: false,
                                    type: 'offerAccepted',
                                    senderRef: currentUserReference,
                                  ));
                                  _model.user = UserNotificarionRecord
                                      .getDocumentFromData(
                                          createUserNotificarionRecordData(
                                            ref: _model.noti?.reference,
                                            time: getCurrentTimestamp,
                                            seen: false,
                                            type: 'offerAccepted',
                                            senderRef: currentUserReference,
                                          ),
                                          userNotificarionRecordReference);
                                  _model.addToChatUsers(currentUserReference!);
                                  setState(() {});
                                  _model.addToChatUsers(widget!.otherUser!);
                                  setState(() {});
                                  if (_model.request?.chatRef != null) {
                                    // newChatMessage

                                    var chatMessagesRecordReference1 =
                                        ChatMessagesRecord.collection.doc();
                                    await chatMessagesRecordReference1
                                        .set(createChatMessagesRecordData(
                                      user: currentUserReference,
                                      chat: _model.request?.chatRef,
                                      text: 'قبلت عرضك - I accept your offer',
                                      timestamp: getCurrentTimestamp,
                                    ));
                                    _model.newChat =
                                        ChatMessagesRecord.getDocumentFromData(
                                            createChatMessagesRecordData(
                                              user: currentUserReference,
                                              chat: _model.request?.chatRef,
                                              text:
                                                  'قبلت عرضك - I accept your offer',
                                              timestamp: getCurrentTimestamp,
                                            ),
                                            chatMessagesRecordReference1);
                                  } else {
                                    var chatsRecordReference =
                                        ChatsRecord.collection.doc();
                                    await chatsRecordReference.set({
                                      ...createChatsRecordData(
                                        userA: _model.chatUsers.first,
                                        userB: _model.chatUsers.last,
                                      ),
                                      ...mapToFirestore(
                                        {
                                          'users': _model.chatUsers,
                                        },
                                      ),
                                    });
                                    _model.newChatRef =
                                        ChatsRecord.getDocumentFromData({
                                      ...createChatsRecordData(
                                        userA: _model.chatUsers.first,
                                        userB: _model.chatUsers.last,
                                      ),
                                      ...mapToFirestore(
                                        {
                                          'users': _model.chatUsers,
                                        },
                                      ),
                                    }, chatsRecordReference);
                                    // newChatMessage

                                    var chatMessagesRecordReference2 =
                                        ChatMessagesRecord.collection.doc();
                                    await chatMessagesRecordReference2
                                        .set(createChatMessagesRecordData(
                                      user: currentUserReference,
                                      chat: _model.newChatRef?.reference,
                                      text: 'قبلت عرضك - I accept your offer',
                                      timestamp: getCurrentTimestamp,
                                    ));
                                    _model.newChat1 =
                                        ChatMessagesRecord.getDocumentFromData(
                                            createChatMessagesRecordData(
                                              user: currentUserReference,
                                              chat:
                                                  _model.newChatRef?.reference,
                                              text:
                                                  'قبلت عرضك - I accept your offer',
                                              timestamp: getCurrentTimestamp,
                                            ),
                                            chatMessagesRecordReference2);

                                    await _model.request!.reference
                                        .update(createRequestsRecordData(
                                      chatRef: _model.newChatRef?.reference,
                                    ));
                                  }

                                  Navigator.pop(context);

                                  context.pushNamed(
                                    'userRequestDetails',
                                    queryParameters: {
                                      'location': serializeParam(
                                        _model.request?.location,
                                        ParamType.LatLng,
                                      ),
                                      'reqDocument': serializeParam(
                                        _model.request,
                                        ParamType.Document,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      'reqDocument': _model.request,
                                    },
                                  );

                                  setState(() {});
                                },
                          text: FFLocalizations.of(context).getText(
                            'scl78spa' /* قبول العرض */,
                          ),
                          options: FFButtonOptions(
                            width: 270.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            color: FlutterFlowTheme.of(context).primaryText,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleMediumFamily),
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              width: 0.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                            hoverColor:
                                FlutterFlowTheme.of(context).primaryText,
                            hoverTextColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
