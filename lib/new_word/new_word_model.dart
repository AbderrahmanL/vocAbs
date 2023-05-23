import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewWordModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for wordField widget.
  TextEditingController? wordFieldController;
  String? Function(BuildContext, String?)? wordFieldControllerValidator;
  // State field(s) for translateField widget.
  TextEditingController? translateFieldController;
  String? Function(BuildContext, String?)? translateFieldControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in FloatingActionButton widget.
  WordRecord? createdDocument;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    wordFieldController?.dispose();
    translateFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
