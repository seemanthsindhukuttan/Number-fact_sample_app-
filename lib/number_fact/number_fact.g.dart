// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_fact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NumberFact _$NumberFactFromJson(Map<String, dynamic> json) => NumberFact(
      text: json['text'] as String?,
      number: json['number'] as int?,
      found: json['found'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NumberFactToJson(NumberFact instance) =>
    <String, dynamic>{
      'text': instance.text,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
