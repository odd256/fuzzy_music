import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';




import 'index.dart';

@immutable
class TopAlbum {

  const TopAlbum({
    required this.weekData,
    required this.hasMore,
    required this.monthData,
    required this.code,
  });

  final List<WeekDatum> weekData;
  final bool hasMore;
  final List<MonthDatum> monthData;
  final int code;

  factory TopAlbum.fromJson(Map<String,dynamic> json) => TopAlbum(
    weekData: (json['weekData'] as List? ?? []).map((e) => WeekDatum.fromJson(e as Map<String, dynamic>)).toList(),
    hasMore: json['hasMore'] as bool,
    monthData: (json['monthData'] as List? ?? []).map((e) => MonthDatum.fromJson(e as Map<String, dynamic>)).toList(),
    code: json['code'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'weekData': weekData.map((e) => e.toJson()).toList(),
    'hasMore': hasMore,
    'monthData': monthData.map((e) => e.toJson()).toList(),
    'code': code
  };

  TopAlbum clone() => TopAlbum(
    weekData: weekData.map((e) => e.clone()).toList(),
    hasMore: hasMore,
    monthData: monthData.map((e) => e.clone()).toList(),
    code: code
  );


  TopAlbum copyWith({
    List<WeekDatum>? weekData,
    bool? hasMore,
    List<MonthDatum>? monthData,
    int? code
  }) => TopAlbum(
    weekData: weekData ?? this.weekData,
    hasMore: hasMore ?? this.hasMore,
    monthData: monthData ?? this.monthData,
    code: code ?? this.code,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is TopAlbum && weekData == other.weekData && hasMore == other.hasMore && monthData == other.monthData && code == other.code;

  @override
  int get hashCode => weekData.hashCode ^ hasMore.hashCode ^ monthData.hashCode ^ code.hashCode;
}

@immutable
class WeekDatum {

  const WeekDatum({
    required this.songs,
    required this.paid,
    required this.onSale,
    required this.briefDesc,
    required this.picId,
    required this.artist,
    required this.status,
    required this.copyrightId,
    required this.alias,
    required this.artists,
    required this.subType,
    required this.description,
    required this.tags,
    required this.commentThreadId,
    required this.blurPicUrl,
    required this.companyId,
    required this.pic,
    required this.company,
    required this.publishTime,
    required this.picUrl,
    required this.name,
    required this.id,
    required this.type,
    required this.size,
    required this.picIdStr,
    required this.areaId,
    required this.transNames,
    required this.exclusive,
    required this.isSub,
  });

  final List<dynamic> songs;
  final bool paid;
  final bool onSale;
  final String briefDesc;
  final int picId;
  final Artist artist;
  final int status;
  final int copyrightId;
  final List<dynamic> alias;
  final List<Artist> artists;
  final String subType;
  final String description;
  final String tags;
  final String commentThreadId;
  final String blurPicUrl;
  final int companyId;
  final int pic;
  final String company;
  final int publishTime;
  final String picUrl;
  final String name;
  final int id;
  final String type;
  final int size;
  final String picIdStr;
  final int areaId;
  final List<String> transNames;
  final bool exclusive;
  final bool isSub;

  factory WeekDatum.fromJson(Map<String,dynamic> json) => WeekDatum(
    songs: (json['songs'] as List? ?? []).map((e) => e as dynamic).toList(),
    paid: json['paid'] as bool,
    onSale: json['onSale'] as bool,
    briefDesc: json['briefDesc'].toString(),
    picId: json['picId'] as int,
    artist: Artist.fromJson(json['artist'] as Map<String, dynamic>),
    status: json['status'] as int,
    copyrightId: json['copyrightId'] as int,
    alias: (json['alias'] as List? ?? []).map((e) => e as dynamic).toList(),
    artists: (json['artists'] as List? ?? []).map((e) => Artist.fromJson(e as Map<String, dynamic>)).toList(),
    subType: json['subType'].toString(),
    description: json['description'].toString(),
    tags: json['tags'].toString(),
    commentThreadId: json['commentThreadId'].toString(),
    blurPicUrl: json['blurPicUrl'].toString(),
    companyId: json['companyId'] as int,
    pic: json['pic'] as int,
    company: json['company'].toString(),
    publishTime: json['publishTime'] as int,
    picUrl: json['picUrl'].toString(),
    name: json['name'].toString(),
    id: json['id'] as int,
    type: json['type'].toString(),
    size: json['size'] as int,
    picIdStr: json['picId_str'].toString(),
    areaId: json['areaId'] as int,
    transNames: (json['transNames'] as List? ?? []).map((e) => e as String).toList(),
    exclusive: json['exclusive'] as bool,
    isSub: json['isSub'] as bool
  );
  
  Map<String, dynamic> toJson() => {
    'songs': songs.map((e) => e.toString()).toList(),
    'paid': paid,
    'onSale': onSale,
    'briefDesc': briefDesc,
    'picId': picId,
    'artist': artist.toJson(),
    'status': status,
    'copyrightId': copyrightId,
    'alias': alias.map((e) => e.toString()).toList(),
    'artists': artists.map((e) => e.toJson()).toList(),
    'subType': subType,
    'description': description,
    'tags': tags,
    'commentThreadId': commentThreadId,
    'blurPicUrl': blurPicUrl,
    'companyId': companyId,
    'pic': pic,
    'company': company,
    'publishTime': publishTime,
    'picUrl': picUrl,
    'name': name,
    'id': id,
    'type': type,
    'size': size,
    'picId_str': picIdStr,
    'areaId': areaId,
    'transNames': transNames.map((e) => e.toString()).toList(),
    'exclusive': exclusive,
    'isSub': isSub
  };

  WeekDatum clone() => WeekDatum(
    songs: songs.toList(),
    paid: paid,
    onSale: onSale,
    briefDesc: briefDesc,
    picId: picId,
    artist: artist.clone(),
    status: status,
    copyrightId: copyrightId,
    alias: alias.toList(),
    artists: artists.map((e) => e.clone()).toList(),
    subType: subType,
    description: description,
    tags: tags,
    commentThreadId: commentThreadId,
    blurPicUrl: blurPicUrl,
    companyId: companyId,
    pic: pic,
    company: company,
    publishTime: publishTime,
    picUrl: picUrl,
    name: name,
    id: id,
    type: type,
    size: size,
    picIdStr: picIdStr,
    areaId: areaId,
    transNames: transNames.toList(),
    exclusive: exclusive,
    isSub: isSub
  );


  WeekDatum copyWith({
    List<dynamic>? songs,
    bool? paid,
    bool? onSale,
    String? briefDesc,
    int? picId,
    Artist? artist,
    int? status,
    int? copyrightId,
    List<dynamic>? alias,
    List<Artist>? artists,
    String? subType,
    String? description,
    String? tags,
    String? commentThreadId,
    String? blurPicUrl,
    int? companyId,
    int? pic,
    String? company,
    int? publishTime,
    String? picUrl,
    String? name,
    int? id,
    String? type,
    int? size,
    String? picIdStr,
    int? areaId,
    List<String>? transNames,
    bool? exclusive,
    bool? isSub
  }) => WeekDatum(
    songs: songs ?? this.songs,
    paid: paid ?? this.paid,
    onSale: onSale ?? this.onSale,
    briefDesc: briefDesc ?? this.briefDesc,
    picId: picId ?? this.picId,
    artist: artist ?? this.artist,
    status: status ?? this.status,
    copyrightId: copyrightId ?? this.copyrightId,
    alias: alias ?? this.alias,
    artists: artists ?? this.artists,
    subType: subType ?? this.subType,
    description: description ?? this.description,
    tags: tags ?? this.tags,
    commentThreadId: commentThreadId ?? this.commentThreadId,
    blurPicUrl: blurPicUrl ?? this.blurPicUrl,
    companyId: companyId ?? this.companyId,
    pic: pic ?? this.pic,
    company: company ?? this.company,
    publishTime: publishTime ?? this.publishTime,
    picUrl: picUrl ?? this.picUrl,
    name: name ?? this.name,
    id: id ?? this.id,
    type: type ?? this.type,
    size: size ?? this.size,
    picIdStr: picIdStr ?? this.picIdStr,
    areaId: areaId ?? this.areaId,
    transNames: transNames ?? this.transNames,
    exclusive: exclusive ?? this.exclusive,
    isSub: isSub ?? this.isSub,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is WeekDatum && songs == other.songs && paid == other.paid && onSale == other.onSale && briefDesc == other.briefDesc && picId == other.picId && artist == other.artist && status == other.status && copyrightId == other.copyrightId && alias == other.alias && artists == other.artists && subType == other.subType && description == other.description && tags == other.tags && commentThreadId == other.commentThreadId && blurPicUrl == other.blurPicUrl && companyId == other.companyId && pic == other.pic && company == other.company && publishTime == other.publishTime && picUrl == other.picUrl && name == other.name && id == other.id && type == other.type && size == other.size && picIdStr == other.picIdStr && areaId == other.areaId && transNames == other.transNames && exclusive == other.exclusive && isSub == other.isSub;

  @override
  int get hashCode => songs.hashCode ^ paid.hashCode ^ onSale.hashCode ^ briefDesc.hashCode ^ picId.hashCode ^ artist.hashCode ^ status.hashCode ^ copyrightId.hashCode ^ alias.hashCode ^ artists.hashCode ^ subType.hashCode ^ description.hashCode ^ tags.hashCode ^ commentThreadId.hashCode ^ blurPicUrl.hashCode ^ companyId.hashCode ^ pic.hashCode ^ company.hashCode ^ publishTime.hashCode ^ picUrl.hashCode ^ name.hashCode ^ id.hashCode ^ type.hashCode ^ size.hashCode ^ picIdStr.hashCode ^ areaId.hashCode ^ transNames.hashCode ^ exclusive.hashCode ^ isSub.hashCode;
}

@immutable
class Artist {

  const Artist({
    required this.img1v1Id,
    required this.topicPerson,
    required this.followed,
    required this.briefDesc,
    required this.picId,
    required this.aliaz,
    required this.trans,
    required this.albumSize,
    required this.img1v1Url,
    required this.picUrl,
    required this.musicSize,
    required this.name,
    required this.id,
    required this.picIdStr,
    required this.img1v1IdStr,
  });

  final int img1v1Id;
  final int topicPerson;
  final bool followed;
  final String briefDesc;
  final int picId;
  final List<String> aliaz;
  final String trans;
  final int albumSize;
  final String img1v1Url;
  final String picUrl;
  final int musicSize;
  final String name;
  final int id;
  final String picIdStr;
  final String img1v1IdStr;

  factory Artist.fromJson(Map<String,dynamic> json) => Artist(
    img1v1Id: json['img1v1Id'] as int,
    topicPerson: json['topicPerson'] as int,
    followed: json['followed'] as bool,
    briefDesc: json['briefDesc'].toString(),
    picId: json['picId'] as int,
    aliaz: (json['alias'] as List? ?? []).map((e) => e as String).toList(),
    trans: json['trans'].toString(),
    albumSize: json['albumSize'] as int,
    img1v1Url: json['img1v1Url'].toString(),
    picUrl: json['picUrl'].toString(),
    musicSize: json['musicSize'] as int,
    name: json['name'].toString(),
    id: json['id'] as int,
    picIdStr: json['picId_str'].toString(),
    img1v1IdStr: json['img1v1Id_str'].toString()
  );
  
  Map<String, dynamic> toJson() => {
    'img1v1Id': img1v1Id,
    'topicPerson': topicPerson,
    'followed': followed,
    'briefDesc': briefDesc,
    'picId': picId,
    'alias': aliaz.map((e) => e.toString()).toList(),
    'trans': trans,
    'albumSize': albumSize,
    'img1v1Url': img1v1Url,
    'picUrl': picUrl,
    'musicSize': musicSize,
    'name': name,
    'id': id,
    'picId_str': picIdStr,
    'img1v1Id_str': img1v1IdStr
  };

  Artist clone() => Artist(
    img1v1Id: img1v1Id,
    topicPerson: topicPerson,
    followed: followed,
    briefDesc: briefDesc,
    picId: picId,
    aliaz: aliaz.toList(),
    trans: trans,
    albumSize: albumSize,
    img1v1Url: img1v1Url,
    picUrl: picUrl,
    musicSize: musicSize,
    name: name,
    id: id,
    picIdStr: picIdStr,
    img1v1IdStr: img1v1IdStr
  );


  Artist copyWith({
    int? img1v1Id,
    int? topicPerson,
    bool? followed,
    String? briefDesc,
    int? picId,
    List<String>? aliaz,
    String? trans,
    int? albumSize,
    String? img1v1Url,
    String? picUrl,
    int? musicSize,
    String? name,
    int? id,
    String? picIdStr,
    String? img1v1IdStr
  }) => Artist(
    img1v1Id: img1v1Id ?? this.img1v1Id,
    topicPerson: topicPerson ?? this.topicPerson,
    followed: followed ?? this.followed,
    briefDesc: briefDesc ?? this.briefDesc,
    picId: picId ?? this.picId,
    aliaz: aliaz ?? this.aliaz,
    trans: trans ?? this.trans,
    albumSize: albumSize ?? this.albumSize,
    img1v1Url: img1v1Url ?? this.img1v1Url,
    picUrl: picUrl ?? this.picUrl,
    musicSize: musicSize ?? this.musicSize,
    name: name ?? this.name,
    id: id ?? this.id,
    picIdStr: picIdStr ?? this.picIdStr,
    img1v1IdStr: img1v1IdStr ?? this.img1v1IdStr,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Artist && img1v1Id == other.img1v1Id && topicPerson == other.topicPerson && followed == other.followed && briefDesc == other.briefDesc && picId == other.picId && aliaz == other.aliaz && trans == other.trans && albumSize == other.albumSize && img1v1Url == other.img1v1Url && picUrl == other.picUrl && musicSize == other.musicSize && name == other.name && id == other.id && picIdStr == other.picIdStr && img1v1IdStr == other.img1v1IdStr;

  @override
  int get hashCode => img1v1Id.hashCode ^ topicPerson.hashCode ^ followed.hashCode ^ briefDesc.hashCode ^ picId.hashCode ^ aliaz.hashCode ^ trans.hashCode ^ albumSize.hashCode ^ img1v1Url.hashCode ^ picUrl.hashCode ^ musicSize.hashCode ^ name.hashCode ^ id.hashCode ^ picIdStr.hashCode ^ img1v1IdStr.hashCode;
}

@immutable
class MonthDatum {

  const MonthDatum({
    required this.songs,
    required this.paid,
    required this.onSale,
    required this.briefDesc,
    required this.picId,
    required this.artist,
    required this.status,
    required this.copyrightId,
    required this.alias,
    required this.artists,
    required this.subType,
    required this.description,
    required this.tags,
    required this.commentThreadId,
    required this.blurPicUrl,
    required this.companyId,
    required this.pic,
    required this.company,
    required this.publishTime,
    required this.picUrl,
    required this.name,
    required this.id,
    required this.type,
    required this.size,
    required this.picIdStr,
    required this.areaId,
    required this.exclusive,
    required this.isSub,
  });

  final List<dynamic> songs;
  final bool paid;
  final bool onSale;
  final String briefDesc;
  final int picId;
  final Artist artist;
  final int status;
  final int copyrightId;
  final List<String> alias;
  final List<Artist> artists;
  final String subType;
  final String description;
  final String tags;
  final String commentThreadId;
  final String blurPicUrl;
  final int companyId;
  final int pic;
  final String company;
  final int publishTime;
  final String picUrl;
  final String name;
  final int id;
  final String type;
  final int size;
  final String picIdStr;
  final int areaId;
  final bool exclusive;
  final bool isSub;

  factory MonthDatum.fromJson(Map<String,dynamic> json) => MonthDatum(
    songs: (json['songs'] as List? ?? []).map((e) => e as dynamic).toList(),
    paid: json['paid'] as bool,
    onSale: json['onSale'] as bool,
    briefDesc: json['briefDesc'].toString(),
    picId: json['picId'] as int,
    artist: Artist.fromJson(json['artist'] as Map<String, dynamic>),
    status: json['status'] as int,
    copyrightId: json['copyrightId'] as int,
    alias: (json['alias'] as List? ?? []).map((e) => e as String).toList(),
    artists: (json['artists'] as List? ?? []).map((e) => Artist.fromJson(e as Map<String, dynamic>)).toList(),
    subType: json['subType'].toString(),
    description: json['description'].toString(),
    tags: json['tags'].toString(),
    commentThreadId: json['commentThreadId'].toString(),
    blurPicUrl: json['blurPicUrl'].toString(),
    companyId: json['companyId'] as int,
    pic: json['pic'] as int,
    company: json['company'].toString(),
    publishTime: json['publishTime'] as int,
    picUrl: json['picUrl'].toString(),
    name: json['name'].toString(),
    id: json['id'] as int,
    type: json['type'].toString(),
    size: json['size'] as int,
    picIdStr: json['picId_str'].toString(),
    areaId: json['areaId'] as int,
    exclusive: json['exclusive'] as bool,
    isSub: json['isSub'] as bool
  );
  
  Map<String, dynamic> toJson() => {
    'songs': songs.map((e) => e.toString()).toList(),
    'paid': paid,
    'onSale': onSale,
    'briefDesc': briefDesc,
    'picId': picId,
    'artist': artist.toJson(),
    'status': status,
    'copyrightId': copyrightId,
    'alias': alias.map((e) => e.toString()).toList(),
    'artists': artists.map((e) => e.toJson()).toList(),
    'subType': subType,
    'description': description,
    'tags': tags,
    'commentThreadId': commentThreadId,
    'blurPicUrl': blurPicUrl,
    'companyId': companyId,
    'pic': pic,
    'company': company,
    'publishTime': publishTime,
    'picUrl': picUrl,
    'name': name,
    'id': id,
    'type': type,
    'size': size,
    'picId_str': picIdStr,
    'areaId': areaId,
    'exclusive': exclusive,
    'isSub': isSub
  };

  MonthDatum clone() => MonthDatum(
    songs: songs.toList(),
    paid: paid,
    onSale: onSale,
    briefDesc: briefDesc,
    picId: picId,
    artist: artist.clone(),
    status: status,
    copyrightId: copyrightId,
    alias: alias.toList(),
    artists: artists.map((e) => e.clone()).toList(),
    subType: subType,
    description: description,
    tags: tags,
    commentThreadId: commentThreadId,
    blurPicUrl: blurPicUrl,
    companyId: companyId,
    pic: pic,
    company: company,
    publishTime: publishTime,
    picUrl: picUrl,
    name: name,
    id: id,
    type: type,
    size: size,
    picIdStr: picIdStr,
    areaId: areaId,
    exclusive: exclusive,
    isSub: isSub
  );


  MonthDatum copyWith({
    List<dynamic>? songs,
    bool? paid,
    bool? onSale,
    String? briefDesc,
    int? picId,
    Artist? artist,
    int? status,
    int? copyrightId,
    List<String>? alias,
    List<Artist>? artists,
    String? subType,
    String? description,
    String? tags,
    String? commentThreadId,
    String? blurPicUrl,
    int? companyId,
    int? pic,
    String? company,
    int? publishTime,
    String? picUrl,
    String? name,
    int? id,
    String? type,
    int? size,
    String? picIdStr,
    int? areaId,
    bool? exclusive,
    bool? isSub
  }) => MonthDatum(
    songs: songs ?? this.songs,
    paid: paid ?? this.paid,
    onSale: onSale ?? this.onSale,
    briefDesc: briefDesc ?? this.briefDesc,
    picId: picId ?? this.picId,
    artist: artist ?? this.artist,
    status: status ?? this.status,
    copyrightId: copyrightId ?? this.copyrightId,
    alias: alias ?? this.alias,
    artists: artists ?? this.artists,
    subType: subType ?? this.subType,
    description: description ?? this.description,
    tags: tags ?? this.tags,
    commentThreadId: commentThreadId ?? this.commentThreadId,
    blurPicUrl: blurPicUrl ?? this.blurPicUrl,
    companyId: companyId ?? this.companyId,
    pic: pic ?? this.pic,
    company: company ?? this.company,
    publishTime: publishTime ?? this.publishTime,
    picUrl: picUrl ?? this.picUrl,
    name: name ?? this.name,
    id: id ?? this.id,
    type: type ?? this.type,
    size: size ?? this.size,
    picIdStr: picIdStr ?? this.picIdStr,
    areaId: areaId ?? this.areaId,
    exclusive: exclusive ?? this.exclusive,
    isSub: isSub ?? this.isSub,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is MonthDatum && songs == other.songs && paid == other.paid && onSale == other.onSale && briefDesc == other.briefDesc && picId == other.picId && artist == other.artist && status == other.status && copyrightId == other.copyrightId && alias == other.alias && artists == other.artists && subType == other.subType && description == other.description && tags == other.tags && commentThreadId == other.commentThreadId && blurPicUrl == other.blurPicUrl && companyId == other.companyId && pic == other.pic && company == other.company && publishTime == other.publishTime && picUrl == other.picUrl && name == other.name && id == other.id && type == other.type && size == other.size && picIdStr == other.picIdStr && areaId == other.areaId && exclusive == other.exclusive && isSub == other.isSub;

  @override
  int get hashCode => songs.hashCode ^ paid.hashCode ^ onSale.hashCode ^ briefDesc.hashCode ^ picId.hashCode ^ artist.hashCode ^ status.hashCode ^ copyrightId.hashCode ^ alias.hashCode ^ artists.hashCode ^ subType.hashCode ^ description.hashCode ^ tags.hashCode ^ commentThreadId.hashCode ^ blurPicUrl.hashCode ^ companyId.hashCode ^ pic.hashCode ^ company.hashCode ^ publishTime.hashCode ^ picUrl.hashCode ^ name.hashCode ^ id.hashCode ^ type.hashCode ^ size.hashCode ^ picIdStr.hashCode ^ areaId.hashCode ^ exclusive.hashCode ^ isSub.hashCode;
}