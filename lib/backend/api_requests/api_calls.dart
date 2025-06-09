import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SafeBrowsingCheckCall {
  static Future<ApiCallResponse> call({
    String? urlInput = '',
  }) async {
    final ffApiRequestBody = '''
{
  "client": {
    "clientId": "yourcompanyname",
    "clientVersion": "1.5.2"
  },
  "threatInfo": {
    "threatTypes": ["MALWARE", "SOCIAL_ENGINEERING", "UNWANTED_SOFTWARE"],
    "platformTypes": ["ANY_PLATFORM"],
    "threatEntryTypes": ["URL"],
    "threatEntries": [
      {"url": "${escapeStringForJson(urlInput)}"}
    ]
  }
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'SafeBrowsingCheck',
      apiUrl:
          'https://safebrowsing.googleapis.com/v4/threatMatches:find?key=AIzaSyDmKMD_IVW-cg5hutKxidG2ZmtdO4_B_aQ',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? matches(dynamic response) => getJsonField(
        response,
        r'''$.matches''',
        true,
      ) as List?;
  static String? threatType(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.matches[:].threatType''',
      ));
  static String? platformType(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.matches[:].platformType''',
      ));
  static dynamic threat(dynamic response) => getJsonField(
        response,
        r'''$.matches[:].threat''',
      );
  static String? threatURL(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.matches[:].threat.url''',
      ));
  static String? cacheDuration(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.matches[:].cacheDuration''',
      ));
  static String? threatEntryType(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.matches[:].threatEntryType''',
      ));
}

class VirusTotalCheckCall {
  static Future<ApiCallResponse> call({
    String? urlInput = '',
  }) async {
    final ffApiRequestBody = '''
{
  "url": "${escapeStringForJson(urlInput)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'VirusTotalCheck',
      apiUrl: 'https://www.virustotal.com/api/v3/urls',
      callType: ApiCallType.POST,
      headers: {
        '{   x-apikey':
            '82bc72ca00d248848b8e87bc975ae1a392605c58b7d1da0a284834c7ff78aaca }',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetScanResultCall {
  static Future<ApiCallResponse> call({
    String? scanid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetScanResult',
      apiUrl:
          'https://us-central1-nacsa-prototype.cloudfunctions.net/api/getResult/${scanid}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? maliciousCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.attributes.stats.malicious''',
      ));
  static int? suspiciousCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.attributes.stats.suspicious''',
      ));
  static int? undetectedCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.attributes.stats.undetected''',
      ));
  static int? harmlessCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.attributes.stats.harmless''',
      ));
  static String? scanStatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.attributes.status''',
      ));
}

class ScanUrlCall {
  static Future<ApiCallResponse> call({
    String? url = '',
  }) async {
    final ffApiRequestBody = '''
{
  "url": "${escapeStringForJson(url)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'scanUrl',
      apiUrl:
          'https://us-central1-nacsa-prototype.cloudfunctions.net/api/scanUrl',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? scanid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.id''',
      ));
}

class GetResultCall {
  static Future<ApiCallResponse> call({
    String? scanId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getResult',
      apiUrl: 'https://www.virustotal.com/api/v3/analyses/',
      callType: ApiCallType.GET,
      headers: {
        '{  x-apikey':
            '82bc72ca00d248848b8e87bc975ae1a392605c58b7d1da0a284834c7ff78aaca }',
      },
      params: {
        'scanId': scanId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
