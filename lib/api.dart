import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:number_fact_api/number_fact/number_fact.dart';

Future<NumberFact> getNumberFact({required String number}) async {
  final response = await http.get(
    Uri.parse('http://numbersapi.com/$number?json'),
  );
  final _bodyAsJson = jsonDecode(response.body) as Map<String, dynamic>;
  final _data = NumberFact.fromJson(_bodyAsJson);
  return _data;
}
