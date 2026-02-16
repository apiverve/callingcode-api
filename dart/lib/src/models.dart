/// Response models for the Country Calling Code API.

/// API Response wrapper.
class CallingcodeResponse {
  final String status;
  final dynamic error;
  final CallingcodeData? data;

  CallingcodeResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory CallingcodeResponse.fromJson(Map<String, dynamic> json) => CallingcodeResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CallingcodeData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Country Calling Code API.

class CallingcodeData {
  String? country;
  String? officialName;
  String? countryCode;
  List<String>? callingcodes;

  CallingcodeData({
    this.country,
    this.officialName,
    this.countryCode,
    this.callingcodes,
  });

  factory CallingcodeData.fromJson(Map<String, dynamic> json) => CallingcodeData(
      country: json['country'],
      officialName: json['officialName'],
      countryCode: json['countryCode'],
      callingcodes: (json['callingcodes'] as List?)?.cast<String>(),
    );
}

class CallingcodeRequest {
  String country;

  CallingcodeRequest({
    required this.country,
  });

  Map<String, dynamic> toJson() => {
      'country': country,
    };
}
