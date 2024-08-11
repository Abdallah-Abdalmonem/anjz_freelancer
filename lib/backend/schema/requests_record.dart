import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestsRecord extends FirestoreRecord {
  RequestsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "category" field.
  DocumentReference? _category;
  DocumentReference? get category => _category;
  bool hasCategory() => _category != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "phonNumber" field.
  String? _phonNumber;
  String get phonNumber => _phonNumber ?? '';
  bool hasPhonNumber() => _phonNumber != null;

  // "imageList" field.
  List<String>? _imageList;
  List<String> get imageList => _imageList ?? const [];
  bool hasImageList() => _imageList != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "orderNo" field.
  int? _orderNo;
  int get orderNo => _orderNo ?? 0;
  bool hasOrderNo() => _orderNo != null;

  // "OfferIntreducers" field.
  List<DocumentReference>? _offerIntreducers;
  List<DocumentReference> get offerIntreducers => _offerIntreducers ?? const [];
  bool hasOfferIntreducers() => _offerIntreducers != null;

  // "acceptedOffer" field.
  DocumentReference? _acceptedOffer;
  DocumentReference? get acceptedOffer => _acceptedOffer;
  bool hasAcceptedOffer() => _acceptedOffer != null;

  // "choosedTecnicla" field.
  DocumentReference? _choosedTecnicla;
  DocumentReference? get choosedTecnicla => _choosedTecnicla;
  bool hasChoosedTecnicla() => _choosedTecnicla != null;

  // "userAcceptMintinance" field.
  bool? _userAcceptMintinance;
  bool get userAcceptMintinance => _userAcceptMintinance ?? false;
  bool hasUserAcceptMintinance() => _userAcceptMintinance != null;

  // "userPayedByApp" field.
  bool? _userPayedByApp;
  bool get userPayedByApp => _userPayedByApp ?? false;
  bool hasUserPayedByApp() => _userPayedByApp != null;

  // "userChooseToPayCash" field.
  bool? _userChooseToPayCash;
  bool get userChooseToPayCash => _userChooseToPayCash ?? false;
  bool hasUserChooseToPayCash() => _userChooseToPayCash != null;

  // "technicalStartWork" field.
  bool? _technicalStartWork;
  bool get technicalStartWork => _technicalStartWork ?? false;
  bool hasTechnicalStartWork() => _technicalStartWork != null;

  // "technicalArrived" field.
  bool? _technicalArrived;
  bool get technicalArrived => _technicalArrived ?? false;
  bool hasTechnicalArrived() => _technicalArrived != null;

  // "invoiceAdded" field.
  bool? _invoiceAdded;
  bool get invoiceAdded => _invoiceAdded ?? false;
  bool hasInvoiceAdded() => _invoiceAdded != null;

  // "technicalGetCash" field.
  bool? _technicalGetCash;
  bool get technicalGetCash => _technicalGetCash ?? false;
  bool hasTechnicalGetCash() => _technicalGetCash != null;

  // "ended" field.
  bool? _ended;
  bool get ended => _ended ?? false;
  bool hasEnded() => _ended != null;

  // "rated" field.
  bool? _rated;
  bool get rated => _rated ?? false;
  bool hasRated() => _rated != null;

  // "chatRef" field.
  DocumentReference? _chatRef;
  DocumentReference? get chatRef => _chatRef;
  bool hasChatRef() => _chatRef != null;

  // "canceld" field.
  bool? _canceld;
  bool get canceld => _canceld ?? false;
  bool hasCanceld() => _canceld != null;

  // "invoice" field.
  bool? _invoice;
  bool get invoice => _invoice ?? false;
  bool hasInvoice() => _invoice != null;

  // "month" field.
  String? _month;
  String get month => _month ?? '';
  bool hasMonth() => _month != null;

  // "userReqImageList" field.
  List<String>? _userReqImageList;
  List<String> get userReqImageList => _userReqImageList ?? const [];
  bool hasUserReqImageList() => _userReqImageList != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "userStart" field.
  bool? _userStart;
  bool get userStart => _userStart ?? false;
  bool hasUserStart() => _userStart != null;

  // "finishingImage" field.
  List<String>? _finishingImage;
  List<String> get finishingImage => _finishingImage ?? const [];
  bool hasFinishingImage() => _finishingImage != null;

  // "invoiceImageLenth" field.
  int? _invoiceImageLenth;
  int get invoiceImageLenth => _invoiceImageLenth ?? 0;
  bool hasInvoiceImageLenth() => _invoiceImageLenth != null;

  // "userEnd" field.
  bool? _userEnd;
  bool get userEnd => _userEnd ?? false;
  bool hasUserEnd() => _userEnd != null;

  // "tecnicianEnd" field.
  bool? _tecnicianEnd;
  bool get tecnicianEnd => _tecnicianEnd ?? false;
  bool hasTecnicianEnd() => _tecnicianEnd != null;

  // "userReq" field.
  DocumentReference? _userReq;
  DocumentReference? get userReq => _userReq;
  bool hasUserReq() => _userReq != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
    _location = snapshotData['location'] as LatLng?;
    _category = snapshotData['category'] as DocumentReference?;
    _description = snapshotData['description'] as String?;
    _phonNumber = snapshotData['phonNumber'] as String?;
    _imageList = getDataList(snapshotData['imageList']);
    _userName = snapshotData['userName'] as String?;
    _orderNo = castToType<int>(snapshotData['orderNo']);
    _offerIntreducers = getDataList(snapshotData['OfferIntreducers']);
    _acceptedOffer = snapshotData['acceptedOffer'] as DocumentReference?;
    _choosedTecnicla = snapshotData['choosedTecnicla'] as DocumentReference?;
    _userAcceptMintinance = snapshotData['userAcceptMintinance'] as bool?;
    _userPayedByApp = snapshotData['userPayedByApp'] as bool?;
    _userChooseToPayCash = snapshotData['userChooseToPayCash'] as bool?;
    _technicalStartWork = snapshotData['technicalStartWork'] as bool?;
    _technicalArrived = snapshotData['technicalArrived'] as bool?;
    _invoiceAdded = snapshotData['invoiceAdded'] as bool?;
    _technicalGetCash = snapshotData['technicalGetCash'] as bool?;
    _ended = snapshotData['ended'] as bool?;
    _rated = snapshotData['rated'] as bool?;
    _chatRef = snapshotData['chatRef'] as DocumentReference?;
    _canceld = snapshotData['canceld'] as bool?;
    _invoice = snapshotData['invoice'] as bool?;
    _month = snapshotData['month'] as String?;
    _userReqImageList = getDataList(snapshotData['userReqImageList']);
    _endTime = snapshotData['endTime'] as DateTime?;
    _userStart = snapshotData['userStart'] as bool?;
    _finishingImage = getDataList(snapshotData['finishingImage']);
    _invoiceImageLenth = castToType<int>(snapshotData['invoiceImageLenth']);
    _userEnd = snapshotData['userEnd'] as bool?;
    _tecnicianEnd = snapshotData['tecnicianEnd'] as bool?;
    _userReq = snapshotData['userReq'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Requests');

  static Stream<RequestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RequestsRecord.fromSnapshot(s));

  static Future<RequestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RequestsRecord.fromSnapshot(s));

  static RequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequestsRecordData({
  DocumentReference? userRef,
  DateTime? time,
  LatLng? location,
  DocumentReference? category,
  String? description,
  String? phonNumber,
  String? userName,
  int? orderNo,
  DocumentReference? acceptedOffer,
  DocumentReference? choosedTecnicla,
  bool? userAcceptMintinance,
  bool? userPayedByApp,
  bool? userChooseToPayCash,
  bool? technicalStartWork,
  bool? technicalArrived,
  bool? invoiceAdded,
  bool? technicalGetCash,
  bool? ended,
  bool? rated,
  DocumentReference? chatRef,
  bool? canceld,
  bool? invoice,
  String? month,
  DateTime? endTime,
  bool? userStart,
  int? invoiceImageLenth,
  bool? userEnd,
  bool? tecnicianEnd,
  DocumentReference? userReq,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'time': time,
      'location': location,
      'category': category,
      'description': description,
      'phonNumber': phonNumber,
      'userName': userName,
      'orderNo': orderNo,
      'acceptedOffer': acceptedOffer,
      'choosedTecnicla': choosedTecnicla,
      'userAcceptMintinance': userAcceptMintinance,
      'userPayedByApp': userPayedByApp,
      'userChooseToPayCash': userChooseToPayCash,
      'technicalStartWork': technicalStartWork,
      'technicalArrived': technicalArrived,
      'invoiceAdded': invoiceAdded,
      'technicalGetCash': technicalGetCash,
      'ended': ended,
      'rated': rated,
      'chatRef': chatRef,
      'canceld': canceld,
      'invoice': invoice,
      'month': month,
      'endTime': endTime,
      'userStart': userStart,
      'invoiceImageLenth': invoiceImageLenth,
      'userEnd': userEnd,
      'tecnicianEnd': tecnicianEnd,
      'userReq': userReq,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequestsRecordDocumentEquality implements Equality<RequestsRecord> {
  const RequestsRecordDocumentEquality();

  @override
  bool equals(RequestsRecord? e1, RequestsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userRef == e2?.userRef &&
        e1?.time == e2?.time &&
        e1?.location == e2?.location &&
        e1?.category == e2?.category &&
        e1?.description == e2?.description &&
        e1?.phonNumber == e2?.phonNumber &&
        listEquality.equals(e1?.imageList, e2?.imageList) &&
        e1?.userName == e2?.userName &&
        e1?.orderNo == e2?.orderNo &&
        listEquality.equals(e1?.offerIntreducers, e2?.offerIntreducers) &&
        e1?.acceptedOffer == e2?.acceptedOffer &&
        e1?.choosedTecnicla == e2?.choosedTecnicla &&
        e1?.userAcceptMintinance == e2?.userAcceptMintinance &&
        e1?.userPayedByApp == e2?.userPayedByApp &&
        e1?.userChooseToPayCash == e2?.userChooseToPayCash &&
        e1?.technicalStartWork == e2?.technicalStartWork &&
        e1?.technicalArrived == e2?.technicalArrived &&
        e1?.invoiceAdded == e2?.invoiceAdded &&
        e1?.technicalGetCash == e2?.technicalGetCash &&
        e1?.ended == e2?.ended &&
        e1?.rated == e2?.rated &&
        e1?.chatRef == e2?.chatRef &&
        e1?.canceld == e2?.canceld &&
        e1?.invoice == e2?.invoice &&
        e1?.month == e2?.month &&
        listEquality.equals(e1?.userReqImageList, e2?.userReqImageList) &&
        e1?.endTime == e2?.endTime &&
        e1?.userStart == e2?.userStart &&
        listEquality.equals(e1?.finishingImage, e2?.finishingImage) &&
        e1?.invoiceImageLenth == e2?.invoiceImageLenth &&
        e1?.userEnd == e2?.userEnd &&
        e1?.tecnicianEnd == e2?.tecnicianEnd &&
        e1?.userReq == e2?.userReq;
  }

  @override
  int hash(RequestsRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.time,
        e?.location,
        e?.category,
        e?.description,
        e?.phonNumber,
        e?.imageList,
        e?.userName,
        e?.orderNo,
        e?.offerIntreducers,
        e?.acceptedOffer,
        e?.choosedTecnicla,
        e?.userAcceptMintinance,
        e?.userPayedByApp,
        e?.userChooseToPayCash,
        e?.technicalStartWork,
        e?.technicalArrived,
        e?.invoiceAdded,
        e?.technicalGetCash,
        e?.ended,
        e?.rated,
        e?.chatRef,
        e?.canceld,
        e?.invoice,
        e?.month,
        e?.userReqImageList,
        e?.endTime,
        e?.userStart,
        e?.finishingImage,
        e?.invoiceImageLenth,
        e?.userEnd,
        e?.tecnicianEnd,
        e?.userReq
      ]);

  @override
  bool isValidKey(Object? o) => o is RequestsRecord;
}
