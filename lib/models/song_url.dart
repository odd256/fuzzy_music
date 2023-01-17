import 'package:flutter/foundation.dart';

@immutable
class SongUrl {

  const SongUrl({
    required this.data,
    required this.code,
  });

  final List<Datum> data;
  final int code;

  factory SongUrl.fromJson(Map<String,dynamic> json) => SongUrl(
    data: (json['data'] as List? ?? []).map((e) => Datum.fromJson(e as Map<String, dynamic>)).toList(),
    code: json['code'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'data': data.map((e) => e.toJson()).toList(),
    'code': code
  };

  SongUrl clone() => SongUrl(
    data: data.map((e) => e.clone()).toList(),
    code: code
  );


  SongUrl copyWith({
    List<Datum>? data,
    int? code
  }) => SongUrl(
    data: data ?? this.data,
    code: code ?? this.code,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is SongUrl && data == other.data && code == other.code;

  @override
  int get hashCode => data.hashCode ^ code.hashCode;
}

@immutable
class Datum {

  const Datum({
    required this.id,
    required this.url,
    required this.br,
    required this.size,
    required this.md5,
    required this.code,
    required this.expi,
    required this.type,
    required this.gain,
    required this.peak,
    required this.fee,
    required this.uf,
    required this.payed,
    required this.flag,
    required this.canExtend,
    required this.freeTrialInfo,
    required this.level,
    required this.encodeType,
    required this.freeTrialPrivilege,
    required this.freeTimeTrialPrivilege,
    required this.urlSource,
    required this.rightSource,
    required this.podcastCtrp,
    required this.effectTypes,
    required this.time,
  });

  final int id;
  final String url;
  final int br;
  final int size;
  final String md5;
  final int code;
  final int expi;
  final String type;
  final double gain;
  final double peak;
  final int fee;
  final dynamic uf;
  final int payed;
  final int flag;
  final bool canExtend;
  final dynamic freeTrialInfo;
  final String level;
  final String encodeType;
  final FreeTrialPrivilege freeTrialPrivilege;
  final FreeTimeTrialPrivilege freeTimeTrialPrivilege;
  final int urlSource;
  final int rightSource;
  final dynamic podcastCtrp;
  final dynamic effectTypes;
  final int time;

  factory Datum.fromJson(Map<String,dynamic> json) => Datum(
    id: json['id'] as int,
    url: json['url'].toString(),
    br: json['br'] as int,
    size: json['size'] as int,
    md5: json['md5'].toString(),
    code: json['code'] as int,
    expi: json['expi'] as int,
    type: json['type'].toString(),
    gain: (json['gain'] as num).toDouble(),
    peak: (json['peak'] as num).toDouble(),
    fee: json['fee'] as int,
    uf: json['uf'] as dynamic,
    payed: json['payed'] as int,
    flag: json['flag'] as int,
    canExtend: json['canExtend'] as bool,
    freeTrialInfo: json['freeTrialInfo'] as dynamic,
    level: json['level'].toString(),
    encodeType: json['encodeType'].toString(),
    freeTrialPrivilege: FreeTrialPrivilege.fromJson(json['freeTrialPrivilege'] as Map<String, dynamic>),
    freeTimeTrialPrivilege: FreeTimeTrialPrivilege.fromJson(json['freeTimeTrialPrivilege'] as Map<String, dynamic>),
    urlSource: json['urlSource'] as int,
    rightSource: json['rightSource'] as int,
    podcastCtrp: json['podcastCtrp'] as dynamic,
    effectTypes: json['effectTypes'] as dynamic,
    time: json['time'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'id': id,
    'url': url,
    'br': br,
    'size': size,
    'md5': md5,
    'code': code,
    'expi': expi,
    'type': type,
    'gain': gain,
    'peak': peak,
    'fee': fee,
    'uf': uf,
    'payed': payed,
    'flag': flag,
    'canExtend': canExtend,
    'freeTrialInfo': freeTrialInfo,
    'level': level,
    'encodeType': encodeType,
    'freeTrialPrivilege': freeTrialPrivilege.toJson(),
    'freeTimeTrialPrivilege': freeTimeTrialPrivilege.toJson(),
    'urlSource': urlSource,
    'rightSource': rightSource,
    'podcastCtrp': podcastCtrp,
    'effectTypes': effectTypes,
    'time': time
  };

  Datum clone() => Datum(
    id: id,
    url: url,
    br: br,
    size: size,
    md5: md5,
    code: code,
    expi: expi,
    type: type,
    gain: gain,
    peak: peak,
    fee: fee,
    uf: uf,
    payed: payed,
    flag: flag,
    canExtend: canExtend,
    freeTrialInfo: freeTrialInfo,
    level: level,
    encodeType: encodeType,
    freeTrialPrivilege: freeTrialPrivilege.clone(),
    freeTimeTrialPrivilege: freeTimeTrialPrivilege.clone(),
    urlSource: urlSource,
    rightSource: rightSource,
    podcastCtrp: podcastCtrp,
    effectTypes: effectTypes,
    time: time
  );


  Datum copyWith({
    int? id,
    String? url,
    int? br,
    int? size,
    String? md5,
    int? code,
    int? expi,
    String? type,
    double? gain,
    double? peak,
    int? fee,
    dynamic? uf,
    int? payed,
    int? flag,
    bool? canExtend,
    dynamic? freeTrialInfo,
    String? level,
    String? encodeType,
    FreeTrialPrivilege? freeTrialPrivilege,
    FreeTimeTrialPrivilege? freeTimeTrialPrivilege,
    int? urlSource,
    int? rightSource,
    dynamic? podcastCtrp,
    dynamic? effectTypes,
    int? time
  }) => Datum(
    id: id ?? this.id,
    url: url ?? this.url,
    br: br ?? this.br,
    size: size ?? this.size,
    md5: md5 ?? this.md5,
    code: code ?? this.code,
    expi: expi ?? this.expi,
    type: type ?? this.type,
    gain: gain ?? this.gain,
    peak: peak ?? this.peak,
    fee: fee ?? this.fee,
    uf: uf ?? this.uf,
    payed: payed ?? this.payed,
    flag: flag ?? this.flag,
    canExtend: canExtend ?? this.canExtend,
    freeTrialInfo: freeTrialInfo ?? this.freeTrialInfo,
    level: level ?? this.level,
    encodeType: encodeType ?? this.encodeType,
    freeTrialPrivilege: freeTrialPrivilege ?? this.freeTrialPrivilege,
    freeTimeTrialPrivilege: freeTimeTrialPrivilege ?? this.freeTimeTrialPrivilege,
    urlSource: urlSource ?? this.urlSource,
    rightSource: rightSource ?? this.rightSource,
    podcastCtrp: podcastCtrp ?? this.podcastCtrp,
    effectTypes: effectTypes ?? this.effectTypes,
    time: time ?? this.time,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Datum && id == other.id && url == other.url && br == other.br && size == other.size && md5 == other.md5 && code == other.code && expi == other.expi && type == other.type && gain == other.gain && peak == other.peak && fee == other.fee && uf == other.uf && payed == other.payed && flag == other.flag && canExtend == other.canExtend && freeTrialInfo == other.freeTrialInfo && level == other.level && encodeType == other.encodeType && freeTrialPrivilege == other.freeTrialPrivilege && freeTimeTrialPrivilege == other.freeTimeTrialPrivilege && urlSource == other.urlSource && rightSource == other.rightSource && podcastCtrp == other.podcastCtrp && effectTypes == other.effectTypes && time == other.time;

  @override
  int get hashCode => id.hashCode ^ url.hashCode ^ br.hashCode ^ size.hashCode ^ md5.hashCode ^ code.hashCode ^ expi.hashCode ^ type.hashCode ^ gain.hashCode ^ peak.hashCode ^ fee.hashCode ^ uf.hashCode ^ payed.hashCode ^ flag.hashCode ^ canExtend.hashCode ^ freeTrialInfo.hashCode ^ level.hashCode ^ encodeType.hashCode ^ freeTrialPrivilege.hashCode ^ freeTimeTrialPrivilege.hashCode ^ urlSource.hashCode ^ rightSource.hashCode ^ podcastCtrp.hashCode ^ effectTypes.hashCode ^ time.hashCode;
}

@immutable
class FreeTrialPrivilege {

  const FreeTrialPrivilege({
    required this.resConsumable,
    required this.userConsumable,
    required this.listenType,
    required this.cannotListenReason,
  });

  final bool resConsumable;
  final bool userConsumable;
  final dynamic listenType;
  final dynamic cannotListenReason;

  factory FreeTrialPrivilege.fromJson(Map<String,dynamic> json) => FreeTrialPrivilege(
    resConsumable: json['resConsumable'] as bool,
    userConsumable: json['userConsumable'] as bool,
    listenType: json['listenType'] as dynamic,
    cannotListenReason: json['cannotListenReason'] as dynamic
  );
  
  Map<String, dynamic> toJson() => {
    'resConsumable': resConsumable,
    'userConsumable': userConsumable,
    'listenType': listenType,
    'cannotListenReason': cannotListenReason
  };

  FreeTrialPrivilege clone() => FreeTrialPrivilege(
    resConsumable: resConsumable,
    userConsumable: userConsumable,
    listenType: listenType,
    cannotListenReason: cannotListenReason
  );


  FreeTrialPrivilege copyWith({
    bool? resConsumable,
    bool? userConsumable,
    dynamic? listenType,
    dynamic? cannotListenReason
  }) => FreeTrialPrivilege(
    resConsumable: resConsumable ?? this.resConsumable,
    userConsumable: userConsumable ?? this.userConsumable,
    listenType: listenType ?? this.listenType,
    cannotListenReason: cannotListenReason ?? this.cannotListenReason,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is FreeTrialPrivilege && resConsumable == other.resConsumable && userConsumable == other.userConsumable && listenType == other.listenType && cannotListenReason == other.cannotListenReason;

  @override
  int get hashCode => resConsumable.hashCode ^ userConsumable.hashCode ^ listenType.hashCode ^ cannotListenReason.hashCode;
}

@immutable
class FreeTimeTrialPrivilege {

  const FreeTimeTrialPrivilege({
    required this.resConsumable,
    required this.userConsumable,
    required this.type,
    required this.remainTime,
  });

  final bool resConsumable;
  final bool userConsumable;
  final int type;
  final int remainTime;

  factory FreeTimeTrialPrivilege.fromJson(Map<String,dynamic> json) => FreeTimeTrialPrivilege(
    resConsumable: json['resConsumable'] as bool,
    userConsumable: json['userConsumable'] as bool,
    type: json['type'] as int,
    remainTime: json['remainTime'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'resConsumable': resConsumable,
    'userConsumable': userConsumable,
    'type': type,
    'remainTime': remainTime
  };

  FreeTimeTrialPrivilege clone() => FreeTimeTrialPrivilege(
    resConsumable: resConsumable,
    userConsumable: userConsumable,
    type: type,
    remainTime: remainTime
  );


  FreeTimeTrialPrivilege copyWith({
    bool? resConsumable,
    bool? userConsumable,
    int? type,
    int? remainTime
  }) => FreeTimeTrialPrivilege(
    resConsumable: resConsumable ?? this.resConsumable,
    userConsumable: userConsumable ?? this.userConsumable,
    type: type ?? this.type,
    remainTime: remainTime ?? this.remainTime,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is FreeTimeTrialPrivilege && resConsumable == other.resConsumable && userConsumable == other.userConsumable && type == other.type && remainTime == other.remainTime;

  @override
  int get hashCode => resConsumable.hashCode ^ userConsumable.hashCode ^ type.hashCode ^ remainTime.hashCode;
}
