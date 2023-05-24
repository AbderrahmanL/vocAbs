import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WordRecord extends FirestoreRecord {
  WordRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "translation" field.
  String? _translation;
  String get translation => _translation ?? '';
  bool hasTranslation() => _translation != null;

  // "examples" field.
  List<String>? _examples;
  List<String> get examples => _examples ?? const [];
  bool hasExamples() => _examples != null;

  void _initializeFields() {
    _text = snapshotData['text'] as String?;
    _translation = snapshotData['translation'] as String?;
    _examples = getDataList(snapshotData['examples']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('word');

  static Stream<WordRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WordRecord.fromSnapshot(s));

  static Future<WordRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WordRecord.fromSnapshot(s));

  static WordRecord fromSnapshot(DocumentSnapshot snapshot) => WordRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WordRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WordRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WordRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createWordRecordData({
  String? text,
  String? translation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'text': text,
      'translation': translation,
    }.withoutNulls,
  );

  return firestoreData;
}
