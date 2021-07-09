import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class IntroWidget extends StatefulWidget {
  IntroWidget({Key key}) : super(key: key);

  @override
  _IntroWidgetState createState() => _IntroWidgetState();
}

class _IntroWidgetState extends State<IntroWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.primaryColor,
      body: SafeArea(
        child: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.bottomToTop,
                duration: Duration(milliseconds: 600),
                reverseDuration: Duration(milliseconds: 600),
                child: NavBarPage(initialPage: 'HomePage'),
              ),
            );
          },
          child: Material(
            color: Colors.transparent,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.secondaryColor,
                borderRadius: BorderRadius.circular(20),
                shape: BoxShape.circle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Willkommen',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.title1.override(
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                'bei',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Sports Buddies',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Noto Serif',
                                  fontSize: 34,
                                  fontWeight: FontWeight.w800,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
