import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'change_themelightdark_model.dart';
export 'change_themelightdark_model.dart';

class ChangeThemelightdarkWidget extends StatefulWidget {
  const ChangeThemelightdarkWidget({super.key});

  @override
  State<ChangeThemelightdarkWidget> createState() =>
      _ChangeThemelightdarkWidgetState();
}

class _ChangeThemelightdarkWidgetState extends State<ChangeThemelightdarkWidget>
    with TickerProviderStateMixin {
  late ChangeThemelightdarkModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangeThemelightdarkModel());

    animationsMap.addAll({
      'iconOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10.0,
          sigmaY: 8.0,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).accent4,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    maxWidth: 700.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 12.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          5.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 4.0, 12.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'bd6mxhyc' /* المظهر */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLargeFamily,
                                              fontSize: 24.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineLargeFamily),
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'sn1j4est' /* قم بتحديث مظهر التطبيق الخاص ب... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLargeFamily),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 35.0,
                                    borderWidth: 1.0,
                                    buttonSize: 44.0,
                                    icon: Icon(
                                      Icons.close_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 30.0,
                                    ),
                                    onPressed: () async {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 16.0),
                            child: Wrap(
                              spacing: 16.0,
                              runSpacing: 16.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: 322.0,
                                  child: Stack(
                                    children: [
                                      AnimatedContainer(
                                        duration: Duration(milliseconds: 150),
                                        curve: Curves.easeInOut,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? FlutterFlowTheme.of(context)
                                                  .accent1
                                              : FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: Theme.of(context)
                                                        .brightness ==
                                                    Brightness.dark
                                                ? FlutterFlowTheme.of(context)
                                                    .success
                                                : FlutterFlowTheme.of(context)
                                                    .alternate,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setDarkModeSetting(
                                                  context, ThemeMode.dark);
                                            },
                                            child: Container(
                                              width: 310.0,
                                              height: 230.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF1B1D27),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 12.0, 8.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        4.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '3a8qqzuh' /* داكن */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleLargeFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).titleLargeFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                          if (Theme.of(context)
                                                                  .brightness ==
                                                              Brightness.dark)
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0,
                                                                      -1.0),
                                                              child: Icon(
                                                                Icons
                                                                    .check_circle_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 32.0,
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'iconOnPageLoadAnimation1']!),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 110.0,
                                                      height: 160.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFF2A3137),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  8.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  8.0),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    4.0,
                                                                    12.0,
                                                                    4.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Container(
                                                                    width: 70.0,
                                                                    height:
                                                                        20.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0xD81D2429),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6.0),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 16.0,
                                                                    height:
                                                                        16.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent2,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 44.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xD81D2429),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              6.0),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 44.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xD81D2429),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              6.0),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 322.0,
                                  child: Stack(
                                    children: [
                                      AnimatedContainer(
                                        duration: Duration(milliseconds: 150),
                                        curve: Curves.easeInOut,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).brightness ==
                                                  Brightness.light
                                              ? FlutterFlowTheme.of(context)
                                                  .accent1
                                              : FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: Theme.of(context)
                                                        .brightness ==
                                                    Brightness.light
                                                ? FlutterFlowTheme.of(context)
                                                    .primary
                                                : FlutterFlowTheme.of(context)
                                                    .alternate,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setDarkModeSetting(
                                                  context, ThemeMode.light);
                                            },
                                            child: Container(
                                              width: 310.0,
                                              height: 230.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 12.0, 8.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        4.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'jk2bdyia' /* فاتح */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleLargeFamily,
                                                                    color: Color(
                                                                        0xFF1B1D27),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).titleLargeFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                          if (Theme.of(context)
                                                                  .brightness ==
                                                              Brightness.light)
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0,
                                                                      -1.0),
                                                              child: Icon(
                                                                Icons
                                                                    .check_circle_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                size: 32.0,
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'iconOnPageLoadAnimation2']!),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 110.0,
                                                      height: 160.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFDBE2E7),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  8.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  8.0),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    4.0,
                                                                    12.0,
                                                                    4.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Container(
                                                                    width: 70.0,
                                                                    height:
                                                                        20.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              6.0),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 16.0,
                                                                    height:
                                                                        16.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 44.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              6.0),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 44.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              6.0),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
