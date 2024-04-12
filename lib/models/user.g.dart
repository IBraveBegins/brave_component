// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User()
  ..loved = json['+1'] as int?
  ..name = json['name'] as String
  ..age = json['age'] as num?;

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      '+1': instance.loved,
      'name': instance.name,
      'age': instance.age,
    };
