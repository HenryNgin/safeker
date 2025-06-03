import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'link_check_page_widget.dart' show LinkCheckPageWidget;
import 'package:flutter/material.dart';

class LinkCheckPageModel extends FlutterFlowModel<LinkCheckPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for URLInput widget.
  FocusNode? uRLInputFocusNode;
  TextEditingController? uRLInputTextController;
  String? Function(BuildContext, String?)? uRLInputTextControllerValidator;
  // Stores action output result for [Backend Call - API (SafeBrowsingCheck)] action in CheckButton widget.
  ApiCallResponse? urlInputControllertext;
  // State field(s) for URLOutput widget.
  FocusNode? uRLOutputFocusNode;
  TextEditingController? uRLOutputTextController;
  String? Function(BuildContext, String?)? uRLOutputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    uRLInputFocusNode?.dispose();
    uRLInputTextController?.dispose();

    uRLOutputFocusNode?.dispose();
    uRLOutputTextController?.dispose();
  }
}
