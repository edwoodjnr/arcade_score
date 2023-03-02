// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scores_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScoresRecord> _$scoresRecordSerializer =
    new _$ScoresRecordSerializer();

class _$ScoresRecordSerializer implements StructuredSerializer<ScoresRecord> {
  @override
  final Iterable<Type> types = const [ScoresRecord, _$ScoresRecord];
  @override
  final String wireName = 'ScoresRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ScoresRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.score;
    if (value != null) {
      result
        ..add('score')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.init;
    if (value != null) {
      result
        ..add('init')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pic;
    if (value != null) {
      result
        ..add('pic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ref;
    if (value != null) {
      result
        ..add('ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ScoresRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScoresRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'init':
          result.init = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pic':
          result.pic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ref':
          result.ref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ScoresRecord extends ScoresRecord {
  @override
  final String? date;
  @override
  final int? score;
  @override
  final String? init;
  @override
  final String? pic;
  @override
  final DocumentReference<Object?>? ref;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ScoresRecord([void Function(ScoresRecordBuilder)? updates]) =>
      (new ScoresRecordBuilder()..update(updates))._build();

  _$ScoresRecord._(
      {this.date, this.score, this.init, this.pic, this.ref, this.ffRef})
      : super._();

  @override
  ScoresRecord rebuild(void Function(ScoresRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScoresRecordBuilder toBuilder() => new ScoresRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScoresRecord &&
        date == other.date &&
        score == other.score &&
        init == other.init &&
        pic == other.pic &&
        ref == other.ref &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, date.hashCode), score.hashCode), init.hashCode),
                pic.hashCode),
            ref.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScoresRecord')
          ..add('date', date)
          ..add('score', score)
          ..add('init', init)
          ..add('pic', pic)
          ..add('ref', ref)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ScoresRecordBuilder
    implements Builder<ScoresRecord, ScoresRecordBuilder> {
  _$ScoresRecord? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  String? _init;
  String? get init => _$this._init;
  set init(String? init) => _$this._init = init;

  String? _pic;
  String? get pic => _$this._pic;
  set pic(String? pic) => _$this._pic = pic;

  DocumentReference<Object?>? _ref;
  DocumentReference<Object?>? get ref => _$this._ref;
  set ref(DocumentReference<Object?>? ref) => _$this._ref = ref;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ScoresRecordBuilder() {
    ScoresRecord._initializeBuilder(this);
  }

  ScoresRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _score = $v.score;
      _init = $v.init;
      _pic = $v.pic;
      _ref = $v.ref;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScoresRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScoresRecord;
  }

  @override
  void update(void Function(ScoresRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScoresRecord build() => _build();

  _$ScoresRecord _build() {
    final _$result = _$v ??
        new _$ScoresRecord._(
            date: date,
            score: score,
            init: init,
            pic: pic,
            ref: ref,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
