import '../account_settings/account_settings_widget.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class ProfileWidget extends StatefulWidget {
  ProfileWidget({Key key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.secondaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 210,
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
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 130,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0.85, 0),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 90, 0, 0),
                                        child: Container(
                                          width: 80,
                                          height: 80,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/images/UI_avatar@2x.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    StreamBuilder<List<UsersRecord>>(
                                      stream: queryUsersRecord(
                                        queryBuilder: (usersRecord) =>
                                            usersRecord.where('uid',
                                                isEqualTo:
                                                    'yrHdmxYOirpAQcL5FcvN'),
                                        singleRecord: true,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                              child:
                                                  CircularProgressIndicator());
                                        }
                                        List<UsersRecord>
                                            userNameUsersRecordList =
                                            snapshot.data;
                                        // Customize what your widget looks like with no query results.
                                        if (snapshot.data.isEmpty) {
                                          return Container(
                                            height: 100,
                                            child: Center(
                                              child: Text('No results.'),
                                            ),
                                          );
                                        }
                                        final userNameUsersRecord =
                                            userNameUsersRecordList.first;
                                        return Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              24, 140, 0, 0),
                                          child: Text(
                                            userNameUsersRecord.uid,
                                            style: FlutterFlowTheme.title2
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                    Align(
                                      alignment: Alignment(-1, 0),
                                      child: StreamBuilder<List<UsersRecord>>(
                                        stream: queryUsersRecord(
                                          queryBuilder: (usersRecord) =>
                                              usersRecord.where('uid',
                                                  isEqualTo:
                                                      'yrHdmxYOirpAQcL5FcvN'),
                                          singleRecord: true,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                                child:
                                                    CircularProgressIndicator());
                                          }
                                          List<UsersRecord>
                                              userEmailUsersRecordList =
                                              snapshot.data;
                                          // Customize what your widget looks like with no query results.
                                          if (snapshot.data.isEmpty) {
                                            return Container(
                                              height: 100,
                                              child: Center(
                                                child: Text('No results.'),
                                              ),
                                            );
                                          }
                                          final userEmailUsersRecord =
                                              userEmailUsersRecordList.first;
                                          return Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                24, 174, 0, 0),
                                            child: Text(
                                              userEmailUsersRecord.email,
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme
                                                    .secondaryColor,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
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
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(24, 12, 0, 12),
                          child: Text(
                            'Account Einstellungen',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                  reverseDuration: Duration(milliseconds: 0),
                                  child: AccountSettingsWidget(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.settings_outlined,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.secondaryColor,
                    ),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.secondaryColor,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Column(
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
                                    'https://picsum.photos/seed/616/600',
                                  ),
                                ),
                                Text(
                                  'Sportart 1',
                                  style: FlutterFlowTheme.title2.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Text(
                                  'Amateur',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Bewertung',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.star_rate,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_rate,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_rate,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_half,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.black,
                                      size: 24,
                                    )
                                  ],
                                ),
                                Text(
                                  'Leistung',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCC4C4C),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                  ),
                                  child: Align(
                                    alignment: Alignment(-0.7, 0),
                                    child: Icon(
                                      Icons.arrow_upward,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Aktivität',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.star_rate,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_rate,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_half,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.black,
                                      size: 24,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.secondaryColor,
                    ),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.secondaryColor,
                      elevation: 4,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Column(
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
                                    'https://picsum.photos/616/600',
                                  ),
                                ),
                                Text(
                                  'Sportart 2',
                                  style: FlutterFlowTheme.title2.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Text(
                                  'Fortgeschritten',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Bewertung',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.star_rate,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_rate,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_rate,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_half,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.black,
                                      size: 24,
                                    )
                                  ],
                                ),
                                Text(
                                  'Leistung',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE159E4),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                  ),
                                  child: Align(
                                    alignment: Alignment(0, 0),
                                    child: Icon(
                                      Icons.arrow_upward,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Aktivität',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.star_rate,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_rate,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_half,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.black,
                                      size: 24,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.secondaryColor,
                    ),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.secondaryColor,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Column(
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
                                    'https://picsum.photos/616/600',
                                  ),
                                ),
                                Text(
                                  'Sportart 3',
                                  style: FlutterFlowTheme.title2.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Text(
                                  'Profi',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Bewertung',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.star_rate,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_rate,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_rate,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_half,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.black,
                                      size: 24,
                                    )
                                  ],
                                ),
                                Text(
                                  'Leistung',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color(0x8B6AD63D),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Align(
                                    alignment: Alignment(0.65, 0),
                                    child: Icon(
                                      Icons.arrow_upward,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Aktivität',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.star_rate,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_rate,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_half,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.black,
                                      size: 24,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
