import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'scores_record.g.dart';

abstract class ScoresRecord
    implements Built<ScoresRecord, ScoresRecordBuilder> {
  static Serializer<ScoresRecord> get serializer => _$scoresRecordSerializer;

  String? get date;

  int? get score;

  String? get init;

  String? get pic;

  DocumentReference? get ref;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ScoresRecordBuilder builder) => builder
    ..date = ''
    ..score = 0
    ..init = ''
    ..pic = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('scores');

  static Stream<ScoresRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ScoresRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ScoresRecord._();
  factory ScoresRecord([void Function(ScoresRecordBuilder) updates]) =
      _$ScoresRecord;

  static ScoresRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createScoresRecordData({
  String? date,
  int? score,
  String? init,
  String? pic,
  DocumentReference? ref,
}) {
  final firestoreData = serializers.toFirestore(
    ScoresRecord.serializer,
    ScoresRecord(
      (s) => s
        ..date = date
        ..score = score
        ..init = init
        ..pic = pic
        ..ref = ref,
    ),
  );

  return firestoreData;
}
