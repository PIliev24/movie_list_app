import 'dart:convert';

import 'package:dio/dio.dart';

import 'locator.dart';

final _dio = getIt<Dio>();

Future<Options> requestOptions() async {
  return Options(headers: {
    Headers.acceptHeader: 'application/json',
    Headers.contentTypeHeader: 'application/json',
    'Access-Control_Allow_Origin': '*',
  });
}

Future getRequest(String url) async {
  Response response = await _dio.get(
    url,
    options: await requestOptions(),
  );
  return json.decode(response.data);
}
