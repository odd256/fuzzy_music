import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';



import 'index.dart';

@immutable
class Lyrics {

  const Lyrics({
    required this.sgc,
    required this.sfy,
    required this.qfy,
    required this.lrc,
    required this.klyric,
    required this.tlyric,
    required this.code,
  });

  final bool sgc;
  final bool sfy;
  final bool qfy;
  final Lrc lrc;
  final Klyric klyric;
  final Tlyric tlyric;
  final int code;

  factory Lyrics.fromJson(Map<String,dynamic> json) => Lyrics(
    sgc: json['sgc'] as bool,
    sfy: json['sfy'] as bool,
    qfy: json['qfy'] as bool,
    lrc: Lrc.fromJson(json['lrc'] as Map<String, dynamic>),
    klyric: Klyric.fromJson(json['klyric'] as Map<String, dynamic>),
    tlyric: Tlyric.fromJson(json['tlyric'] as Map<String, dynamic>),
    code: json['code'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'sgc': sgc,
    'sfy': sfy,
    'qfy': qfy,
    'lrc': lrc.toJson(),
    'klyric': klyric.toJson(),
    'tlyric': tlyric.toJson(),
    'code': code
  };

  Lyrics clone() => Lyrics(
    sgc: sgc,
    sfy: sfy,
    qfy: qfy,
    lrc: lrc.clone(),
    klyric: klyric.clone(),
    tlyric: tlyric.clone(),
    code: code
  );


  Lyrics copyWith({
    bool? sgc,
    bool? sfy,
    bool? qfy,
    Lrc? lrc,
    Klyric? klyric,
    Tlyric? tlyric,
    int? code
  }) => Lyrics(
    sgc: sgc ?? this.sgc,
    sfy: sfy ?? this.sfy,
    qfy: qfy ?? this.qfy,
    lrc: lrc ?? this.lrc,
    klyric: klyric ?? this.klyric,
    tlyric: tlyric ?? this.tlyric,
    code: code ?? this.code,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Lyrics && sgc == other.sgc && sfy == other.sfy && qfy == other.qfy && lrc == other.lrc && klyric == other.klyric && tlyric == other.tlyric && code == other.code;

  @override
  int get hashCode => sgc.hashCode ^ sfy.hashCode ^ qfy.hashCode ^ lrc.hashCode ^ klyric.hashCode ^ tlyric.hashCode ^ code.hashCode;
}

@immutable
class Lrc {

  const Lrc({
    required this.version,
    required this.lyric,
  });

  final int version;
  final String lyric;

  factory Lrc.fromJson(Map<String,dynamic> json) => Lrc(
    version: json['version'] as int,
    lyric: json['lyric'].toString()
  );
  
  Map<String, dynamic> toJson() => {
    'version': version,
    'lyric': lyric
  };

  Lrc clone() => Lrc(
    version: version,
    lyric: lyric
  );


  Lrc copyWith({
    int? version,
    String? lyric
  }) => Lrc(
    version: version ?? this.version,
    lyric: lyric ?? this.lyric,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Lrc && version == other.version && lyric == other.lyric;

  @override
  int get hashCode => version.hashCode ^ lyric.hashCode;
}

@immutable
class Klyric {

  const Klyric({
    required this.version,
    required this.lyric,
  });

  final int version;
  final String lyric;

  factory Klyric.fromJson(Map<String,dynamic> json) => Klyric(
    version: json['version'] as int,
    lyric: json['lyric'].toString()
  );
  
  Map<String, dynamic> toJson() => {
    'version': version,
    'lyric': lyric
  };

  Klyric clone() => Klyric(
    version: version,
    lyric: lyric
  );


  Klyric copyWith({
    int? version,
    String? lyric
  }) => Klyric(
    version: version ?? this.version,
    lyric: lyric ?? this.lyric,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Klyric && version == other.version && lyric == other.lyric;

  @override
  int get hashCode => version.hashCode ^ lyric.hashCode;
}

@immutable
class Tlyric {

  const Tlyric({
    required this.version,
    required this.lyric,
  });

  final int version;
  final String lyric;

  factory Tlyric.fromJson(Map<String,dynamic> json) => Tlyric(
    version: json['version'] as int,
    lyric: json['lyric'].toString()
  );
  
  Map<String, dynamic> toJson() => {
    'version': version,
    'lyric': lyric
  };

  Tlyric clone() => Tlyric(
    version: version,
    lyric: lyric
  );


  Tlyric copyWith({
    int? version,
    String? lyric
  }) => Tlyric(
    version: version ?? this.version,
    lyric: lyric ?? this.lyric,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Tlyric && version == other.version && lyric == other.lyric;

  @override
  int get hashCode => version.hashCode ^ lyric.hashCode;
}
