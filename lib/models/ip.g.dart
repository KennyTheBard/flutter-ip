// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ip.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Ip> _$ipSerializer = new _$IpSerializer();

class _$IpSerializer implements StructuredSerializer<Ip> {
  @override
  final Iterable<Type> types = const [Ip, _$Ip];
  @override
  final String wireName = 'Ip';

  @override
  Iterable<Object?> serialize(Serializers serializers, Ip object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'ip',
      serializers.serialize(object.ip, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Ip deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IpBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      // ignore: cast_nullable_to_non_nullable
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ip':
          // ignore: cast_nullable_to_non_nullable
          result.ip = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Ip extends Ip {
  @override
  final String ip;

  factory _$Ip([void Function(IpBuilder)? updates]) => (new IpBuilder()..update(updates)).build();

  _$Ip._({required this.ip}) : super._() {
    BuiltValueNullFieldError.checkNotNull(ip, 'Ip', 'ip');
  }

  @override
  Ip rebuild(void Function(IpBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  IpBuilder toBuilder() => new IpBuilder()..replace(this);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ip && ip == other.ip;
  }

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode {
    return $jf($jc(0, ip.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Ip')..add('ip', ip)).toString();
  }
}

class IpBuilder implements Builder<Ip, IpBuilder> {
  _$Ip? _$v;

  String? _ip;
  String? get ip => _$this._ip;
  set ip(String? ip) => _$this._ip = ip;

  IpBuilder();

  IpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ip = $v.ip;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ip other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ip;
  }

  @override
  void update(void Function(IpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Ip build() {
    final _$result = _$v ?? new _$Ip._(ip: BuiltValueNullFieldError.checkNotNull(ip, 'Ip', 'ip'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
