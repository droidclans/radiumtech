import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    this.status,
    this.error,
    this.data,
  });

  bool? status;
  String? error;
  List<Datum>? data;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    status: json["status"],
    error: json["error"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "error": error,
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    this.surveyId,
    this.applicantName,
    this.region,
    this.type,
    this.applicantContact,
    this.bankIcon,
  });

  int? surveyId;
  String? applicantName;
  String? region;
  String? type;
  String? applicantContact;
  String? bankIcon;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    surveyId: json["survey_id"],
    applicantName: json["applicant_name"],
    region: json["region"],
    type: json["type"],
    applicantContact: json["applicant_contact"],
    bankIcon: json["bank_icon"],
  );

  Map<String, dynamic> toJson() => {
    "survey_id": surveyId,
    "applicant_name": applicantName,
    "region": region,
    "type": type,
    "applicant_contact": applicantContact,
    "bank_icon": bankIcon,
  };
}
