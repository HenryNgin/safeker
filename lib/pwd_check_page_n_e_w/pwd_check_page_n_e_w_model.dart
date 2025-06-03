import '/flutter_flow/flutter_flow_util.dart';
import 'pwd_check_page_n_e_w_widget.dart' show PwdCheckPageNEWWidget;
import 'package:flutter/material.dart';

class PwdCheckPageNEWModel extends FlutterFlowModel<PwdCheckPageNEWWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
