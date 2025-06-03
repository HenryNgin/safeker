import '/flutter_flow/flutter_flow_util.dart';
import 'u_r_l_check_page_n_e_w_widget.dart' show URLCheckPageNEWWidget;
import 'package:flutter/material.dart';

class URLCheckPageNEWModel extends FlutterFlowModel<URLCheckPageNEWWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
