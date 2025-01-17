import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:spice_money_components_ngdpb1/button/base_button/base_button_widget.dart'
    as spice_money_components_ngdpb1;
import 'package:spice_money_components_ngdpb1/flutter_flow/flutter_flow_util.dart'
    as spice_money_components_ngdpb1_util
    show wrapWithModel, createModel, FlutterFlowDynamicModels;
import 'package:spice_money_components_ngdpb1/textfield/email_text_field/email_text_field_widget.dart'
    as spice_money_components_ngdpb1;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_detail_model.dart';
export 'post_detail_model.dart';

class PostDetailWidget extends StatefulWidget {
  const PostDetailWidget({super.key});

  @override
  State<PostDetailWidget> createState() => _PostDetailWidgetState();
}

class _PostDetailWidgetState extends State<PostDetailWidget> {
  late PostDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostDetailModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              spice_money_components_ngdpb1_util.wrapWithModel(
                model: _model.baseButtonModel,
                updateCallback: () => safeSetState(() {}),
                child: spice_money_components_ngdpb1.BaseButtonWidget(
                  label: 'Test',
                  color: FlutterFlowTheme.of(context).primary,
                  onTapCallback: () async {},
                ),
              ),
              spice_money_components_ngdpb1_util.wrapWithModel(
                model: _model.emailTextFieldModel,
                updateCallback: () => safeSetState(() {}),
                child: spice_money_components_ngdpb1.EmailTextFieldWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
