// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TECHNICALpaymentStruct extends FFFirebaseStruct {
  TECHNICALpaymentStruct({
    double? value,
    DateTime? date,
    DocumentReference? administrator,
    String? administratorName,
    String? cashtransferreceipt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _value = value,
        _date = date,
        _administrator = administrator,
        _administratorName = administratorName,
        _cashtransferreceipt = cashtransferreceipt,
        super(firestoreUtilData);

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  set value(double? val) => _value = val;

  void incrementValue(double amount) => value = value + amount;

  bool hasValue() => _value != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  // "Administrator" field.
  DocumentReference? _administrator;
  DocumentReference? get administrator => _administrator;
  set administrator(DocumentReference? val) => _administrator = val;

  bool hasAdministrator() => _administrator != null;

  // "AdministratorName" field.
  String? _administratorName;
  String get administratorName => _administratorName ?? '';
  set administratorName(String? val) => _administratorName = val;

  bool hasAdministratorName() => _administratorName != null;

  // "Cashtransferreceipt" field.
  String? _cashtransferreceipt;
  String get cashtransferreceipt => _cashtransferreceipt ?? '';
  set cashtransferreceipt(String? val) => _cashtransferreceipt = val;

  bool hasCashtransferreceipt() => _cashtransferreceipt != null;

  static TECHNICALpaymentStruct fromMap(Map<String, dynamic> data) =>
      TECHNICALpaymentStruct(
        value: castToType<double>(data['value']),
        date: data['date'] as DateTime?,
        administrator: data['Administrator'] as DocumentReference?,
        administratorName: data['AdministratorName'] as String?,
        cashtransferreceipt: data['Cashtransferreceipt'] as String?,
      );

  static TECHNICALpaymentStruct? maybeFromMap(dynamic data) => data is Map
      ? TECHNICALpaymentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'value': _value,
        'date': _date,
        'Administrator': _administrator,
        'AdministratorName': _administratorName,
        'Cashtransferreceipt': _cashtransferreceipt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'value': serializeParam(
          _value,
          ParamType.double,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'Administrator': serializeParam(
          _administrator,
          ParamType.DocumentReference,
        ),
        'AdministratorName': serializeParam(
          _administratorName,
          ParamType.String,
        ),
        'Cashtransferreceipt': serializeParam(
          _cashtransferreceipt,
          ParamType.String,
        ),
      }.withoutNulls;

  static TECHNICALpaymentStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TECHNICALpaymentStruct(
        value: deserializeParam(
          data['value'],
          ParamType.double,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        administrator: deserializeParam(
          data['Administrator'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        administratorName: deserializeParam(
          data['AdministratorName'],
          ParamType.String,
          false,
        ),
        cashtransferreceipt: deserializeParam(
          data['Cashtransferreceipt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TECHNICALpaymentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TECHNICALpaymentStruct &&
        value == other.value &&
        date == other.date &&
        administrator == other.administrator &&
        administratorName == other.administratorName &&
        cashtransferreceipt == other.cashtransferreceipt;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [value, date, administrator, administratorName, cashtransferreceipt]);
}

TECHNICALpaymentStruct createTECHNICALpaymentStruct({
  double? value,
  DateTime? date,
  DocumentReference? administrator,
  String? administratorName,
  String? cashtransferreceipt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TECHNICALpaymentStruct(
      value: value,
      date: date,
      administrator: administrator,
      administratorName: administratorName,
      cashtransferreceipt: cashtransferreceipt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TECHNICALpaymentStruct? updateTECHNICALpaymentStruct(
  TECHNICALpaymentStruct? tECHNICALpayment, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    tECHNICALpayment
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTECHNICALpaymentStructData(
  Map<String, dynamic> firestoreData,
  TECHNICALpaymentStruct? tECHNICALpayment,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tECHNICALpayment == null) {
    return;
  }
  if (tECHNICALpayment.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && tECHNICALpayment.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tECHNICALpaymentData =
      getTECHNICALpaymentFirestoreData(tECHNICALpayment, forFieldValue);
  final nestedData =
      tECHNICALpaymentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = tECHNICALpayment.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTECHNICALpaymentFirestoreData(
  TECHNICALpaymentStruct? tECHNICALpayment, [
  bool forFieldValue = false,
]) {
  if (tECHNICALpayment == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tECHNICALpayment.toMap());

  // Add any Firestore field values
  tECHNICALpayment.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTECHNICALpaymentListFirestoreData(
  List<TECHNICALpaymentStruct>? tECHNICALpayments,
) =>
    tECHNICALpayments
        ?.map((e) => getTECHNICALpaymentFirestoreData(e, true))
        .toList() ??
    [];
