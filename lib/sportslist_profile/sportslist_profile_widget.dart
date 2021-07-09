import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SportslistProfileWidget extends StatefulWidget {
  SportslistProfileWidget({Key key}) : super(key: key);

  @override
  _SportslistProfileWidgetState createState() =>
      _SportslistProfileWidgetState();
}

class _SportslistProfileWidgetState extends State<SportslistProfileWidget> {
  DateTimeRange calendarSelectedDay;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.primaryColor,
          automaticallyImplyLeading: true,
          actions: [],
          elevation: 4,
        ),
      ),
      backgroundColor: FlutterFlowTheme.secondaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.secondaryColor,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(0, 0),
                                    child: Image.asset(
                                      'assets/images/card_header@2x.png',
                                      width: MediaQuery.of(context).size.width,
                                      height: 130,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(24, 140, 0, 0),
                                    child: Text(
                                      'Sportstätte 1',
                                      style: FlutterFlowTheme.title2.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment: Alignment(-1, 0),
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              24, 174, 0, 0),
                                          child: Text(
                                            'website.com',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF60768B),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment(-1, 0),
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              24, 174, 0, 0),
                                          child: Text(
                                            'Tel.: +49 551 12345',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF60768B),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.secondaryColor,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 12, 0, 12),
                          child: Text(
                            'Beschreibung',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: FlutterFlowCalendar(
                  color: FlutterFlowTheme.primaryColor,
                  weekFormat: false,
                  weekStartsMonday: false,
                  onChange: (DateTimeRange newSelectedDate) {
                    setState(() => calendarSelectedDay = newSelectedDate);
                  },
                  titleStyle: TextStyle(),
                  dayOfWeekStyle: TextStyle(),
                  dateStyle: TextStyle(),
                  selectedDateStyle: TextStyle(),
                  inactiveDateStyle: TextStyle(),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Buchen',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.primaryColor,
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
