import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'u_r_l_check_page_widget.dart' show URLCheckPageWidget;
import 'package:flutter/material.dart';

class URLCheckPageModel extends FlutterFlowModel<URLCheckPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for urlField widget.
  FocusNode? urlFieldFocusNode;
  TextEditingController? urlFieldTextController;
  String? Function(BuildContext, String?)? urlFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (scanUrl)] action in checkLinkBtn widget.
  ApiCallResponse? scanUrlOutput;
  // Stores action output result for [Backend Call - API (GetScanResult)] action in checkLinkBtn widget.
  ApiCallResponse? vTResult;
  // Stores action output result for [Backend Call - API (GetScanResult)] action in checkLinkBtn widget.
  ApiCallResponse? vTResultCheck;
  // Stores action output result for [Backend Call - API (GetScanResult)] action in checkLinkBtn widget.
  ApiCallResponse? vTResultRefresh;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    urlFieldFocusNode?.dispose();
    urlFieldTextController?.dispose();
  }
}
