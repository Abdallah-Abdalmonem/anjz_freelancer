import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'notifications_model.dart';
export 'notifications_model.dart';

class NotificationsWidget extends StatefulWidget {
  const NotificationsWidget({super.key});

  @override
  State<NotificationsWidget> createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {
  late NotificationsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'notifications',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: responsiveVisibility(
              context: context,
              tabletLandscape: false,
              desktop: false,
            )
                ? AppBar(
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    automaticallyImplyLeading: false,
                    leading: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.arrow_back,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        context.pop();
                      },
                    ),
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'vxpm9c2f' /* الأشعارات */,
                      ),
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleLargeFamily),
                          ),
                    ),
                    actions: [],
                    centerTitle: true,
                    elevation: 0.0,
                  )
                : null,
            body: Padding(
              padding: EdgeInsets.all(12.0),
              child: PagedListView<DocumentSnapshot<Object?>?,
                  UserNotificarionRecord>(
                pagingController: _model.setListViewController(
                    UserNotificarionRecord.collection(currentUserReference)
                        .orderBy('time', descending: true),
                    parent: currentUserReference),
                padding: EdgeInsets.zero,
                reverse: false,
                scrollDirection: Axis.vertical,
                builderDelegate:
                    PagedChildBuilderDelegate<UserNotificarionRecord>(
                  // Customize what your widget looks like when it's loading the first page.
                  firstPageProgressIndicatorBuilder: (_) => Center(
                    child: SizedBox(
                      width: 20.0,
                      height: 20.0,
                      child: SpinKitFadingCircle(
                        color: FlutterFlowTheme.of(context).success,
                        size: 20.0,
                      ),
                    ),
                  ),
                  // Customize what your widget looks like when it's loading another page.
                  newPageProgressIndicatorBuilder: (_) => Center(
                    child: SizedBox(
                      width: 20.0,
                      height: 20.0,
                      child: SpinKitFadingCircle(
                        color: FlutterFlowTheme.of(context).success,
                        size: 20.0,
                      ),
                    ),
                  ),

                  itemBuilder: (context, _, listViewIndex) {
                    final listViewUserNotificarionRecord = _model
                        .listViewPagingController!.itemList![listViewIndex];
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.0,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              offset: Offset(
                                0.0,
                                1.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(0.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: StreamBuilder<NotificationsRecord>(
                            stream: NotificationsRecord.getDocument(
                                listViewUserNotificarionRecord.ref!),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 20.0,
                                    height: 20.0,
                                    child: SpinKitFadingCircle(
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      size: 20.0,
                                    ),
                                  ),
                                );
                              }

                              final rowNotificationsRecord = snapshot.data!;

                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 4.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: valueOrDefault<Color>(
                                        rowNotificationsRecord.seen == false
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                        FlutterFlowTheme.of(context).alternate,
                                      ),
                                      borderRadius: BorderRadius.circular(2.0),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 6.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    () {
                                                      if (rowNotificationsRecord
                                                              .type ==
                                                          'technicalAccountRefused') {
                                                        return FFLocalizations
                                                                .of(context)
                                                            .getVariableText(
                                                          arText:
                                                              'تم رفض طلبك للسبب التالي   -   ${rowNotificationsRecord.refusReason}',
                                                          enText:
                                                              'Your request was rejected for the following reason  -   ${rowNotificationsRecord.refusReason}',
                                                        );
                                                      } else if (rowNotificationsRecord
                                                              .type ==
                                                          'technicalAccountAccepted') {
                                                        return FFLocalizations
                                                                .of(context)
                                                            .getVariableText(
                                                          arText:
                                                              'مرحبا بك معنا - تم قبول طلبك يرجي اعادة تشغيل التطبيق للتحول الى واجهة الفني وبداية العمل والربح',
                                                          enText:
                                                              'Welcome to us - your request has been accepted. Please restart the application to switch to the technical interface and start working and earning',
                                                        );
                                                      } else if (rowNotificationsRecord
                                                              .type ==
                                                          'offerAccepted') {
                                                        return FFLocalizations
                                                                .of(context)
                                                            .getVariableText(
                                                          arText:
                                                              'تم قبول عرضك',
                                                          enText:
                                                              'Your offer has been accepted',
                                                        );
                                                      } else if (rowNotificationsRecord
                                                              .type ==
                                                          'offerAdded') {
                                                        return FFLocalizations
                                                                .of(context)
                                                            .getVariableText(
                                                          arText:
                                                              'تم أضافة عرض لطلبك',
                                                          enText:
                                                              'An offer has been added to your request',
                                                        );
                                                      } else if (rowNotificationsRecord
                                                              .type ==
                                                          'onMyWay') {
                                                        return FFLocalizations
                                                                .of(context)
                                                            .getVariableText(
                                                          arText:
                                                              'الفني الان فى الطريق اليك',
                                                          enText:
                                                              'The technician is now on his way to you',
                                                        );
                                                      } else if (rowNotificationsRecord
                                                              .type ==
                                                          'arrived') {
                                                        return FFLocalizations
                                                                .of(context)
                                                            .getVariableText(
                                                          arText:
                                                              'الفني وصل مكان العمل',
                                                          enText:
                                                              'The technician arrived at the workplace',
                                                        );
                                                      } else if (rowNotificationsRecord
                                                              .type ==
                                                          'chatMessage') {
                                                        return FFLocalizations
                                                                .of(context)
                                                            .getVariableText(
                                                          arText:
                                                              'لديك رسالة من ',
                                                          enText:
                                                              'You have a message from',
                                                        );
                                                      } else if (rowNotificationsRecord
                                                              .type ==
                                                          'customerSupportMessage') {
                                                        return FFLocalizations
                                                                .of(context)
                                                            .getVariableText(
                                                          arText:
                                                              'لديك رسالة من الدعم الفني',
                                                          enText:
                                                              'You have a message from customer Service',
                                                        );
                                                      } else {
                                                        return rowNotificationsRecord
                                                            .type;
                                                      }
                                                    }(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLargeFamily,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    dateTimeFormat(
                                                      'relative',
                                                      rowNotificationsRecord
                                                          .time!,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        if (rowNotificationsRecord.type ==
                                            'chatMessage')
                                          Text(
                                            listViewUserNotificarionRecord
                                                .senderName,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        if ((rowNotificationsRecord.type ==
                                                'chatMessage') ||
                                            (rowNotificationsRecord.type ==
                                                'customerSupportMessage'))
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.chat = await ChatsRecord
                                                      .getDocumentOnce(
                                                          listViewUserNotificarionRecord
                                                              .chatRef!);

                                                  context.pushNamed(
                                                    'chat_2_Details',
                                                    queryParameters: {
                                                      'chatRef': serializeParam(
                                                        _model.chat,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'chatRef': _model.chat,
                                                    },
                                                  );

                                                  setState(() {});
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ixj1lhkb' /* عرض المحادثة */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        if (rowNotificationsRecord.type ==
                                            'technicalAccountAccepted')
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 12.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.goNamed('Splash');
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'tey6rphv' /* اعادة تشغيل التطبيق */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ));
  }
}
