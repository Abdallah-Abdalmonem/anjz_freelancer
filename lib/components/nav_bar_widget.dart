import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_bar_model.dart';
export 'nav_bar_model.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget>
    with TickerProviderStateMixin {
  late NavBarModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarModel());

    animationsMap.addAll({
      'columnOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.3, 1.3),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      height: 80.0,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.goNamed('Home');
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterFlowIconButton(
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: valueOrDefault<double>(
                    FFAppState().screenName == 'Home' ? 46.0 : 40.0,
                    46.0,
                  ),
                  fillColor: valueOrDefault<Color>(
                    FFAppState().screenName == 'Home'
                        ? FlutterFlowTheme.of(context).alternate
                        : Colors.transparent,
                    FlutterFlowTheme.of(context).alternate,
                  ),
                  icon: Icon(
                    Icons.home_rounded,
                    color: valueOrDefault<Color>(
                      FFAppState().screenName == 'Home'
                          ? FlutterFlowTheme.of(context).primaryText
                          : FlutterFlowTheme.of(context).secondaryText,
                      FlutterFlowTheme.of(context).primaryText,
                    ),
                    size: valueOrDefault<double>(
                      FFAppState().screenName == 'Home' ? 25.0 : 20.0,
                      25.0,
                    ),
                  ),
                  onPressed: () async {
                    context.goNamed('Home');
                  },
                ),
                AutoSizeText(
                  FFLocalizations.of(context).getText(
                    'z28ba3nx' /* الرئيسية */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ],
            ),
          ).animateOnActionTrigger(
            animationsMap['columnOnActionTriggerAnimation']!,
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.goNamed('MyRequests');
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: valueOrDefault<double>(
                    FFAppState().screenName == 'MyRequests' ? 46.0 : 40.0,
                    40.0,
                  ),
                  fillColor: valueOrDefault<Color>(
                    FFAppState().screenName == 'MyRequests'
                        ? FlutterFlowTheme.of(context).alternate
                        : Colors.transparent,
                    Colors.transparent,
                  ),
                  icon: Icon(
                    Icons.receipt_sharp,
                    color: valueOrDefault<Color>(
                      FFAppState().screenName == 'MyRequests'
                          ? FlutterFlowTheme.of(context).primaryText
                          : FlutterFlowTheme.of(context).secondaryText,
                      FlutterFlowTheme.of(context).secondaryText,
                    ),
                    size: valueOrDefault<double>(
                      FFAppState().screenName == 'MyRequests' ? 25.0 : 20.0,
                      20.0,
                    ),
                  ),
                  onPressed: () async {
                    context.goNamed('MyRequests');
                  },
                ),
                AutoSizeText(
                  FFLocalizations.of(context).getText(
                    '27zspdbe' /* الطلبات */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ],
            ),
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.goNamed('AppOffers');
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: valueOrDefault<double>(
                    FFAppState().screenName == 'Offers' ? 46.0 : 40.0,
                    40.0,
                  ),
                  fillColor: valueOrDefault<Color>(
                    FFAppState().screenName == 'Offers'
                        ? FlutterFlowTheme.of(context).alternate
                        : Colors.transparent,
                    Color(0x00262D34),
                  ),
                  icon: Icon(
                    Icons.local_offer_rounded,
                    color: valueOrDefault<Color>(
                      FFAppState().screenName == 'Offers'
                          ? FlutterFlowTheme.of(context).primaryText
                          : FlutterFlowTheme.of(context).secondaryText,
                      FlutterFlowTheme.of(context).secondaryText,
                    ),
                    size: valueOrDefault<double>(
                      FFAppState().screenName == 'Offers' ? 25.0 : 20.0,
                      20.0,
                    ),
                  ),
                  onPressed: () async {
                    context.goNamed('AppOffers');
                  },
                ),
                AutoSizeText(
                  FFLocalizations.of(context).getText(
                    '0eueyygk' /* عروض */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ],
            ),
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.goNamed(
                'customerService',
                queryParameters: {
                  'ref': serializeParam(
                    currentUserDocument?.customerSupportChatRef,
                    ParamType.DocumentReference,
                  ),
                  'custumerSupport': serializeParam(
                    valueOrDefault<bool>(
                        currentUserDocument?.customerSupport, false),
                    ParamType.bool,
                  ),
                }.withoutNulls,
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterFlowIconButton(
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: valueOrDefault<double>(
                    FFAppState().screenName == 'CusstomerService' ? 46.0 : 40.0,
                    40.0,
                  ),
                  fillColor: valueOrDefault<Color>(
                    FFAppState().screenName == 'CusstomerService'
                        ? FlutterFlowTheme.of(context).alternate
                        : Colors.transparent,
                    Color(0x00262D34),
                  ),
                  icon: Icon(
                    Icons.support_agent,
                    color: valueOrDefault<Color>(
                      FFAppState().screenName == 'CusstomerService'
                          ? FlutterFlowTheme.of(context).primaryText
                          : FlutterFlowTheme.of(context).secondaryText,
                      FlutterFlowTheme.of(context).secondaryText,
                    ),
                    size: valueOrDefault<double>(
                      FFAppState().screenName == 'CusstomerService'
                          ? 26.0
                          : 20.0,
                      20.0,
                    ),
                  ),
                  onPressed: () async {
                    context.goNamed(
                      'customerService',
                      queryParameters: {
                        'ref': serializeParam(
                          currentUserDocument?.customerSupportChatRef,
                          ParamType.DocumentReference,
                        ),
                        'custumerSupport': serializeParam(
                          valueOrDefault<bool>(
                              currentUserDocument?.customerSupport, false),
                          ParamType.bool,
                        ),
                      }.withoutNulls,
                    );
                  },
                ),
                AutoSizeText(
                  FFLocalizations.of(context).getText(
                    'fwuc9lyx' /* الدعم */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ],
            ),
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.goNamed('Setting');
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: valueOrDefault<double>(
                    FFAppState().screenName == 'Setting' ? 46.0 : 40.0,
                    40.0,
                  ),
                  fillColor: valueOrDefault<Color>(
                    FFAppState().screenName == 'Setting'
                        ? FlutterFlowTheme.of(context).alternate
                        : Colors.transparent,
                    Colors.transparent,
                  ),
                  icon: Icon(
                    Icons.settings_rounded,
                    color: valueOrDefault<Color>(
                      FFAppState().screenName == 'Setting'
                          ? FlutterFlowTheme.of(context).primaryText
                          : FlutterFlowTheme.of(context).secondaryText,
                      FlutterFlowTheme.of(context).secondaryText,
                    ),
                    size: valueOrDefault<double>(
                      FFAppState().screenName == 'Setting' ? 26.0 : 20.0,
                      20.0,
                    ),
                  ),
                  onPressed: () async {
                    context.goNamed('Setting');
                  },
                ),
                AutoSizeText(
                  FFLocalizations.of(context).getText(
                    'pmc4sq99' /* الضبط */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
