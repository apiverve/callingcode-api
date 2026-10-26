/// Response models for the Country Calling Code API.

/// API Response wrapper.
class CallingcodeResponse {
  final String status;
  final dynamic error;
  final CallingcodeData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  CallingcodeResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory CallingcodeResponse.fromJson(Map<String, dynamic> json) => CallingcodeResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CallingcodeData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Country Calling Code API.

class CallingcodeData {
  String? country;
  String? officialName;
  String? countryCode;
  List<String>? callingcodes;
  String? region;
  String? subregion;

  CallingcodeData({
    this.country,
    this.officialName,
    this.countryCode,
    this.callingcodes,
    this.region,
    this.subregion,
  });

  factory CallingcodeData.fromJson(Map<String, dynamic> json) => CallingcodeData(
      country: json['country'],
      officialName: json['officialName'],
      countryCode: json['countryCode'],
      callingcodes: (json['callingcodes'] as List?)?.cast<String>(),
      region: json['region'],
      subregion: json['subregion'],
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
