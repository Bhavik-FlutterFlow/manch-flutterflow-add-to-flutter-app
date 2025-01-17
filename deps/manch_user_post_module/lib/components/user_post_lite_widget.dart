import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_post_lite_model.dart';
export 'user_post_lite_model.dart';

class UserPostLiteWidget extends StatefulWidget {
  const UserPostLiteWidget({
    super.key,
    required this.post,
    required this.callback,
  });

  final PostStruct? post;
  final Future Function(String message)? callback;

  @override
  State<UserPostLiteWidget> createState() => _UserPostLiteWidgetState();
}

class _UserPostLiteWidgetState extends State<UserPostLiteWidget> {
  late UserPostLiteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserPostLiteModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await widget.callback?.call(
          widget!.post!.post,
        );
      },
      child: Material(
        color: Colors.transparent,
        child: ListTile(
          title: Text(
            widget!.post!.post,
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Inter Tight',
                  letterSpacing: 0.0,
                ),
          ),
          subtitle: Text(
            'Subtitle',
            style: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
          tileColor: _model.selectedColor,
          dense: false,
          contentPadding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
