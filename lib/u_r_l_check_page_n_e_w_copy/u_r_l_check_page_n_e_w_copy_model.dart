import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'u_r_l_check_page_n_e_w_copy_widget.dart' show URLCheckPageNEWCopyWidget;
import 'package:flutter/material.dart';

class URLCheckPageNEWCopyModel
    extends FlutterFlowModel<URLCheckPageNEWCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for urlField widget.
  FocusNode? urlFieldFocusNode;
  TextEditingController? urlFieldTextController;
  String? Function(BuildContext, String?)? urlFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (scanUrl)] action in checkLinkBtn widget.
  ApiCallResponse? scanUrlOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    urlFieldFocusNode?.dispose();
    urlFieldTextController?.dispose();
  }
}
