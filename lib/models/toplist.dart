import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';


import 'index.dart';

@immutable
class Toplist {

  const Toplist({
    required this.code,
    required this.list,
    required this.artistToplist,
  });

  final int code;
  final List<TopSonglist> list;
  final ArtistToplist artistToplist;

  factory Toplist.fromJson(Map<String,dynamic> json) => Toplist(
    code: json['code'] as int,
    list: (json['list'] as List? ?? []).map((e) => TopSonglist.fromJson(e as Map<String, dynamic>)).toList(),
    artistToplist: ArtistToplist.fromJson(json['artistToplist'] as Map<String, dynamic>)
  );
  
  Map<String, dynamic> toJson() => {
    'code': code,
    'list': list.map((e) => e.toJson()).toList(),
    'artistToplist': artistToplist.toJson()
  };

  Toplist clone() => Toplist(
    code: code,
    list: list.map((e) => e.clone()).toList(),
    artistToplist: artistToplist.clone()
  );


  Toplist copyWith({
    int? code,
    List<TopSonglist>? list,
    ArtistToplist? artistToplist
  }) => Toplist(
    code: code ?? this.code,
    list: list ?? this.list,
    artistToplist: artistToplist ?? this.artistToplist,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Toplist && code == other.code && list == other.list && artistToplist == other.artistToplist;

  @override
  int get hashCode => code.hashCode ^ list.hashCode ^ artistToplist.hashCode;
}

@immutable
class TopSonglist {

  const TopSonglist({
    required this.subscribers,
    required this.subscribed,
    required this.creator,
    required this.artists,
    required this.tracks,
    required this.updateFrequency,
    required this.backgroundCoverId,
    required this.backgroundCoverUrl,
    required this.titleImage,
    required this.titleImageUrl,
    required this.englishTitle,
    required this.opRecommend,
    required this.recommendInfo,
    required this.socialPlaylistCover,
    required this.subscribedCount,
    required this.cloudTrackCount,
    required this.adType,
    required this.trackNumberUpdateTime,
    required this.userId,
    required this.createTime,
    required this.highQuality,
    required this.specialType,
    required this.newImported,
    required this.updateTime,
    required this.coverImgId,
    required this.trackCount,
    required this.anonimous,
    required this.trackUpdateTime,
    required this.coverImgUrl,
    required this.totalDuration,
    required this.commentThreadId,
    required this.privacy,
    required this.playCount,
    required this.ordered,
    required this.tags,
    required this.description,
    required this.status,
    required this.name,
    required this.id,
    required this.coverImgIdStr,
    required this.toplistType,
  });

  final List<dynamic> subscribers;
  final dynamic subscribed;
  final dynamic creator;
  final dynamic artists;
  final dynamic tracks;
  final String updateFrequency;
  final int backgroundCoverId;
  final dynamic backgroundCoverUrl;
  final int titleImage;
  final dynamic titleImageUrl;
  final dynamic englishTitle;
  final bool opRecommend;
  final dynamic recommendInfo;
  final dynamic socialPlaylistCover;
  final int subscribedCount;
  final int cloudTrackCount;
  final int adType;
  final int trackNumberUpdateTime;
  final int userId;
  final int createTime;
  final bool highQuality;
  final int specialType;
  final bool newImported;
  final int updateTime;
  final int coverImgId;
  final int trackCount;
  final bool anonimous;
  final int trackUpdateTime;
  final String coverImgUrl;
  final int totalDuration;
  final String commentThreadId;
  final int privacy;
  final int playCount;
  final bool ordered;
  final List<dynamic> tags;
  final String description;
  final int status;
  final String name;
  final int id;
  final String coverImgIdStr;
  final String toplistType;

  factory TopSonglist.fromJson(Map<String,dynamic> json) => TopSonglist(
    subscribers: (json['subscribers'] as List? ?? []).map((e) => e as dynamic).toList(),
    subscribed: json['subscribed'] as dynamic,
    creator: json['creator'] as dynamic,
    artists: json['artists'] as dynamic,
    tracks: json['tracks'] as dynamic,
    updateFrequency: json['updateFrequency'].toString(),
    backgroundCoverId: json['backgroundCoverId'] as int,
    backgroundCoverUrl: json['backgroundCoverUrl'] as dynamic,
    titleImage: json['titleImage'] as int,
    titleImageUrl: json['titleImageUrl'] as dynamic,
    englishTitle: json['englishTitle'] as dynamic,
    opRecommend: json['opRecommend'] as bool,
    recommendInfo: json['recommendInfo'] as dynamic,
    socialPlaylistCover: json['socialPlaylistCover'] as dynamic,
    subscribedCount: json['subscribedCount'] as int,
    cloudTrackCount: json['cloudTrackCount'] as int,
    adType: json['adType'] as int,
    trackNumberUpdateTime: json['trackNumberUpdateTime'] as int,
    userId: json['userId'] as int,
    createTime: json['createTime'] as int,
    highQuality: json['highQuality'] as bool,
    specialType: json['specialType'] as int,
    newImported: json['newImported'] as bool,
    updateTime: json['updateTime'] as int,
    coverImgId: json['coverImgId'] as int,
    trackCount: json['trackCount'] as int,
    anonimous: json['anonimous'] as bool,
    trackUpdateTime: json['trackUpdateTime'] as int,
    coverImgUrl: json['coverImgUrl'].toString(),
    totalDuration: json['totalDuration'] as int,
    commentThreadId: json['commentThreadId'].toString(),
    privacy: json['privacy'] as int,
    playCount: json['playCount'] as int,
    ordered: json['ordered'] as bool,
    tags: (json['tags'] as List? ?? []).map((e) => e as dynamic).toList(),
    description: json['description'].toString(),
    status: json['status'] as int,
    name: json['name'].toString(),
    id: json['id'] as int,
    coverImgIdStr: json['coverImgId_str'].toString(),
    toplistType: json['ToplistType'].toString()
  );
  
  Map<String, dynamic> toJson() => {
    'subscribers': subscribers.map((e) => e.toString()).toList(),
    'subscribed': subscribed,
    'creator': creator,
    'artists': artists,
    'tracks': tracks,
    'updateFrequency': updateFrequency,
    'backgroundCoverId': backgroundCoverId,
    'backgroundCoverUrl': backgroundCoverUrl,
    'titleImage': titleImage,
    'titleImageUrl': titleImageUrl,
    'englishTitle': englishTitle,
    'opRecommend': opRecommend,
    'recommendInfo': recommendInfo,
    'socialPlaylistCover': socialPlaylistCover,
    'subscribedCount': subscribedCount,
    'cloudTrackCount': cloudTrackCount,
    'adType': adType,
    'trackNumberUpdateTime': trackNumberUpdateTime,
    'userId': userId,
    'createTime': createTime,
    'highQuality': highQuality,
    'specialType': specialType,
    'newImported': newImported,
    'updateTime': updateTime,
    'coverImgId': coverImgId,
    'trackCount': trackCount,
    'anonimous': anonimous,
    'trackUpdateTime': trackUpdateTime,
    'coverImgUrl': coverImgUrl,
    'totalDuration': totalDuration,
    'commentThreadId': commentThreadId,
    'privacy': privacy,
    'playCount': playCount,
    'ordered': ordered,
    'tags': tags.map((e) => e.toString()).toList(),
    'description': description,
    'status': status,
    'name': name,
    'id': id,
    'coverImgId_str': coverImgIdStr,
    'ToplistType': toplistType
  };

  TopSonglist clone() => TopSonglist(
    subscribers: subscribers.toList(),
    subscribed: subscribed,
    creator: creator,
    artists: artists,
    tracks: tracks,
    updateFrequency: updateFrequency,
    backgroundCoverId: backgroundCoverId,
    backgroundCoverUrl: backgroundCoverUrl,
    titleImage: titleImage,
    titleImageUrl: titleImageUrl,
    englishTitle: englishTitle,
    opRecommend: opRecommend,
    recommendInfo: recommendInfo,
    socialPlaylistCover: socialPlaylistCover,
    subscribedCount: subscribedCount,
    cloudTrackCount: cloudTrackCount,
    adType: adType,
    trackNumberUpdateTime: trackNumberUpdateTime,
    userId: userId,
    createTime: createTime,
    highQuality: highQuality,
    specialType: specialType,
    newImported: newImported,
    updateTime: updateTime,
    coverImgId: coverImgId,
    trackCount: trackCount,
    anonimous: anonimous,
    trackUpdateTime: trackUpdateTime,
    coverImgUrl: coverImgUrl,
    totalDuration: totalDuration,
    commentThreadId: commentThreadId,
    privacy: privacy,
    playCount: playCount,
    ordered: ordered,
    tags: tags.toList(),
    description: description,
    status: status,
    name: name,
    id: id,
    coverImgIdStr: coverImgIdStr,
    toplistType: toplistType
  );


  TopSonglist copyWith({
    List<dynamic>? subscribers,
    dynamic? subscribed,
    dynamic? creator,
    dynamic? artists,
    dynamic? tracks,
    String? updateFrequency,
    int? backgroundCoverId,
    dynamic? backgroundCoverUrl,
    int? titleImage,
    dynamic? titleImageUrl,
    dynamic? englishTitle,
    bool? opRecommend,
    dynamic? recommendInfo,
    dynamic? socialPlaylistCover,
    int? subscribedCount,
    int? cloudTrackCount,
    int? adType,
    int? trackNumberUpdateTime,
    int? userId,
    int? createTime,
    bool? highQuality,
    int? specialType,
    bool? newImported,
    int? updateTime,
    int? coverImgId,
    int? trackCount,
    bool? anonimous,
    int? trackUpdateTime,
    String? coverImgUrl,
    int? totalDuration,
    String? commentThreadId,
    int? privacy,
    int? playCount,
    bool? ordered,
    List<dynamic>? tags,
    String? description,
    int? status,
    String? name,
    int? id,
    String? coverImgIdStr,
    String? toplistType
  }) => TopSonglist(
    subscribers: subscribers ?? this.subscribers,
    subscribed: subscribed ?? this.subscribed,
    creator: creator ?? this.creator,
    artists: artists ?? this.artists,
    tracks: tracks ?? this.tracks,
    updateFrequency: updateFrequency ?? this.updateFrequency,
    backgroundCoverId: backgroundCoverId ?? this.backgroundCoverId,
    backgroundCoverUrl: backgroundCoverUrl ?? this.backgroundCoverUrl,
    titleImage: titleImage ?? this.titleImage,
    titleImageUrl: titleImageUrl ?? this.titleImageUrl,
    englishTitle: englishTitle ?? this.englishTitle,
    opRecommend: opRecommend ?? this.opRecommend,
    recommendInfo: recommendInfo ?? this.recommendInfo,
    socialPlaylistCover: socialPlaylistCover ?? this.socialPlaylistCover,
    subscribedCount: subscribedCount ?? this.subscribedCount,
    cloudTrackCount: cloudTrackCount ?? this.cloudTrackCount,
    adType: adType ?? this.adType,
    trackNumberUpdateTime: trackNumberUpdateTime ?? this.trackNumberUpdateTime,
    userId: userId ?? this.userId,
    createTime: createTime ?? this.createTime,
    highQuality: highQuality ?? this.highQuality,
    specialType: specialType ?? this.specialType,
    newImported: newImported ?? this.newImported,
    updateTime: updateTime ?? this.updateTime,
    coverImgId: coverImgId ?? this.coverImgId,
    trackCount: trackCount ?? this.trackCount,
    anonimous: anonimous ?? this.anonimous,
    trackUpdateTime: trackUpdateTime ?? this.trackUpdateTime,
    coverImgUrl: coverImgUrl ?? this.coverImgUrl,
    totalDuration: totalDuration ?? this.totalDuration,
    commentThreadId: commentThreadId ?? this.commentThreadId,
    privacy: privacy ?? this.privacy,
    playCount: playCount ?? this.playCount,
    ordered: ordered ?? this.ordered,
    tags: tags ?? this.tags,
    description: description ?? this.description,
    status: status ?? this.status,
    name: name ?? this.name,
    id: id ?? this.id,
    coverImgIdStr: coverImgIdStr ?? this.coverImgIdStr,
    toplistType: toplistType ?? this.toplistType,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is TopSonglist && subscribers == other.subscribers && subscribed == other.subscribed && creator == other.creator && artists == other.artists && tracks == other.tracks && updateFrequency == other.updateFrequency && backgroundCoverId == other.backgroundCoverId && backgroundCoverUrl == other.backgroundCoverUrl && titleImage == other.titleImage && titleImageUrl == other.titleImageUrl && englishTitle == other.englishTitle && opRecommend == other.opRecommend && recommendInfo == other.recommendInfo && socialPlaylistCover == other.socialPlaylistCover && subscribedCount == other.subscribedCount && cloudTrackCount == other.cloudTrackCount && adType == other.adType && trackNumberUpdateTime == other.trackNumberUpdateTime && userId == other.userId && createTime == other.createTime && highQuality == other.highQuality && specialType == other.specialType && newImported == other.newImported && updateTime == other.updateTime && coverImgId == other.coverImgId && trackCount == other.trackCount && anonimous == other.anonimous && trackUpdateTime == other.trackUpdateTime && coverImgUrl == other.coverImgUrl && totalDuration == other.totalDuration && commentThreadId == other.commentThreadId && privacy == other.privacy && playCount == other.playCount && ordered == other.ordered && tags == other.tags && description == other.description && status == other.status && name == other.name && id == other.id && coverImgIdStr == other.coverImgIdStr && toplistType == other.toplistType;

  @override
  int get hashCode => subscribers.hashCode ^ subscribed.hashCode ^ creator.hashCode ^ artists.hashCode ^ tracks.hashCode ^ updateFrequency.hashCode ^ backgroundCoverId.hashCode ^ backgroundCoverUrl.hashCode ^ titleImage.hashCode ^ titleImageUrl.hashCode ^ englishTitle.hashCode ^ opRecommend.hashCode ^ recommendInfo.hashCode ^ socialPlaylistCover.hashCode ^ subscribedCount.hashCode ^ cloudTrackCount.hashCode ^ adType.hashCode ^ trackNumberUpdateTime.hashCode ^ userId.hashCode ^ createTime.hashCode ^ highQuality.hashCode ^ specialType.hashCode ^ newImported.hashCode ^ updateTime.hashCode ^ coverImgId.hashCode ^ trackCount.hashCode ^ anonimous.hashCode ^ trackUpdateTime.hashCode ^ coverImgUrl.hashCode ^ totalDuration.hashCode ^ commentThreadId.hashCode ^ privacy.hashCode ^ playCount.hashCode ^ ordered.hashCode ^ tags.hashCode ^ description.hashCode ^ status.hashCode ^ name.hashCode ^ id.hashCode ^ coverImgIdStr.hashCode ^ toplistType.hashCode;
}

@immutable
class ArtistToplist {

  const ArtistToplist({
    required this.coverUrl,
    required this.name,
    required this.upateFrequency,
    required this.position,
    required this.updateFrequency,
  });

  final String coverUrl;
  final String name;
  final String upateFrequency;
  final int position;
  final String updateFrequency;

  factory ArtistToplist.fromJson(Map<String,dynamic> json) => ArtistToplist(
    coverUrl: json['coverUrl'].toString(),
    name: json['name'].toString(),
    upateFrequency: json['upateFrequency'].toString(),
    position: json['position'] as int,
    updateFrequency: json['updateFrequency'].toString()
  );
  
  Map<String, dynamic> toJson() => {
    'coverUrl': coverUrl,
    'name': name,
    'upateFrequency': upateFrequency,
    'position': position,
    'updateFrequency': updateFrequency
  };

  ArtistToplist clone() => ArtistToplist(
    coverUrl: coverUrl,
    name: name,
    upateFrequency: upateFrequency,
    position: position,
    updateFrequency: updateFrequency
  );


  ArtistToplist copyWith({
    String? coverUrl,
    String? name,
    String? upateFrequency,
    int? position,
    String? updateFrequency
  }) => ArtistToplist(
    coverUrl: coverUrl ?? this.coverUrl,
    name: name ?? this.name,
    upateFrequency: upateFrequency ?? this.upateFrequency,
    position: position ?? this.position,
    updateFrequency: updateFrequency ?? this.updateFrequency,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is ArtistToplist && coverUrl == other.coverUrl && name == other.name && upateFrequency == other.upateFrequency && position == other.position && updateFrequency == other.updateFrequency;

  @override
  int get hashCode => coverUrl.hashCode ^ name.hashCode ^ upateFrequency.hashCode ^ position.hashCode ^ updateFrequency.hashCode;
}
