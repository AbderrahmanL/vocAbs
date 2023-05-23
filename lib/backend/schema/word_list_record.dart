import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WordListRecord extends FirestoreRecord {
  WordListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "words" field.
  List<DocumentReference>? _words;
  List<DocumentReference> get words => _words ?? const [];
  bool hasWords() => _words != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _words = getDataList(snapshotData['words']);
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('wordList');

  static Stream<WordListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WordListRecord.fromSnapshot(s));

  static Future<WordListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WordListRecord.fromSnapshot(s));

  static WordListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WordListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WordListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WordListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WordListRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createWordListRecordData({
  String? name,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}
