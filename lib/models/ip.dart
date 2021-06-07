import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_ip/models/serializers.dart';

part 'ip.g.dart';

abstract class Ip implements Built<Ip, IpBuilder> {
  factory Ip([void Function(IpBuilder)? updates]) = _$Ip;

  factory Ip.fromJson(Map<String, dynamic> json) {
    // ignore: cast_nullable_to_non_nullable
    return serializers.deserializeWith(serializer, json) as Ip;
  }

  Ip._();

  @BuiltValueField(wireName: 'ip')
  String get ip;

  // ignore: cast_nullable_to_non_nullable
  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Ip> get serializer => _$ipSerializer;
}
