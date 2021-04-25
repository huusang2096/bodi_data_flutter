import 'dart:convert';

import 'package:bodidatacms/model/inventory/measurement.dart';

class SizeOption {
  SizeOption({
    this.name,
    this.contents,
    this.measurements,
  });

  String? name;
  List<String>? contents;
  List<Measurement>? measurements;

  factory SizeOption.fromRawJson(String str) =>
      SizeOption.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SizeOption.fromJson(Map<String, dynamic> json) => SizeOption(
        name: json["name"] == null ? '' : json["name"],
        contents: json["contents"] == null
            ? []
            : List<String>.from(json["contents"].map((x) => x)),
        measurements: json["measurements"] == null
            ? []
            : List<Measurement>.from(
                json["measurements"].map((x) => Measurement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? '' : name,
        "contents":
            contents == null ? [] : List<dynamic>.from(contents!.map((x) => x)),
        "measurements": measurements == null
            ? []
            : List<dynamic>.from(measurements!.map((x) => x.toJson())),
      };

  List<SizeOption> getListSizeOptions() {
    List<SizeOption> listSizeOptions = [];
    listSizeOptions
        .add(new SizeOption(name: '', contents: [], measurements: []));
    listSizeOptions
        .add(new SizeOption(name: '', contents: [], measurements: []));
    listSizeOptions
        .add(new SizeOption(name: '', contents: [], measurements: []));

    return listSizeOptions;
  }
}
