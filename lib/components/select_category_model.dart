import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'select_category_widget.dart' show SelectCategoryWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SelectCategoryModel extends FlutterFlowModel<SelectCategoryWidget> {
  ///  Local state fields for this component.

  List<CategoryRecord> categoriesList = [];
  void addToCategoriesList(CategoryRecord item) => categoriesList.add(item);
  void removeFromCategoriesList(CategoryRecord item) =>
      categoriesList.remove(item);
  void removeAtIndexFromCategoriesList(int index) =>
      categoriesList.removeAt(index);
  void insertAtIndexInCategoriesList(int index, CategoryRecord item) =>
      categoriesList.insert(index, item);
  void updateCategoriesListAtIndex(
          int index, Function(CategoryRecord) updateFn) =>
      categoriesList[index] = updateFn(categoriesList[index]);

  List<DocumentReference> refList = [];
  void addToRefList(DocumentReference item) => refList.add(item);
  void removeFromRefList(DocumentReference item) => refList.remove(item);
  void removeAtIndexFromRefList(int index) => refList.removeAt(index);
  void insertAtIndexInRefList(int index, DocumentReference item) =>
      refList.insert(index, item);
  void updateRefListAtIndex(int index, Function(DocumentReference) updateFn) =>
      refList[index] = updateFn(refList[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
