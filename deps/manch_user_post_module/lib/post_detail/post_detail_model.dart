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
import 'post_detail_widget.dart' show PostDetailWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostDetailModel extends FlutterFlowModel<PostDetailWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BaseButton component.
  late spice_money_components_ngdpb1.BaseButtonModel baseButtonModel;
  // Model for EmailTextField component.
  late spice_money_components_ngdpb1.EmailTextFieldModel emailTextFieldModel;

  @override
  void initState(BuildContext context) {
    baseButtonModel = spice_money_components_ngdpb1_util.createModel(
        context, () => spice_money_components_ngdpb1.BaseButtonModel());
    emailTextFieldModel = spice_money_components_ngdpb1_util.createModel(
        context, () => spice_money_components_ngdpb1.EmailTextFieldModel());
  }

  @override
  void dispose() {
    baseButtonModel.dispose();
    emailTextFieldModel.dispose();
  }
}
