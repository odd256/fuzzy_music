import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';

import 'index.dart';

@immutable
class Personalized {

  const Personalized({
    required this.hasTaste,
    required this.code,
    required this.category,
    required this.result,
  });

  final bool hasTaste;
  final int code;
  final int category;
  final List<Result> result;

  factory Personalized.fromJson(Map<String,dynamic> json) => Personalized(
    hasTaste: json['hasTaste'] as bool,
    code: json['code'] as int,
    category: json['category'] as int,
    result: (json['result'] as List? ?? []).map((e) => Result.fromJson(e as Map<String, dynamic>)).toList()
  );
  
  Map<String, dynamic> toJson() => {
    'hasTaste': hasTaste,
    'code': code,
    'category': category,
    'result': result.map((e) => e.toJson()).toList()
  };

  Personalized clone() => Personalized(
    hasTaste: hasTaste,
    code: code,
    category: category,
    result: result.map((e) => e.clone()).toList()
  );


  Personalized copyWith({
    bool? hasTaste,
    int? code,
    int? category,
    List<Result>? result
  }) => Personalized(
    hasTaste: hasTaste ?? this.hasTaste,
    code: code ?? this.code,
    category: category ?? this.category,
    result: result ?? this.result,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Personalized && hasTaste == other.hasTaste && code == other.code && category == other.category && result == other.result;

  @override
  int get hashCode => hasTaste.hashCode ^ code.hashCode ^ category.hashCode ^ result.hashCode;
}

@immutable
class Result {

  const Result({
    required this.id,
    required this.type,
    required this.name,
    required this.copywriter,
    required this.picUrl,
    required this.canDislike,
    required this.trackNumberUpdateTime,
    required this.playCount,
    required this.trackCount,
    required this.highQuality,
    required this.alg,
  });

  final int id;
  final int type;
  final String name;
  final String copywriter;
  final String picUrl;
  final bool canDislike;
  final int trackNumberUpdateTime;
  final double playCount;
  final int trackCount;
  final bool highQuality;
  final String alg;

  factory Result.fromJson(Map<String,dynamic> json) => Result(
    id: json['id'] as int,
    type: json['type'] as int,
    name: json['name'].toString(),
    copywriter: json['copywriter'].toString(),
    picUrl: json['picUrl'].toString(),
    canDislike: json['canDislike'] as bool,
    trackNumberUpdateTime: json['trackNumberUpdateTime'] as int,
    playCount: (json['playCount'] as num).toDouble(),
    trackCount: json['trackCount'] as int,
    highQuality: json['highQuality'] as bool,
    alg: json['alg'].toString()
  );
  
  Map<String, dynamic> toJson() => {
    'id': id,
    'type': type,
    'name': name,
    'copywriter': copywriter,
    'picUrl': picUrl,
    'canDislike': canDislike,
    'trackNumberUpdateTime': trackNumberUpdateTime,
    'playCount': playCount,
    'trackCount': trackCount,
    'highQuality': highQuality,
    'alg': alg
  };

  Result clone() => Result(
    id: id,
    type: type,
    name: name,
    copywriter: copywriter,
    picUrl: picUrl,
    canDislike: canDislike,
    trackNumberUpdateTime: trackNumberUpdateTime,
    playCount: playCount,
    trackCount: trackCount,
    highQuality: highQuality,
    alg: alg
  );


  Result copyWith({
    int? id,
    int? type,
    String? name,
    String? copywriter,
    String? picUrl,
    bool? canDislike,
    int? trackNumberUpdateTime,
    double? playCount,
    int? trackCount,
    bool? highQuality,
    String? alg
  }) => Result(
    id: id ?? this.id,
    type: type ?? this.type,
    name: name ?? this.name,
    copywriter: copywriter ?? this.copywriter,
    picUrl: picUrl ?? this.picUrl,
    canDislike: canDislike ?? this.canDislike,
    trackNumberUpdateTime: trackNumberUpdateTime ?? this.trackNumberUpdateTime,
    playCount: playCount ?? this.playCount,
    trackCount: trackCount ?? this.trackCount,
    highQuality: highQuality ?? this.highQuality,
    alg: alg ?? this.alg,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Result && id == other.id && type == other.type && name == other.name && copywriter == other.copywriter && picUrl == other.picUrl && canDislike == other.canDislike && trackNumberUpdateTime == other.trackNumberUpdateTime && playCount == other.playCount && trackCount == other.trackCount && highQuality == other.highQuality && alg == other.alg;

  @override
  int get hashCode => id.hashCode ^ type.hashCode ^ name.hashCode ^ copywriter.hashCode ^ picUrl.hashCode ^ canDislike.hashCode ^ trackNumberUpdateTime.hashCode ^ playCount.hashCode ^ trackCount.hashCode ^ highQuality.hashCode ^ alg.hashCode;
}
