import 'package:json_annotation/json_annotation.dart';

part 'number_fact.g.dart';

@JsonSerializable()
class NumberFact {
  @JsonKey(name: 'text')
  String? text;
  @JsonKey(name: 'number')
  int? number;
  @JsonKey(name: 'found')
  bool? found;
  @JsonKey(name: 'type')
  String? type;

  NumberFact({this.text, this.number, this.found, this.type});

  factory NumberFact.fromJson(Map<String, dynamic> json) {
    return _$NumberFactFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NumberFactToJson(this);
}
