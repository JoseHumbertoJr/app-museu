import 'dart:convert';

import 'package:app_museu/model/Visitant.dart';
import 'package:http/http.dart' as http;

class VisitantService {
  final String appMuseuUrl =
      "https://museum-web-service.herokuapp.com/visitantes";

  Future<Visitant> createVisitant(
    String nome,
    String phone,
    String cep,
    String adress,
    String locale,
    String complement,
    String user,
    String password,
  ) async {
    final http.Response response = await http.post(
      appMuseuUrl,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'nome': nome,
        'phone': phone,
        'cep': cep,
        'adress': adress,
        'locale': locale,
        'complement': complement,
        'user': user,
        'password': password,
      }),
    );

    if (response.statusCode == 201) {
      return Visitant.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to create Visitant.');
    }
  }
}
