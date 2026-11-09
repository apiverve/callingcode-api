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
  CallingcodeDataDialing? dialing;

  CallingcodeData({
    this.country,
    this.officialName,
    this.countryCode,
    this.callingcodes,
    this.region,
    this.subregion,
    this.dialing,
  });

  factory CallingcodeData.fromJson(Map<String, dynamic> json) => CallingcodeData(
      country: json['country'],
      officialName: json['officialName'],
      countryCode: json['countryCode'],
      callingcodes: (json['callingcodes'] as List?)?.cast<String>(),
      region: json['region'],
      subregion: json['subregion'],
      dialing: json['dialing'] != null ? CallingcodeDataDialing.fromJson(json['dialing']) : null,
    );
}

class CallingcodeDataDialing {
  String? internationalPrefix;
  String? nationalPrefix;
  List<dynamic>? sharedWith;
  CallingcodeDataDialingPossiblelengths? possibleLengths;
  CallingcodeDataDialingExamplenumbers? exampleNumbers;

  CallingcodeDataDialing({
    this.internationalPrefix,
    this.nationalPrefix,
    this.sharedWith,
    this.possibleLengths,
    this.exampleNumbers,
  });

  factory CallingcodeDataDialing.fromJson(Map<String, dynamic> json) => CallingcodeDataDialing(
      internationalPrefix: json['internationalPrefix'],
      nationalPrefix: json['nationalPrefix'],
      sharedWith: (json['sharedWith'] as List?)?.cast<dynamic>(),
      possibleLengths: json['possibleLengths'] != null ? CallingcodeDataDialingPossiblelengths.fromJson(json['possibleLengths']) : null,
      exampleNumbers: json['exampleNumbers'] != null ? CallingcodeDataDialingExamplenumbers.fromJson(json['exampleNumbers']) : null,
    );
}

class CallingcodeDataDialingPossiblelengths {
  List<num>? fixedLine;
  List<num>? mobile;
  List<num>? tollFree;

  CallingcodeDataDialingPossiblelengths({
    this.fixedLine,
    this.mobile,
    this.tollFree,
  });

  factory CallingcodeDataDialingPossiblelengths.fromJson(Map<String, dynamic> json) => CallingcodeDataDialingPossiblelengths(
      fixedLine: (json['fixedLine'] as List?)?.cast<num>(),
      mobile: (json['mobile'] as List?)?.cast<num>(),
      tollFree: (json['tollFree'] as List?)?.cast<num>(),
    );
}

class CallingcodeDataDialingExamplenumbers {
  CallingcodeDataDialingExamplenumbersFixedline? fixedLine;
  CallingcodeDataDialingExamplenumbersMobile? mobile;
  CallingcodeDataDialingExamplenumbersTollfree? tollFree;

  CallingcodeDataDialingExamplenumbers({
    this.fixedLine,
    this.mobile,
    this.tollFree,
  });

  factory CallingcodeDataDialingExamplenumbers.fromJson(Map<String, dynamic> json) => CallingcodeDataDialingExamplenumbers(
      fixedLine: json['fixedLine'] != null ? CallingcodeDataDialingExamplenumbersFixedline.fromJson(json['fixedLine']) : null,
      mobile: json['mobile'] != null ? CallingcodeDataDialingExamplenumbersMobile.fromJson(json['mobile']) : null,
      tollFree: json['tollFree'] != null ? CallingcodeDataDialingExamplenumbersTollfree.fromJson(json['tollFree']) : null,
    );
}

class CallingcodeDataDialingExamplenumbersFixedline {
  String? international;
  String? national;
  String? e164;

  CallingcodeDataDialingExamplenumbersFixedline({
    this.international,
    this.national,
    this.e164,
  });

  factory CallingcodeDataDialingExamplenumbersFixedline.fromJson(Map<String, dynamic> json) => CallingcodeDataDialingExamplenumbersFixedline(
      international: json['international'],
      national: json['national'],
      e164: json['e164'],
    );
}

class CallingcodeDataDialingExamplenumbersMobile {
  String? international;
  String? national;
  String? e164;

  CallingcodeDataDialingExamplenumbersMobile({
    this.international,
    this.national,
    this.e164,
  });

  factory CallingcodeDataDialingExamplenumbersMobile.fromJson(Map<String, dynamic> json) => CallingcodeDataDialingExamplenumbersMobile(
      international: json['international'],
      national: json['national'],
      e164: json['e164'],
    );
}

class CallingcodeDataDialingExamplenumbersTollfree {
  String? international;
  String? national;
  String? e164;

  CallingcodeDataDialingExamplenumbersTollfree({
    this.international,
    this.national,
    this.e164,
  });

  factory CallingcodeDataDialingExamplenumbersTollfree.fromJson(Map<String, dynamic> json) => CallingcodeDataDialingExamplenumbersTollfree(
      international: json['international'],
      national: json['national'],
      e164: json['e164'],
    );
}

class CallingcodeRequest {
  String country;
  bool? dialing;

  CallingcodeRequest({
    required this.country,
    this.dialing,
  });

  Map<String, dynamic> toJson() => {
      'country': country,
      if (dialing != null) 'dialing': dialing,
    };
}
