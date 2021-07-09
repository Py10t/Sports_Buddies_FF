import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../intro/intro_widget.dart';
import '../sportslist/sportslist_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.secondaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 35, 0, 0),
              child: Material(
                color: Colors.transparent,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
                child: Container(
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Color(0xFF607D8B),
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 25, 15, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text(
                                'Sports Buddies',
                                style: FlutterFlowTheme.title1.override(
                                  fontFamily: 'Cinzel Decorative',
                                  color: Colors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Suche',
                                    options: FFButtonOptions(
                                      width: 80,
                                      height: 50,
                                      color: FlutterFlowTheme.secondaryColor,
                                      textStyle:
                                          FlutterFlowTheme.subtitle2.override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                      ),
                                      elevation: 4,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      child: TextFormField(
                                        onChanged: (_) => setState(() {}),
                                        controller: textController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: '[Sportart ...]',
                                          hintStyle: FlutterFlowTheme.bodyText2
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(5),
                                              bottomRight: Radius.circular(5),
                                              topLeft: Radius.circular(5),
                                              topRight: Radius.circular(5),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(5),
                                              bottomRight: Radius.circular(5),
                                              topLeft: Radius.circular(5),
                                              topRight: Radius.circular(5),
                                            ),
                                          ),
                                          suffixIcon: textController
                                                  .text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () => setState(
                                                    () =>
                                                        textController.clear(),
                                                  ),
                                                  child: Icon(
                                                    Icons.clear,
                                                    color: Colors.black,
                                                    size: 16,
                                                  ),
                                                )
                                              : null,
                                        ),
                                        style:
                                            FlutterFlowTheme.bodyText2.override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.scale,
                                          alignment: Alignment.bottomCenter,
                                          duration: Duration(milliseconds: 600),
                                          reverseDuration:
                                              Duration(milliseconds: 600),
                                          child: IntroWidget(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://picsum.photos/seed/436/600',
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://picsum.photos/seed/608/600',
                                    ),
                                  ),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://picsum.photos/seed/706/600',
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: Color(0x7B607D8B),
              ),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 500),
                      reverseDuration: Duration(milliseconds: 500),
                      child: SportslistWidget(),
                    ),
                  );
                },
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: FlutterFlowTheme.secondaryColor,
                  elevation: 10,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.sports_soccer_sharp,
                          color: Colors.black,
                          size: 48,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment(-0.1, -0.5),
                                child: Text(
                                  'Soccer',
                                  style: FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment(0, 0.58),
                                child: Text(
                                  'Tap for more info',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.chevron_right,
                            color: Colors.black,
                            size: 48,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: Color(0x7B607D8B),
              ),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 300),
                      reverseDuration: Duration(milliseconds: 300),
                      child: SportslistWidget(),
                    ),
                  );
                },
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: FlutterFlowTheme.secondaryColor,
                  elevation: 10,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.sports_tennis,
                          color: Colors.black,
                          size: 48,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment(-0.1, -0.5),
                                child: Text(
                                  'Tennis',
                                  style: FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment(0, 0.58),
                                child: Text(
                                  'Tap for more info',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.chevron_right,
                            color: Colors.black,
                            size: 48,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: Color(0x7B607D8B),
              ),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 400),
                      reverseDuration: Duration(milliseconds: 400),
                      child: SportslistWidget(),
                    ),
                  );
                },
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: FlutterFlowTheme.secondaryColor,
                  elevation: 10,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.sports_handball_sharp,
                          color: Colors.black,
                          size: 48,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment(-0.1, -0.5),
                                child: Text(
                                  'Bouldern',
                                  style: FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment(0, 0.58),
                                child: Text(
                                  'Tap for more info',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.chevron_right,
                            color: Colors.black,
                            size: 48,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.secondaryColor,
              ),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 400),
                      reverseDuration: Duration(milliseconds: 400),
                      child: SportslistWidget(),
                    ),
                  );
                },
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: FlutterFlowTheme.secondaryColor,
                  elevation: 10,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.run_circle_sharp,
                          color: Colors.black,
                          size: 48,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment(-0.1, -0.5),
                                child: Text(
                                  'Jogging',
                                  style: FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment(0, 0.58),
                                child: Text(
                                  'Tap for more info',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.chevron_right,
                            color: Colors.black,
                            size: 48,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
