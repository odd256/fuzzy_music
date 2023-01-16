import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';

import 'index.dart';

@immutable
class PlaylistTrackAll {

  const PlaylistTrackAll({
    required this.songs,
    required this.privileges,
    required this.code,
  });

  final List<Song> songs;
  final List<Privilege> privileges;
  final int code;

  factory PlaylistTrackAll.fromJson(Map<String,dynamic> json) => PlaylistTrackAll(
    songs: (json['songs'] as List? ?? []).map((e) => Song.fromJson(e as Map<String, dynamic>)).toList(),
    privileges: (json['privileges'] as List? ?? []).map((e) => Privilege.fromJson(e as Map<String, dynamic>)).toList(),
    code: json['code'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'songs': songs.map((e) => e.toJson()).toList(),
    'privileges': privileges.map((e) => e.toJson()).toList(),
    'code': code
  };

  PlaylistTrackAll clone() => PlaylistTrackAll(
    songs: songs.map((e) => e.clone()).toList(),
    privileges: privileges.map((e) => e.clone()).toList(),
    code: code
  );


  PlaylistTrackAll copyWith({
    List<Song>? songs,
    List<Privilege>? privileges,
    int? code
  }) => PlaylistTrackAll(
    songs: songs ?? this.songs,
    privileges: privileges ?? this.privileges,
    code: code ?? this.code,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is PlaylistTrackAll && songs == other.songs && privileges == other.privileges && code == other.code;

  @override
  int get hashCode => songs.hashCode ^ privileges.hashCode ^ code.hashCode;
}

@immutable
class Song {

  const Song({
    required this.name,
    required this.id,
    required this.pst,
    required this.t,
    required this.ar,
    required this.alia,
    required this.pop,
    required this.st,
    required this.rt,
    required this.fee,
    required this.v,
    required this.crbt,
    required this.cf,
    required this.al,
    required this.dt,
    required this.h,
    required this.m,
    required this.l,
    required this.sq,
    required this.hr,
    required this.a,
    required this.cd,
    required this.no,
    required this.rtUrl,
    required this.ftype,
    required this.rtUrls,
    required this.djId,
    required this.copyright,
    required this.sId,
    required this.mark,
    required this.originCoverType,
    required this.originSongSimpleData,
    required this.tagPicList,
    required this.resourceState,
    required this.version,
    required this.songJumpInfo,
    required this.entertainmentTags,
    required this.awardTags,
    required this.single,
    required this.noCopyrightRcmd,
    required this.rtype,
    required this.rurl,
    required this.mv,
    required this.mst,
    required this.cp,
    required this.publishTime,
  });

  final String name;
  final int id;
  final int pst;
  final int t;
  final List<Ar> ar;
  final List<dynamic> alia;
  final double pop;
  final int st;
  final String rt;
  final int fee;
  final int v;
  final dynamic crbt;
  final String cf;
  final Al al;
  final int dt;
  final H? h;
  final M? m;
  final L? l;
  final Sq? sq;
  final Hr? hr;
  final dynamic a;
  final String cd;
  final int no;
  final dynamic rtUrl;
  final int ftype;
  final List<dynamic> rtUrls;
  final int djId;
  final int copyright;
  final int sId;
  final int mark;
  final int originCoverType;
  final dynamic originSongSimpleData;
  final dynamic tagPicList;
  final bool resourceState;
  final int version;
  final dynamic songJumpInfo;
  final dynamic entertainmentTags;
  final dynamic awardTags;
  final int single;
  final dynamic noCopyrightRcmd;
  final int rtype;
  final dynamic rurl;
  final int mv;
  final int mst;
  final int cp;
  final int publishTime;

  factory Song.fromJson(Map<String,dynamic> json) => Song(
    name: json['name'].toString(),
    id: json['id'] as int,
    pst: json['pst'] as int,
    t: json['t'] as int,
    ar: (json['ar'] as List? ?? []).map((e) => Ar.fromJson(e as Map<String, dynamic>)).toList(),
    alia: (json['alia'] as List? ?? []).map((e) => e as dynamic).toList(),
    pop: (json['pop'] as num).toDouble(),
    st: json['st'] as int,
    rt: json['rt'].toString(),
    fee: json['fee'] as int,
    v: json['v'] as int,
    crbt: json['crbt'] as dynamic,
    cf: json['cf'].toString(),
    al: Al.fromJson(json['al'] as Map<String, dynamic>),
    dt: json['dt'] as int,
    h: H.fromJson(json['h'] as Map<String, dynamic>),
    m: M.fromJson(json['m'] as Map<String, dynamic>),
    l: L.fromJson(json['l'] as Map<String, dynamic>),
    sq: Sq.fromJson(json['sq'] as Map<String, dynamic>),
    hr: Hr.fromJson(json['hr'] as Map<String, dynamic>),
    a: json['a'] as dynamic,
    cd: json['cd'].toString(),
    no: json['no'] as int,
    rtUrl: json['rtUrl'] as dynamic,
    ftype: json['ftype'] as int,
    rtUrls: (json['rtUrls'] as List? ?? []).map((e) => e as dynamic).toList(),
    djId: json['djId'] as int,
    copyright: json['copyright'] as int,
    sId: json['s_id'] as int,
    mark: json['mark'] as int,
    originCoverType: json['originCoverType'] as int,
    originSongSimpleData: json['originSongSimpleData'] as dynamic,
    tagPicList: json['tagPicList'] as dynamic,
    resourceState: json['resourceState'] as bool,
    version: json['version'] as int,
    songJumpInfo: json['songJumpInfo'] as dynamic,
    entertainmentTags: json['entertainmentTags'] as dynamic,
    awardTags: json['awardTags'] as dynamic,
    single: json['single'] as int,
    noCopyrightRcmd: json['noCopyrightRcmd'] as dynamic,
    rtype: json['rtype'] as int,
    rurl: json['rurl'] as dynamic,
    mv: json['mv'] as int,
    mst: json['mst'] as int,
    cp: json['cp'] as int,
    publishTime: json['publishTime'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'name': name,
    'id': id,
    'pst': pst,
    't': t,
    'ar': ar.map((e) => e.toJson()).toList(),
    'alia': alia.map((e) => e.toString()).toList(),
    'pop': pop,
    'st': st,
    'rt': rt,
    'fee': fee,
    'v': v,
    'crbt': crbt,
    'cf': cf,
    'al': al.toJson(),
    'dt': dt,
    'h': h?.toJson(),
    'm': m?.toJson(),
    'l': l?.toJson(),
    'sq': sq?.toJson(),
    'hr': hr?.toJson(),
    'a': a,
    'cd': cd,
    'no': no,
    'rtUrl': rtUrl,
    'ftype': ftype,
    'rtUrls': rtUrls.map((e) => e.toString()).toList(),
    'djId': djId,
    'copyright': copyright,
    's_id': sId,
    'mark': mark,
    'originCoverType': originCoverType,
    'originSongSimpleData': originSongSimpleData,
    'tagPicList': tagPicList,
    'resourceState': resourceState,
    'version': version,
    'songJumpInfo': songJumpInfo,
    'entertainmentTags': entertainmentTags,
    'awardTags': awardTags,
    'single': single,
    'noCopyrightRcmd': noCopyrightRcmd,
    'rtype': rtype,
    'rurl': rurl,
    'mv': mv,
    'mst': mst,
    'cp': cp,
    'publishTime': publishTime
  };

  Song clone() => Song(
    name: name,
    id: id,
    pst: pst,
    t: t,
    ar: ar.map((e) => e.clone()).toList(),
    alia: alia.toList(),
    pop: pop,
    st: st,
    rt: rt,
    fee: fee,
    v: v,
    crbt: crbt,
    cf: cf,
    al: al.clone(),
    dt: dt,
    h: h?.clone(),
    m: m?.clone(),
    l: l?.clone(),
    sq: sq?.clone(),
    hr: hr?.clone(),
    a: a,
    cd: cd,
    no: no,
    rtUrl: rtUrl,
    ftype: ftype,
    rtUrls: rtUrls.toList(),
    djId: djId,
    copyright: copyright,
    sId: sId,
    mark: mark,
    originCoverType: originCoverType,
    originSongSimpleData: originSongSimpleData,
    tagPicList: tagPicList,
    resourceState: resourceState,
    version: version,
    songJumpInfo: songJumpInfo,
    entertainmentTags: entertainmentTags,
    awardTags: awardTags,
    single: single,
    noCopyrightRcmd: noCopyrightRcmd,
    rtype: rtype,
    rurl: rurl,
    mv: mv,
    mst: mst,
    cp: cp,
    publishTime: publishTime
  );


  Song copyWith({
    String? name,
    int? id,
    int? pst,
    int? t,
    List<Ar>? ar,
    List<dynamic>? alia,
    double? pop,
    int? st,
    String? rt,
    int? fee,
    int? v,
    dynamic? crbt,
    String? cf,
    Al? al,
    int? dt,
    H? h,
    M? m,
    L? l,
    Sq? sq,
    Hr? hr,
    dynamic? a,
    String? cd,
    int? no,
    dynamic? rtUrl,
    int? ftype,
    List<dynamic>? rtUrls,
    int? djId,
    int? copyright,
    int? sId,
    int? mark,
    int? originCoverType,
    dynamic? originSongSimpleData,
    dynamic? tagPicList,
    bool? resourceState,
    int? version,
    dynamic? songJumpInfo,
    dynamic? entertainmentTags,
    dynamic? awardTags,
    int? single,
    dynamic? noCopyrightRcmd,
    int? rtype,
    dynamic? rurl,
    int? mv,
    int? mst,
    int? cp,
    int? publishTime
  }) => Song(
    name: name ?? this.name,
    id: id ?? this.id,
    pst: pst ?? this.pst,
    t: t ?? this.t,
    ar: ar ?? this.ar,
    alia: alia ?? this.alia,
    pop: pop ?? this.pop,
    st: st ?? this.st,
    rt: rt ?? this.rt,
    fee: fee ?? this.fee,
    v: v ?? this.v,
    crbt: crbt ?? this.crbt,
    cf: cf ?? this.cf,
    al: al ?? this.al,
    dt: dt ?? this.dt,
    h: h ?? this.h,
    m: m ?? this.m,
    l: l ?? this.l,
    sq: sq ?? this.sq,
    hr: hr ?? this.hr,
    a: a ?? this.a,
    cd: cd ?? this.cd,
    no: no ?? this.no,
    rtUrl: rtUrl ?? this.rtUrl,
    ftype: ftype ?? this.ftype,
    rtUrls: rtUrls ?? this.rtUrls,
    djId: djId ?? this.djId,
    copyright: copyright ?? this.copyright,
    sId: sId ?? this.sId,
    mark: mark ?? this.mark,
    originCoverType: originCoverType ?? this.originCoverType,
    originSongSimpleData: originSongSimpleData ?? this.originSongSimpleData,
    tagPicList: tagPicList ?? this.tagPicList,
    resourceState: resourceState ?? this.resourceState,
    version: version ?? this.version,
    songJumpInfo: songJumpInfo ?? this.songJumpInfo,
    entertainmentTags: entertainmentTags ?? this.entertainmentTags,
    awardTags: awardTags ?? this.awardTags,
    single: single ?? this.single,
    noCopyrightRcmd: noCopyrightRcmd ?? this.noCopyrightRcmd,
    rtype: rtype ?? this.rtype,
    rurl: rurl ?? this.rurl,
    mv: mv ?? this.mv,
    mst: mst ?? this.mst,
    cp: cp ?? this.cp,
    publishTime: publishTime ?? this.publishTime,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Song && name == other.name && id == other.id && pst == other.pst && t == other.t && ar == other.ar && alia == other.alia && pop == other.pop && st == other.st && rt == other.rt && fee == other.fee && v == other.v && crbt == other.crbt && cf == other.cf && al == other.al && dt == other.dt && h == other.h && m == other.m && l == other.l && sq == other.sq && hr == other.hr && a == other.a && cd == other.cd && no == other.no && rtUrl == other.rtUrl && ftype == other.ftype && rtUrls == other.rtUrls && djId == other.djId && copyright == other.copyright && sId == other.sId && mark == other.mark && originCoverType == other.originCoverType && originSongSimpleData == other.originSongSimpleData && tagPicList == other.tagPicList && resourceState == other.resourceState && version == other.version && songJumpInfo == other.songJumpInfo && entertainmentTags == other.entertainmentTags && awardTags == other.awardTags && single == other.single && noCopyrightRcmd == other.noCopyrightRcmd && rtype == other.rtype && rurl == other.rurl && mv == other.mv && mst == other.mst && cp == other.cp && publishTime == other.publishTime;

  @override
  int get hashCode => name.hashCode ^ id.hashCode ^ pst.hashCode ^ t.hashCode ^ ar.hashCode ^ alia.hashCode ^ pop.hashCode ^ st.hashCode ^ rt.hashCode ^ fee.hashCode ^ v.hashCode ^ crbt.hashCode ^ cf.hashCode ^ al.hashCode ^ dt.hashCode ^ h.hashCode ^ m.hashCode ^ l.hashCode ^ sq.hashCode ^ hr.hashCode ^ a.hashCode ^ cd.hashCode ^ no.hashCode ^ rtUrl.hashCode ^ ftype.hashCode ^ rtUrls.hashCode ^ djId.hashCode ^ copyright.hashCode ^ sId.hashCode ^ mark.hashCode ^ originCoverType.hashCode ^ originSongSimpleData.hashCode ^ tagPicList.hashCode ^ resourceState.hashCode ^ version.hashCode ^ songJumpInfo.hashCode ^ entertainmentTags.hashCode ^ awardTags.hashCode ^ single.hashCode ^ noCopyrightRcmd.hashCode ^ rtype.hashCode ^ rurl.hashCode ^ mv.hashCode ^ mst.hashCode ^ cp.hashCode ^ publishTime.hashCode;
}

@immutable
class Ar {

  const Ar({
    required this.id,
    required this.name,
    required this.tns,
    required this.alias,
  });

  final int id;
  final String name;
  final List<dynamic> tns;
  final List<dynamic> alias;

  factory Ar.fromJson(Map<String,dynamic> json) => Ar(
    id: json['id'] as int,
    name: json['name'].toString(),
    tns: (json['tns'] as List? ?? []).map((e) => e as dynamic).toList(),
    alias: (json['alias'] as List? ?? []).map((e) => e as dynamic).toList()
  );
  
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'tns': tns.map((e) => e.toString()).toList(),
    'alias': alias.map((e) => e.toString()).toList()
  };

  Ar clone() => Ar(
    id: id,
    name: name,
    tns: tns.toList(),
    alias: alias.toList()
  );


  Ar copyWith({
    int? id,
    String? name,
    List<dynamic>? tns,
    List<dynamic>? alias
  }) => Ar(
    id: id ?? this.id,
    name: name ?? this.name,
    tns: tns ?? this.tns,
    alias: alias ?? this.alias,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Ar && id == other.id && name == other.name && tns == other.tns && alias == other.alias;

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ tns.hashCode ^ alias.hashCode;
}

@immutable
class Al {

  const Al({
    required this.id,
    required this.name,
    required this.picUrl,
    required this.tns,
    required this.picStr,
    required this.pic,
  });

  final int id;
  final String name;
  final String picUrl;
  final List<dynamic> tns;
  final String picStr;
  final int pic;

  factory Al.fromJson(Map<String,dynamic> json) => Al(
    id: json['id'] as int,
    name: json['name'].toString(),
    picUrl: json['picUrl'].toString(),
    tns: (json['tns'] as List? ?? []).map((e) => e as dynamic).toList(),
    picStr: json['pic_str'].toString(),
    pic: json['pic'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'picUrl': picUrl,
    'tns': tns.map((e) => e.toString()).toList(),
    'pic_str': picStr,
    'pic': pic
  };

  Al clone() => Al(
    id: id,
    name: name,
    picUrl: picUrl,
    tns: tns.toList(),
    picStr: picStr,
    pic: pic
  );


  Al copyWith({
    int? id,
    String? name,
    String? picUrl,
    List<dynamic>? tns,
    String? picStr,
    int? pic
  }) => Al(
    id: id ?? this.id,
    name: name ?? this.name,
    picUrl: picUrl ?? this.picUrl,
    tns: tns ?? this.tns,
    picStr: picStr ?? this.picStr,
    pic: pic ?? this.pic,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Al && id == other.id && name == other.name && picUrl == other.picUrl && tns == other.tns && picStr == other.picStr && pic == other.pic;

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ picUrl.hashCode ^ tns.hashCode ^ picStr.hashCode ^ pic.hashCode;
}

@immutable
class H {

  const H({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });

  final int br;
  final int fid;
  final int size;
  final double vd;
  final int sr;

  factory H.fromJson(Map<String,dynamic> json) => H(
    br: json['br'] as int,
    fid: json['fid'] as int,
    size: json['size'] as int,
    vd: (json['vd'] as num).toDouble(),
    sr: json['sr'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'br': br,
    'fid': fid,
    'size': size,
    'vd': vd,
    'sr': sr
  };

  H clone() => H(
    br: br,
    fid: fid,
    size: size,
    vd: vd,
    sr: sr
  );


  H copyWith({
    int? br,
    int? fid,
    int? size,
    double? vd,
    int? sr
  }) => H(
    br: br ?? this.br,
    fid: fid ?? this.fid,
    size: size ?? this.size,
    vd: vd ?? this.vd,
    sr: sr ?? this.sr,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is H && br == other.br && fid == other.fid && size == other.size && vd == other.vd && sr == other.sr;

  @override
  int get hashCode => br.hashCode ^ fid.hashCode ^ size.hashCode ^ vd.hashCode ^ sr.hashCode;
}

@immutable
class M {

  const M({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });

  final int br;
  final int fid;
  final int size;
  final double vd;
  final int sr;

  factory M.fromJson(Map<String,dynamic> json) => M(
    br: json['br'] as int,
    fid: json['fid'] as int,
    size: json['size'] as int,
    vd: (json['vd'] as num).toDouble(),
    sr: json['sr'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'br': br,
    'fid': fid,
    'size': size,
    'vd': vd,
    'sr': sr
  };

  M clone() => M(
    br: br,
    fid: fid,
    size: size,
    vd: vd,
    sr: sr
  );


  M copyWith({
    int? br,
    int? fid,
    int? size,
    double? vd,
    int? sr
  }) => M(
    br: br ?? this.br,
    fid: fid ?? this.fid,
    size: size ?? this.size,
    vd: vd ?? this.vd,
    sr: sr ?? this.sr,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is M && br == other.br && fid == other.fid && size == other.size && vd == other.vd && sr == other.sr;

  @override
  int get hashCode => br.hashCode ^ fid.hashCode ^ size.hashCode ^ vd.hashCode ^ sr.hashCode;
}

@immutable
class L {

  const L({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });

  final int br;
  final int fid;
  final int size;
  final double vd;
  final int sr;

  factory L.fromJson(Map<String,dynamic> json) => L(
    br: json['br'] as int,
    fid: json['fid'] as int,
    size: json['size'] as int,
    vd: (json['vd'] as num).toDouble(),
    sr: json['sr'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'br': br,
    'fid': fid,
    'size': size,
    'vd': vd,
    'sr': sr
  };

  L clone() => L(
    br: br,
    fid: fid,
    size: size,
    vd: vd,
    sr: sr
  );


  L copyWith({
    int? br,
    int? fid,
    int? size,
    double? vd,
    int? sr
  }) => L(
    br: br ?? this.br,
    fid: fid ?? this.fid,
    size: size ?? this.size,
    vd: vd ?? this.vd,
    sr: sr ?? this.sr,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is L && br == other.br && fid == other.fid && size == other.size && vd == other.vd && sr == other.sr;

  @override
  int get hashCode => br.hashCode ^ fid.hashCode ^ size.hashCode ^ vd.hashCode ^ sr.hashCode;
}

@immutable
class Sq {

  const Sq({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });

  final int br;
  final int fid;
  final int size;
  final double vd;
  final int sr;

  factory Sq.fromJson(Map<String,dynamic> json) => Sq(
    br: json['br'] as int,
    fid: json['fid'] as int,
    size: json['size'] as int,
    vd: (json['vd'] as num).toDouble(),
    sr: json['sr'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'br': br,
    'fid': fid,
    'size': size,
    'vd': vd,
    'sr': sr
  };

  Sq clone() => Sq(
    br: br,
    fid: fid,
    size: size,
    vd: vd,
    sr: sr
  );


  Sq copyWith({
    int? br,
    int? fid,
    int? size,
    double? vd,
    int? sr
  }) => Sq(
    br: br ?? this.br,
    fid: fid ?? this.fid,
    size: size ?? this.size,
    vd: vd ?? this.vd,
    sr: sr ?? this.sr,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Sq && br == other.br && fid == other.fid && size == other.size && vd == other.vd && sr == other.sr;

  @override
  int get hashCode => br.hashCode ^ fid.hashCode ^ size.hashCode ^ vd.hashCode ^ sr.hashCode;
}

@immutable
class Hr {

  const Hr({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });

  final int br;
  final int fid;
  final int size;
  final double vd;
  final int sr;

  factory Hr.fromJson(Map<String,dynamic> json) => Hr(
    br: json['br'] as int,
    fid: json['fid'] as int,
    size: json['size'] as int,
    vd: (json['vd'] as num).toDouble(),
    sr: json['sr'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'br': br,
    'fid': fid,
    'size': size,
    'vd': vd,
    'sr': sr
  };

  Hr clone() => Hr(
    br: br,
    fid: fid,
    size: size,
    vd: vd,
    sr: sr
  );


  Hr copyWith({
    int? br,
    int? fid,
    int? size,
    double? vd,
    int? sr
  }) => Hr(
    br: br ?? this.br,
    fid: fid ?? this.fid,
    size: size ?? this.size,
    vd: vd ?? this.vd,
    sr: sr ?? this.sr,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Hr && br == other.br && fid == other.fid && size == other.size && vd == other.vd && sr == other.sr;

  @override
  int get hashCode => br.hashCode ^ fid.hashCode ^ size.hashCode ^ vd.hashCode ^ sr.hashCode;
}

@immutable
class Privilege {

  const Privilege({
    required this.id,
    required this.fee,
    required this.payed,
    required this.st,
    required this.pl,
    required this.dl,
    required this.sp,
    required this.cp,
    required this.subp,
    required this.cs,
    required this.maxbr,
    required this.fl,
    required this.toast,
    required this.flag,
    required this.preSell,
    required this.playMaxbr,
    required this.downloadMaxbr,
    required this.maxBrLevel,
    required this.playMaxBrLevel,
    required this.downloadMaxBrLevel,
    required this.plLevel,
    required this.dlLevel,
    required this.flLevel,
    required this.rscl,
    required this.freeTrialPrivilege,
    required this.chargeInfoList,
  });

  final int id;
  final int fee;
  final int payed;
  final int st;
  final int pl;
  final int dl;
  final int sp;
  final int cp;
  final int subp;
  final bool cs;
  final int maxbr;
  final int fl;
  final bool toast;
  final int flag;
  final bool preSell;
  final int playMaxbr;
  final int downloadMaxbr;
  final String maxBrLevel;
  final String playMaxBrLevel;
  final String downloadMaxBrLevel;
  final String plLevel;
  final String dlLevel;
  final String flLevel;
  final dynamic rscl;
  final FreeTrialPrivilege freeTrialPrivilege;
  final List<ChargeInfoList> chargeInfoList;

  factory Privilege.fromJson(Map<String,dynamic> json) => Privilege(
    id: json['id'] as int,
    fee: json['fee'] as int,
    payed: json['payed'] as int,
    st: json['st'] as int,
    pl: json['pl'] as int,
    dl: json['dl'] as int,
    sp: json['sp'] as int,
    cp: json['cp'] as int,
    subp: json['subp'] as int,
    cs: json['cs'] as bool,
    maxbr: json['maxbr'] as int,
    fl: json['fl'] as int,
    toast: json['toast'] as bool,
    flag: json['flag'] as int,
    preSell: json['preSell'] as bool,
    playMaxbr: json['playMaxbr'] as int,
    downloadMaxbr: json['downloadMaxbr'] as int,
    maxBrLevel: json['maxBrLevel'].toString(),
    playMaxBrLevel: json['playMaxBrLevel'].toString(),
    downloadMaxBrLevel: json['downloadMaxBrLevel'].toString(),
    plLevel: json['plLevel'].toString(),
    dlLevel: json['dlLevel'].toString(),
    flLevel: json['flLevel'].toString(),
    rscl: json['rscl'] as dynamic,
    freeTrialPrivilege: FreeTrialPrivilege.fromJson(json['freeTrialPrivilege'] as Map<String, dynamic>),
    chargeInfoList: (json['chargeInfoList'] as List? ?? []).map((e) => ChargeInfoList.fromJson(e as Map<String, dynamic>)).toList()
  );
  
  Map<String, dynamic> toJson() => {
    'id': id,
    'fee': fee,
    'payed': payed,
    'st': st,
    'pl': pl,
    'dl': dl,
    'sp': sp,
    'cp': cp,
    'subp': subp,
    'cs': cs,
    'maxbr': maxbr,
    'fl': fl,
    'toast': toast,
    'flag': flag,
    'preSell': preSell,
    'playMaxbr': playMaxbr,
    'downloadMaxbr': downloadMaxbr,
    'maxBrLevel': maxBrLevel,
    'playMaxBrLevel': playMaxBrLevel,
    'downloadMaxBrLevel': downloadMaxBrLevel,
    'plLevel': plLevel,
    'dlLevel': dlLevel,
    'flLevel': flLevel,
    'rscl': rscl,
    'freeTrialPrivilege': freeTrialPrivilege.toJson(),
    'chargeInfoList': chargeInfoList.map((e) => e.toJson()).toList()
  };

  Privilege clone() => Privilege(
    id: id,
    fee: fee,
    payed: payed,
    st: st,
    pl: pl,
    dl: dl,
    sp: sp,
    cp: cp,
    subp: subp,
    cs: cs,
    maxbr: maxbr,
    fl: fl,
    toast: toast,
    flag: flag,
    preSell: preSell,
    playMaxbr: playMaxbr,
    downloadMaxbr: downloadMaxbr,
    maxBrLevel: maxBrLevel,
    playMaxBrLevel: playMaxBrLevel,
    downloadMaxBrLevel: downloadMaxBrLevel,
    plLevel: plLevel,
    dlLevel: dlLevel,
    flLevel: flLevel,
    rscl: rscl,
    freeTrialPrivilege: freeTrialPrivilege.clone(),
    chargeInfoList: chargeInfoList.map((e) => e.clone()).toList()
  );


  Privilege copyWith({
    int? id,
    int? fee,
    int? payed,
    int? st,
    int? pl,
    int? dl,
    int? sp,
    int? cp,
    int? subp,
    bool? cs,
    int? maxbr,
    int? fl,
    bool? toast,
    int? flag,
    bool? preSell,
    int? playMaxbr,
    int? downloadMaxbr,
    String? maxBrLevel,
    String? playMaxBrLevel,
    String? downloadMaxBrLevel,
    String? plLevel,
    String? dlLevel,
    String? flLevel,
    dynamic? rscl,
    FreeTrialPrivilege? freeTrialPrivilege,
    List<ChargeInfoList>? chargeInfoList
  }) => Privilege(
    id: id ?? this.id,
    fee: fee ?? this.fee,
    payed: payed ?? this.payed,
    st: st ?? this.st,
    pl: pl ?? this.pl,
    dl: dl ?? this.dl,
    sp: sp ?? this.sp,
    cp: cp ?? this.cp,
    subp: subp ?? this.subp,
    cs: cs ?? this.cs,
    maxbr: maxbr ?? this.maxbr,
    fl: fl ?? this.fl,
    toast: toast ?? this.toast,
    flag: flag ?? this.flag,
    preSell: preSell ?? this.preSell,
    playMaxbr: playMaxbr ?? this.playMaxbr,
    downloadMaxbr: downloadMaxbr ?? this.downloadMaxbr,
    maxBrLevel: maxBrLevel ?? this.maxBrLevel,
    playMaxBrLevel: playMaxBrLevel ?? this.playMaxBrLevel,
    downloadMaxBrLevel: downloadMaxBrLevel ?? this.downloadMaxBrLevel,
    plLevel: plLevel ?? this.plLevel,
    dlLevel: dlLevel ?? this.dlLevel,
    flLevel: flLevel ?? this.flLevel,
    rscl: rscl ?? this.rscl,
    freeTrialPrivilege: freeTrialPrivilege ?? this.freeTrialPrivilege,
    chargeInfoList: chargeInfoList ?? this.chargeInfoList,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Privilege && id == other.id && fee == other.fee && payed == other.payed && st == other.st && pl == other.pl && dl == other.dl && sp == other.sp && cp == other.cp && subp == other.subp && cs == other.cs && maxbr == other.maxbr && fl == other.fl && toast == other.toast && flag == other.flag && preSell == other.preSell && playMaxbr == other.playMaxbr && downloadMaxbr == other.downloadMaxbr && maxBrLevel == other.maxBrLevel && playMaxBrLevel == other.playMaxBrLevel && downloadMaxBrLevel == other.downloadMaxBrLevel && plLevel == other.plLevel && dlLevel == other.dlLevel && flLevel == other.flLevel && rscl == other.rscl && freeTrialPrivilege == other.freeTrialPrivilege && chargeInfoList == other.chargeInfoList;

  @override
  int get hashCode => id.hashCode ^ fee.hashCode ^ payed.hashCode ^ st.hashCode ^ pl.hashCode ^ dl.hashCode ^ sp.hashCode ^ cp.hashCode ^ subp.hashCode ^ cs.hashCode ^ maxbr.hashCode ^ fl.hashCode ^ toast.hashCode ^ flag.hashCode ^ preSell.hashCode ^ playMaxbr.hashCode ^ downloadMaxbr.hashCode ^ maxBrLevel.hashCode ^ playMaxBrLevel.hashCode ^ downloadMaxBrLevel.hashCode ^ plLevel.hashCode ^ dlLevel.hashCode ^ flLevel.hashCode ^ rscl.hashCode ^ freeTrialPrivilege.hashCode ^ chargeInfoList.hashCode;
}

@immutable
class FreeTrialPrivilege {

  const FreeTrialPrivilege({
    required this.resConsumable,
    required this.userConsumable,
    required this.listenType,
  });

  final bool resConsumable;
  final bool userConsumable;
  final dynamic listenType;

  factory FreeTrialPrivilege.fromJson(Map<String,dynamic> json) => FreeTrialPrivilege(
    resConsumable: json['resConsumable'] as bool,
    userConsumable: json['userConsumable'] as bool,
    listenType: json['listenType'] as dynamic
  );
  
  Map<String, dynamic> toJson() => {
    'resConsumable': resConsumable,
    'userConsumable': userConsumable,
    'listenType': listenType
  };

  FreeTrialPrivilege clone() => FreeTrialPrivilege(
    resConsumable: resConsumable,
    userConsumable: userConsumable,
    listenType: listenType
  );


  FreeTrialPrivilege copyWith({
    bool? resConsumable,
    bool? userConsumable,
    dynamic? listenType
  }) => FreeTrialPrivilege(
    resConsumable: resConsumable ?? this.resConsumable,
    userConsumable: userConsumable ?? this.userConsumable,
    listenType: listenType ?? this.listenType,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is FreeTrialPrivilege && resConsumable == other.resConsumable && userConsumable == other.userConsumable && listenType == other.listenType;

  @override
  int get hashCode => resConsumable.hashCode ^ userConsumable.hashCode ^ listenType.hashCode;
}

@immutable
class ChargeInfoList {

  const ChargeInfoList({
    required this.rate,
    required this.chargeUrl,
    required this.chargeMessage,
    required this.chargeType,
  });

  final int rate;
  final dynamic chargeUrl;
  final dynamic chargeMessage;
  final int chargeType;

  factory ChargeInfoList.fromJson(Map<String,dynamic> json) => ChargeInfoList(
    rate: json['rate'] as int,
    chargeUrl: json['chargeUrl'] as dynamic,
    chargeMessage: json['chargeMessage'] as dynamic,
    chargeType: json['chargeType'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'rate': rate,
    'chargeUrl': chargeUrl,
    'chargeMessage': chargeMessage,
    'chargeType': chargeType
  };

  ChargeInfoList clone() => ChargeInfoList(
    rate: rate,
    chargeUrl: chargeUrl,
    chargeMessage: chargeMessage,
    chargeType: chargeType
  );


  ChargeInfoList copyWith({
    int? rate,
    dynamic? chargeUrl,
    dynamic? chargeMessage,
    int? chargeType
  }) => ChargeInfoList(
    rate: rate ?? this.rate,
    chargeUrl: chargeUrl ?? this.chargeUrl,
    chargeMessage: chargeMessage ?? this.chargeMessage,
    chargeType: chargeType ?? this.chargeType,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is ChargeInfoList && rate == other.rate && chargeUrl == other.chargeUrl && chargeMessage == other.chargeMessage && chargeType == other.chargeType;

  @override
  int get hashCode => rate.hashCode ^ chargeUrl.hashCode ^ chargeMessage.hashCode ^ chargeType.hashCode;
}
