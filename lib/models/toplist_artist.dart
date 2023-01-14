import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';

import 'index.dart';

@immutable
class ToplistArtist {

  const ToplistArtist({
    required this.list,
    required this.code,
  });

  final ArtistList list;
  final int code;

  factory ToplistArtist.fromJson(Map<String,dynamic> json) => ToplistArtist(
    list: ArtistList.fromJson(json['list'] as Map<String, dynamic>),
    code: json['code'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'list': list.toJson(),
    'code': code
  };

  ToplistArtist clone() => ToplistArtist(
    list: list.clone(),
    code: code
  );


  ToplistArtist copyWith({
    ArtistList? list,
    int? code
  }) => ToplistArtist(
    list: list ?? this.list,
    code: code ?? this.code,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is ToplistArtist && list == other.list && code == other.code;

  @override
  int get hashCode => list.hashCode ^ code.hashCode;
}

@immutable
class ArtistList {

  const ArtistList({
    required this.artists,
    required this.updateTime,
    required this.type,
  });

  final List<Artist> artists;
  final int updateTime;
  final int type;

  factory ArtistList.fromJson(Map<String,dynamic> json) => ArtistList(
    artists: (json['artists'] as List? ?? []).map((e) => Artist.fromJson(e as Map<String, dynamic>)).toList(),
    updateTime: json['updateTime'] as int,
    type: json['type'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'artists': artists.map((e) => e.toJson()).toList(),
    'updateTime': updateTime,
    'type': type
  };

  ArtistList clone() => ArtistList(
    artists: artists.map((e) => e.clone()).toList(),
    updateTime: updateTime,
    type: type
  );


  ArtistList copyWith({
    List<Artist>? artists,
    int? updateTime,
    int? type
  }) => ArtistList(
    artists: artists ?? this.artists,
    updateTime: updateTime ?? this.updateTime,
    type: type ?? this.type,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is ArtistList && artists == other.artists && updateTime == other.updateTime && type == other.type;

  @override
  int get hashCode => artists.hashCode ^ updateTime.hashCode ^ type.hashCode;
}

@immutable
class Artist {

  const Artist({
    required this.name,
    required this.id,
    required this.picId,
    required this.img1v1Id,
    required this.briefDesc,
    required this.picUrl,
    required this.img1v1Url,
    required this.albumSize,
    required this.alias,
    required this.trans,
    required this.musicSize,
    required this.topicPerson,
    required this.score,
    required this.picIdStr,
    required this.img1v1IdStr,
  });

  final String name;
  final int id;
  final int picId;
  final int img1v1Id;
  final String briefDesc;
  final String picUrl;
  final String img1v1Url;
  final int albumSize;
  final List<String> alias;
  final String trans;
  final int musicSize;
  final int topicPerson;
  final int score;
  final String picIdStr;
  final String img1v1IdStr;

  factory Artist.fromJson(Map<String,dynamic> json) => Artist(
    name: json['name'].toString(),
    id: json['id'] as int,
    picId: json['picId'] as int,
    img1v1Id: json['img1v1Id'] as int,
    briefDesc: json['briefDesc'].toString(),
    picUrl: json['picUrl'].toString(),
    img1v1Url: json['img1v1Url'].toString(),
    albumSize: json['albumSize'] as int,
    alias: (json['alias'] as List? ?? []).map((e) => e as String).toList(),
    trans: json['trans'].toString(),
    musicSize: json['musicSize'] as int,
    topicPerson: json['topicPerson'] as int,
    score: json['score'] as int,
    picIdStr: json['picId_str'].toString(),
    img1v1IdStr: json['img1v1Id_str'].toString()
  );
  
  Map<String, dynamic> toJson() => {
    'name': name,
    'id': id,
    'picId': picId,
    'img1v1Id': img1v1Id,
    'briefDesc': briefDesc,
    'picUrl': picUrl,
    'img1v1Url': img1v1Url,
    'albumSize': albumSize,
    'alias': alias.map((e) => e.toString()).toList(),
    'trans': trans,
    'musicSize': musicSize,
    'topicPerson': topicPerson,
    'score': score,
    'picId_str': picIdStr,
    'img1v1Id_str': img1v1IdStr
  };

  Artist clone() => Artist(
    name: name,
    id: id,
    picId: picId,
    img1v1Id: img1v1Id,
    briefDesc: briefDesc,
    picUrl: picUrl,
    img1v1Url: img1v1Url,
    albumSize: albumSize,
    alias: alias.toList(),
    trans: trans,
    musicSize: musicSize,
    topicPerson: topicPerson,
    score: score,
    picIdStr: picIdStr,
    img1v1IdStr: img1v1IdStr
  );


  Artist copyWith({
    String? name,
    int? id,
    int? picId,
    int? img1v1Id,
    String? briefDesc,
    String? picUrl,
    String? img1v1Url,
    int? albumSize,
    List<String>? alias,
    String? trans,
    int? musicSize,
    int? topicPerson,
    int? score,
    String? picIdStr,
    String? img1v1IdStr
  }) => Artist(
    name: name ?? this.name,
    id: id ?? this.id,
    picId: picId ?? this.picId,
    img1v1Id: img1v1Id ?? this.img1v1Id,
    briefDesc: briefDesc ?? this.briefDesc,
    picUrl: picUrl ?? this.picUrl,
    img1v1Url: img1v1Url ?? this.img1v1Url,
    albumSize: albumSize ?? this.albumSize,
    alias: alias ?? this.alias,
    trans: trans ?? this.trans,
    musicSize: musicSize ?? this.musicSize,
    topicPerson: topicPerson ?? this.topicPerson,
    score: score ?? this.score,
    picIdStr: picIdStr ?? this.picIdStr,
    img1v1IdStr: img1v1IdStr ?? this.img1v1IdStr,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Artist && name == other.name && id == other.id && picId == other.picId && img1v1Id == other.img1v1Id && briefDesc == other.briefDesc && picUrl == other.picUrl && img1v1Url == other.img1v1Url && albumSize == other.albumSize && alias == other.alias && trans == other.trans && musicSize == other.musicSize && topicPerson == other.topicPerson && score == other.score && picIdStr == other.picIdStr && img1v1IdStr == other.img1v1IdStr;

  @override
  int get hashCode => name.hashCode ^ id.hashCode ^ picId.hashCode ^ img1v1Id.hashCode ^ briefDesc.hashCode ^ picUrl.hashCode ^ img1v1Url.hashCode ^ albumSize.hashCode ^ alias.hashCode ^ trans.hashCode ^ musicSize.hashCode ^ topicPerson.hashCode ^ score.hashCode ^ picIdStr.hashCode ^ img1v1IdStr.hashCode;
}
