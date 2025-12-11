import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'update_password_widget.dart' show UpdatePasswordWidget;
import 'package:flutter/material.dart';

class UpdatePasswordModel extends FlutterFlowModel<UpdatePasswordWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for pinNumberTextField widget.
  FocusNode? pinNumberTextFieldFocusNode;
  TextEditingController? pinNumberTextFieldTextController;
  String? Function(BuildContext, String?)?
      pinNumberTextFieldTextControllerValidator;
  String? _pinNumberTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 4) {
      return 'Requires at least 4 characters.';
    }
    if (val.length > 4) {
      return 'Maximum 4 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Update Pin Number)] action in Button widget.
  ApiCallResponse? apiUpdatePinNumber;

  @override
  void initState(BuildContext context) {
    pinNumberTextFieldTextControllerValidator =
        _pinNumberTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    pinNumberTextFieldFocusNode?.dispose();
    pinNumberTextFieldTextController?.dispose();
  }
}
