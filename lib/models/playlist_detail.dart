import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';

import 'index.dart';

@immutable
class PlaylistDetail {

  const PlaylistDetail({
    required this.code,
    required this.relatedVideos,
    required this.playlist,
    required this.urls,
    required this.privileges,
    required this.sharedPrivilege,
    required this.resEntrance,
    required this.fromUsers,
    required this.fromUserCount,
    required this.songFromUsers,
  });

  final int code;
  final dynamic relatedVideos;
  final Playlist playlist;
  final dynamic urls;
  final List<Privilege> privileges;
  final dynamic sharedPrivilege;
  final dynamic resEntrance;
  final dynamic fromUsers;
  final int fromUserCount;
  final dynamic songFromUsers;

  factory PlaylistDetail.fromJson(Map<String,dynamic> json) => PlaylistDetail(
    code: json['code'] as int,
    relatedVideos: json['relatedVideos'] as dynamic,
    playlist: Playlist.fromJson(json['playlist'] as Map<String, dynamic>),
    urls: json['urls'] as dynamic,
    privileges: (json['privileges'] as List? ?? []).map((e) => Privilege.fromJson(e as Map<String, dynamic>)).toList(),
    sharedPrivilege: json['sharedPrivilege'] as dynamic,
    resEntrance: json['resEntrance'] as dynamic,
    fromUsers: json['fromUsers'] as dynamic,
    fromUserCount: json['fromUserCount'] as int,
    songFromUsers: json['songFromUsers'] as dynamic
  );
  
  Map<String, dynamic> toJson() => {
    'code': code,
    'relatedVideos': relatedVideos,
    'playlist': playlist.toJson(),
    'urls': urls,
    'privileges': privileges.map((e) => e.toJson()).toList(),
    'sharedPrivilege': sharedPrivilege,
    'resEntrance': resEntrance,
    'fromUsers': fromUsers,
    'fromUserCount': fromUserCount,
    'songFromUsers': songFromUsers
  };

  PlaylistDetail clone() => PlaylistDetail(
    code: code,
    relatedVideos: relatedVideos,
    playlist: playlist.clone(),
    urls: urls,
    privileges: privileges.map((e) => e.clone()).toList(),
    sharedPrivilege: sharedPrivilege,
    resEntrance: resEntrance,
    fromUsers: fromUsers,
    fromUserCount: fromUserCount,
    songFromUsers: songFromUsers
  );


  PlaylistDetail copyWith({
    int? code,
    dynamic? relatedVideos,
    Playlist? playlist,
    dynamic? urls,
    List<Privilege>? privileges,
    dynamic? sharedPrivilege,
    dynamic? resEntrance,
    dynamic? fromUsers,
    int? fromUserCount,
    dynamic? songFromUsers
  }) => PlaylistDetail(
    code: code ?? this.code,
    relatedVideos: relatedVideos ?? this.relatedVideos,
    playlist: playlist ?? this.playlist,
    urls: urls ?? this.urls,
    privileges: privileges ?? this.privileges,
    sharedPrivilege: sharedPrivilege ?? this.sharedPrivilege,
    resEntrance: resEntrance ?? this.resEntrance,
    fromUsers: fromUsers ?? this.fromUsers,
    fromUserCount: fromUserCount ?? this.fromUserCount,
    songFromUsers: songFromUsers ?? this.songFromUsers,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is PlaylistDetail && code == other.code && relatedVideos == other.relatedVideos && playlist == other.playlist && urls == other.urls && privileges == other.privileges && sharedPrivilege == other.sharedPrivilege && resEntrance == other.resEntrance && fromUsers == other.fromUsers && fromUserCount == other.fromUserCount && songFromUsers == other.songFromUsers;

  @override
  int get hashCode => code.hashCode ^ relatedVideos.hashCode ^ playlist.hashCode ^ urls.hashCode ^ privileges.hashCode ^ sharedPrivilege.hashCode ^ resEntrance.hashCode ^ fromUsers.hashCode ^ fromUserCount.hashCode ^ songFromUsers.hashCode;
}

@immutable
class Playlist {

  const Playlist({
    required this.id,
    required this.name,
    required this.coverImgId,
    required this.coverImgUrl,
    required this.coverImgIdStr,
    required this.adType,
    required this.userId,
    required this.createTime,
    required this.status,
    required this.opRecommend,
    required this.highQuality,
    required this.newImported,
    required this.updateTime,
    required this.trackCount,
    required this.specialType,
    required this.privacy,
    required this.trackUpdateTime,
    required this.commentThreadId,
    required this.playCount,
    required this.trackNumberUpdateTime,
    required this.subscribedCount,
    required this.cloudTrackCount,
    required this.ordered,
    required this.description,
    required this.tags,
    required this.updateFrequency,
    required this.backgroundCoverId,
    required this.backgroundCoverUrl,
    required this.titleImage,
    required this.titleImageUrl,
    required this.englishTitle,
    required this.officialPlaylistType,
    required this.copied,
    required this.relateResType,
    required this.subscribers,
    required this.subscribed,
    required this.creator,
    required this.tracks,
    required this.videoIds,
    required this.videos,
    required this.trackIds,
    required this.bannedTrackIds,
    required this.shareCount,
    required this.commentCount,
    required this.remixVideo,
    required this.sharedUsers,
    required this.historySharedUsers,
    required this.gradeStatus,
    required this.score,
    required this.algTags,
  });

  final int id;
  final String name;
  final int coverImgId;
  final String coverImgUrl;
  final String coverImgIdStr;
  final int adType;
  final int userId;
  final int createTime;
  final int status;
  final bool opRecommend;
  final bool highQuality;
  final bool newImported;
  final int updateTime;
  final int trackCount;
  final int specialType;
  final int privacy;
  final int trackUpdateTime;
  final String commentThreadId;
  final int playCount;
  final int trackNumberUpdateTime;
  final int subscribedCount;
  final int cloudTrackCount;
  final bool ordered;
  final String description;
  final List<String> tags;
  final dynamic updateFrequency;
  final int backgroundCoverId;
  final dynamic backgroundCoverUrl;
  final int titleImage;
  final dynamic titleImageUrl;
  final dynamic englishTitle;
  final dynamic officialPlaylistType;
  final bool copied;
  final dynamic relateResType;
  final List<Subscriber> subscribers;
  final bool subscribed;
  final Creator creator;
  final List<Track> tracks;
  final dynamic videoIds;
  final dynamic videos;
  final List<TrackId> trackIds;
  final dynamic bannedTrackIds;
  final int shareCount;
  final int commentCount;
  final dynamic remixVideo;
  final dynamic sharedUsers;
  final dynamic historySharedUsers;
  final String gradeStatus;
  final dynamic score;
  final dynamic algTags;

  factory Playlist.fromJson(Map<String,dynamic> json) => Playlist(
    id: json['id'] as int,
    name: json['name'].toString(),
    coverImgId: json['coverImgId'] as int,
    coverImgUrl: json['coverImgUrl'].toString(),
    coverImgIdStr: json['coverImgId_str'].toString(),
    adType: json['adType'] as int,
    userId: json['userId'] as int,
    createTime: json['createTime'] as int,
    status: json['status'] as int,
    opRecommend: json['opRecommend'] as bool,
    highQuality: json['highQuality'] as bool,
    newImported: json['newImported'] as bool,
    updateTime: json['updateTime'] as int,
    trackCount: json['trackCount'] as int,
    specialType: json['specialType'] as int,
    privacy: json['privacy'] as int,
    trackUpdateTime: json['trackUpdateTime'] as int,
    commentThreadId: json['commentThreadId'].toString(),
    playCount: json['playCount'] as int,
    trackNumberUpdateTime: json['trackNumberUpdateTime'] as int,
    subscribedCount: json['subscribedCount'] as int,
    cloudTrackCount: json['cloudTrackCount'] as int,
    ordered: json['ordered'] as bool,
    description: json['description'].toString(),
    tags: (json['tags'] as List? ?? []).map((e) => e as String).toList(),
    updateFrequency: json['updateFrequency'] as dynamic,
    backgroundCoverId: json['backgroundCoverId'] as int,
    backgroundCoverUrl: json['backgroundCoverUrl'] as dynamic,
    titleImage: json['titleImage'] as int,
    titleImageUrl: json['titleImageUrl'] as dynamic,
    englishTitle: json['englishTitle'] as dynamic,
    officialPlaylistType: json['officialPlaylistType'] as dynamic,
    copied: json['copied'] as bool,
    relateResType: json['relateResType'] as dynamic,
    subscribers: (json['subscribers'] as List? ?? []).map((e) => Subscriber.fromJson(e as Map<String, dynamic>)).toList(),
    subscribed: json['subscribed'] as bool,
    creator: Creator.fromJson(json['creator'] as Map<String, dynamic>),
    tracks: (json['tracks'] as List? ?? []).map((e) => Track.fromJson(e as Map<String, dynamic>)).toList(),
    videoIds: json['videoIds'] as dynamic,
    videos: json['videos'] as dynamic,
    trackIds: (json['trackIds'] as List? ?? []).map((e) => TrackId.fromJson(e as Map<String, dynamic>)).toList(),
    bannedTrackIds: json['bannedTrackIds'] as dynamic,
    shareCount: json['shareCount'] as int,
    commentCount: json['commentCount'] as int,
    remixVideo: json['remixVideo'] as dynamic,
    sharedUsers: json['sharedUsers'] as dynamic,
    historySharedUsers: json['historySharedUsers'] as dynamic,
    gradeStatus: json['gradeStatus'].toString(),
    score: json['score'] as dynamic,
    algTags: json['algTags'] as dynamic
  );
  
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'coverImgId': coverImgId,
    'coverImgUrl': coverImgUrl,
    'coverImgId_str': coverImgIdStr,
    'adType': adType,
    'userId': userId,
    'createTime': createTime,
    'status': status,
    'opRecommend': opRecommend,
    'highQuality': highQuality,
    'newImported': newImported,
    'updateTime': updateTime,
    'trackCount': trackCount,
    'specialType': specialType,
    'privacy': privacy,
    'trackUpdateTime': trackUpdateTime,
    'commentThreadId': commentThreadId,
    'playCount': playCount,
    'trackNumberUpdateTime': trackNumberUpdateTime,
    'subscribedCount': subscribedCount,
    'cloudTrackCount': cloudTrackCount,
    'ordered': ordered,
    'description': description,
    'tags': tags.map((e) => e.toString()).toList(),
    'updateFrequency': updateFrequency,
    'backgroundCoverId': backgroundCoverId,
    'backgroundCoverUrl': backgroundCoverUrl,
    'titleImage': titleImage,
    'titleImageUrl': titleImageUrl,
    'englishTitle': englishTitle,
    'officialPlaylistType': officialPlaylistType,
    'copied': copied,
    'relateResType': relateResType,
    'subscribers': subscribers.map((e) => e.toJson()).toList(),
    'subscribed': subscribed,
    'creator': creator.toJson(),
    'tracks': tracks.map((e) => e.toJson()).toList(),
    'videoIds': videoIds,
    'videos': videos,
    'trackIds': trackIds.map((e) => e.toJson()).toList(),
    'bannedTrackIds': bannedTrackIds,
    'shareCount': shareCount,
    'commentCount': commentCount,
    'remixVideo': remixVideo,
    'sharedUsers': sharedUsers,
    'historySharedUsers': historySharedUsers,
    'gradeStatus': gradeStatus,
    'score': score,
    'algTags': algTags
  };

  Playlist clone() => Playlist(
    id: id,
    name: name,
    coverImgId: coverImgId,
    coverImgUrl: coverImgUrl,
    coverImgIdStr: coverImgIdStr,
    adType: adType,
    userId: userId,
    createTime: createTime,
    status: status,
    opRecommend: opRecommend,
    highQuality: highQuality,
    newImported: newImported,
    updateTime: updateTime,
    trackCount: trackCount,
    specialType: specialType,
    privacy: privacy,
    trackUpdateTime: trackUpdateTime,
    commentThreadId: commentThreadId,
    playCount: playCount,
    trackNumberUpdateTime: trackNumberUpdateTime,
    subscribedCount: subscribedCount,
    cloudTrackCount: cloudTrackCount,
    ordered: ordered,
    description: description,
    tags: tags.toList(),
    updateFrequency: updateFrequency,
    backgroundCoverId: backgroundCoverId,
    backgroundCoverUrl: backgroundCoverUrl,
    titleImage: titleImage,
    titleImageUrl: titleImageUrl,
    englishTitle: englishTitle,
    officialPlaylistType: officialPlaylistType,
    copied: copied,
    relateResType: relateResType,
    subscribers: subscribers.map((e) => e.clone()).toList(),
    subscribed: subscribed,
    creator: creator.clone(),
    tracks: tracks.map((e) => e.clone()).toList(),
    videoIds: videoIds,
    videos: videos,
    trackIds: trackIds.map((e) => e.clone()).toList(),
    bannedTrackIds: bannedTrackIds,
    shareCount: shareCount,
    commentCount: commentCount,
    remixVideo: remixVideo,
    sharedUsers: sharedUsers,
    historySharedUsers: historySharedUsers,
    gradeStatus: gradeStatus,
    score: score,
    algTags: algTags
  );


  Playlist copyWith({
    int? id,
    String? name,
    int? coverImgId,
    String? coverImgUrl,
    String? coverImgIdStr,
    int? adType,
    int? userId,
    int? createTime,
    int? status,
    bool? opRecommend,
    bool? highQuality,
    bool? newImported,
    int? updateTime,
    int? trackCount,
    int? specialType,
    int? privacy,
    int? trackUpdateTime,
    String? commentThreadId,
    int? playCount,
    int? trackNumberUpdateTime,
    int? subscribedCount,
    int? cloudTrackCount,
    bool? ordered,
    String? description,
    List<String>? tags,
    dynamic? updateFrequency,
    int? backgroundCoverId,
    dynamic? backgroundCoverUrl,
    int? titleImage,
    dynamic? titleImageUrl,
    dynamic? englishTitle,
    dynamic? officialPlaylistType,
    bool? copied,
    dynamic? relateResType,
    List<Subscriber>? subscribers,
    bool? subscribed,
    Creator? creator,
    List<Track>? tracks,
    dynamic? videoIds,
    dynamic? videos,
    List<TrackId>? trackIds,
    dynamic? bannedTrackIds,
    int? shareCount,
    int? commentCount,
    dynamic? remixVideo,
    dynamic? sharedUsers,
    dynamic? historySharedUsers,
    String? gradeStatus,
    dynamic? score,
    dynamic? algTags
  }) => Playlist(
    id: id ?? this.id,
    name: name ?? this.name,
    coverImgId: coverImgId ?? this.coverImgId,
    coverImgUrl: coverImgUrl ?? this.coverImgUrl,
    coverImgIdStr: coverImgIdStr ?? this.coverImgIdStr,
    adType: adType ?? this.adType,
    userId: userId ?? this.userId,
    createTime: createTime ?? this.createTime,
    status: status ?? this.status,
    opRecommend: opRecommend ?? this.opRecommend,
    highQuality: highQuality ?? this.highQuality,
    newImported: newImported ?? this.newImported,
    updateTime: updateTime ?? this.updateTime,
    trackCount: trackCount ?? this.trackCount,
    specialType: specialType ?? this.specialType,
    privacy: privacy ?? this.privacy,
    trackUpdateTime: trackUpdateTime ?? this.trackUpdateTime,
    commentThreadId: commentThreadId ?? this.commentThreadId,
    playCount: playCount ?? this.playCount,
    trackNumberUpdateTime: trackNumberUpdateTime ?? this.trackNumberUpdateTime,
    subscribedCount: subscribedCount ?? this.subscribedCount,
    cloudTrackCount: cloudTrackCount ?? this.cloudTrackCount,
    ordered: ordered ?? this.ordered,
    description: description ?? this.description,
    tags: tags ?? this.tags,
    updateFrequency: updateFrequency ?? this.updateFrequency,
    backgroundCoverId: backgroundCoverId ?? this.backgroundCoverId,
    backgroundCoverUrl: backgroundCoverUrl ?? this.backgroundCoverUrl,
    titleImage: titleImage ?? this.titleImage,
    titleImageUrl: titleImageUrl ?? this.titleImageUrl,
    englishTitle: englishTitle ?? this.englishTitle,
    officialPlaylistType: officialPlaylistType ?? this.officialPlaylistType,
    copied: copied ?? this.copied,
    relateResType: relateResType ?? this.relateResType,
    subscribers: subscribers ?? this.subscribers,
    subscribed: subscribed ?? this.subscribed,
    creator: creator ?? this.creator,
    tracks: tracks ?? this.tracks,
    videoIds: videoIds ?? this.videoIds,
    videos: videos ?? this.videos,
    trackIds: trackIds ?? this.trackIds,
    bannedTrackIds: bannedTrackIds ?? this.bannedTrackIds,
    shareCount: shareCount ?? this.shareCount,
    commentCount: commentCount ?? this.commentCount,
    remixVideo: remixVideo ?? this.remixVideo,
    sharedUsers: sharedUsers ?? this.sharedUsers,
    historySharedUsers: historySharedUsers ?? this.historySharedUsers,
    gradeStatus: gradeStatus ?? this.gradeStatus,
    score: score ?? this.score,
    algTags: algTags ?? this.algTags,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Playlist && id == other.id && name == other.name && coverImgId == other.coverImgId && coverImgUrl == other.coverImgUrl && coverImgIdStr == other.coverImgIdStr && adType == other.adType && userId == other.userId && createTime == other.createTime && status == other.status && opRecommend == other.opRecommend && highQuality == other.highQuality && newImported == other.newImported && updateTime == other.updateTime && trackCount == other.trackCount && specialType == other.specialType && privacy == other.privacy && trackUpdateTime == other.trackUpdateTime && commentThreadId == other.commentThreadId && playCount == other.playCount && trackNumberUpdateTime == other.trackNumberUpdateTime && subscribedCount == other.subscribedCount && cloudTrackCount == other.cloudTrackCount && ordered == other.ordered && description == other.description && tags == other.tags && updateFrequency == other.updateFrequency && backgroundCoverId == other.backgroundCoverId && backgroundCoverUrl == other.backgroundCoverUrl && titleImage == other.titleImage && titleImageUrl == other.titleImageUrl && englishTitle == other.englishTitle && officialPlaylistType == other.officialPlaylistType && copied == other.copied && relateResType == other.relateResType && subscribers == other.subscribers && subscribed == other.subscribed && creator == other.creator && tracks == other.tracks && videoIds == other.videoIds && videos == other.videos && trackIds == other.trackIds && bannedTrackIds == other.bannedTrackIds && shareCount == other.shareCount && commentCount == other.commentCount && remixVideo == other.remixVideo && sharedUsers == other.sharedUsers && historySharedUsers == other.historySharedUsers && gradeStatus == other.gradeStatus && score == other.score && algTags == other.algTags;

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ coverImgId.hashCode ^ coverImgUrl.hashCode ^ coverImgIdStr.hashCode ^ adType.hashCode ^ userId.hashCode ^ createTime.hashCode ^ status.hashCode ^ opRecommend.hashCode ^ highQuality.hashCode ^ newImported.hashCode ^ updateTime.hashCode ^ trackCount.hashCode ^ specialType.hashCode ^ privacy.hashCode ^ trackUpdateTime.hashCode ^ commentThreadId.hashCode ^ playCount.hashCode ^ trackNumberUpdateTime.hashCode ^ subscribedCount.hashCode ^ cloudTrackCount.hashCode ^ ordered.hashCode ^ description.hashCode ^ tags.hashCode ^ updateFrequency.hashCode ^ backgroundCoverId.hashCode ^ backgroundCoverUrl.hashCode ^ titleImage.hashCode ^ titleImageUrl.hashCode ^ englishTitle.hashCode ^ officialPlaylistType.hashCode ^ copied.hashCode ^ relateResType.hashCode ^ subscribers.hashCode ^ subscribed.hashCode ^ creator.hashCode ^ tracks.hashCode ^ videoIds.hashCode ^ videos.hashCode ^ trackIds.hashCode ^ bannedTrackIds.hashCode ^ shareCount.hashCode ^ commentCount.hashCode ^ remixVideo.hashCode ^ sharedUsers.hashCode ^ historySharedUsers.hashCode ^ gradeStatus.hashCode ^ score.hashCode ^ algTags.hashCode;
}

@immutable
class Subscriber {

  const Subscriber({
    required this.defaultAvatar,
    required this.province,
    required this.authStatus,
    required this.followed,
    required this.avatarUrl,
    required this.accountStatus,
    required this.gender,
    required this.city,
    required this.birthday,
    required this.userId,
    required this.userType,
    required this.nickname,
    required this.signature,
    required this.description,
    required this.detailDescription,
    required this.avatarImgId,
    required this.backgroundImgId,
    required this.backgroundUrl,
    required this.authority,
    required this.mutual,
    required this.expertTags,
    required this.experts,
    required this.djStatus,
    required this.vipType,
    required this.remarkName,
    required this.authenticationTypes,
    required this.avatarDetail,
    required this.anchor,
    required this.avatarImgIdStr,
    required this.backgroundImgIdStr,
  });

  final bool defaultAvatar;
  final int province;
  final int authStatus;
  final bool followed;
  final String avatarUrl;
  final int accountStatus;
  final int gender;
  final int city;
  final int birthday;
  final int userId;
  final int userType;
  final String nickname;
  final String signature;
  final String description;
  final String detailDescription;
  final int avatarImgId;
  final int backgroundImgId;
  final String backgroundUrl;
  final int authority;
  final bool mutual;
  final dynamic expertTags;
  final dynamic experts;
  final int djStatus;
  final int vipType;
  final dynamic remarkName;
  final int authenticationTypes;
  final dynamic avatarDetail;
  final bool anchor;
  final String avatarImgIdStr;
  final String backgroundImgIdStr;

  factory Subscriber.fromJson(Map<String,dynamic> json) => Subscriber(
    defaultAvatar: json['defaultAvatar'] as bool,
    province: json['province'] as int,
    authStatus: json['authStatus'] as int,
    followed: json['followed'] as bool,
    avatarUrl: json['avatarUrl'].toString(),
    accountStatus: json['accountStatus'] as int,
    gender: json['gender'] as int,
    city: json['city'] as int,
    birthday: json['birthday'] as int,
    userId: json['userId'] as int,
    userType: json['userType'] as int,
    nickname: json['nickname'].toString(),
    signature: json['signature'].toString(),
    description: json['description'].toString(),
    detailDescription: json['detailDescription'].toString(),
    avatarImgId: json['avatarImgId'] as int,
    backgroundImgId: json['backgroundImgId'] as int,
    backgroundUrl: json['backgroundUrl'].toString(),
    authority: json['authority'] as int,
    mutual: json['mutual'] as bool,
    expertTags: json['expertTags'] as dynamic,
    experts: json['experts'] as dynamic,
    djStatus: json['djStatus'] as int,
    vipType: json['vipType'] as int,
    remarkName: json['remarkName'] as dynamic,
    authenticationTypes: json['authenticationTypes'] as int,
    avatarDetail: json['avatarDetail'] as dynamic,
    anchor: json['anchor'] as bool,
    avatarImgIdStr: json['avatarImgIdStr'].toString(),
    backgroundImgIdStr: json['backgroundImgIdStr'].toString(),
  );
  
  Map<String, dynamic> toJson() => {
    'defaultAvatar': defaultAvatar,
    'province': province,
    'authStatus': authStatus,
    'followed': followed,
    'avatarUrl': avatarUrl,
    'accountStatus': accountStatus,
    'gender': gender,
    'city': city,
    'birthday': birthday,
    'userId': userId,
    'userType': userType,
    'nickname': nickname,
    'signature': signature,
    'description': description,
    'detailDescription': detailDescription,
    'avatarImgId': avatarImgId,
    'backgroundImgId': backgroundImgId,
    'backgroundUrl': backgroundUrl,
    'authority': authority,
    'mutual': mutual,
    'expertTags': expertTags,
    'experts': experts,
    'djStatus': djStatus,
    'vipType': vipType,
    'remarkName': remarkName,
    'authenticationTypes': authenticationTypes,
    'avatarDetail': avatarDetail,
    'anchor': anchor,
    'avatarImgIdStr': avatarImgIdStr,
    'backgroundImgIdStr': backgroundImgIdStr,
    'avatarImgId_str': avatarImgIdStr
  };

  Subscriber clone() => Subscriber(
    defaultAvatar: defaultAvatar,
    province: province,
    authStatus: authStatus,
    followed: followed,
    avatarUrl: avatarUrl,
    accountStatus: accountStatus,
    gender: gender,
    city: city,
    birthday: birthday,
    userId: userId,
    userType: userType,
    nickname: nickname,
    signature: signature,
    description: description,
    detailDescription: detailDescription,
    avatarImgId: avatarImgId,
    backgroundImgId: backgroundImgId,
    backgroundUrl: backgroundUrl,
    authority: authority,
    mutual: mutual,
    expertTags: expertTags,
    experts: experts,
    djStatus: djStatus,
    vipType: vipType,
    remarkName: remarkName,
    authenticationTypes: authenticationTypes,
    avatarDetail: avatarDetail,
    anchor: anchor,
    avatarImgIdStr: avatarImgIdStr,
    backgroundImgIdStr: backgroundImgIdStr,
  );


  Subscriber copyWith({
    bool? defaultAvatar,
    int? province,
    int? authStatus,
    bool? followed,
    String? avatarUrl,
    int? accountStatus,
    int? gender,
    int? city,
    int? birthday,
    int? userId,
    int? userType,
    String? nickname,
    String? signature,
    String? description,
    String? detailDescription,
    int? avatarImgId,
    int? backgroundImgId,
    String? backgroundUrl,
    int? authority,
    bool? mutual,
    dynamic? expertTags,
    dynamic? experts,
    int? djStatus,
    int? vipType,
    dynamic? remarkName,
    int? authenticationTypes,
    dynamic? avatarDetail,
    bool? anchor,
    String? avatarImgIdStr,
    String? backgroundImgIdStr,
  }) => Subscriber(
    defaultAvatar: defaultAvatar ?? this.defaultAvatar,
    province: province ?? this.province,
    authStatus: authStatus ?? this.authStatus,
    followed: followed ?? this.followed,
    avatarUrl: avatarUrl ?? this.avatarUrl,
    accountStatus: accountStatus ?? this.accountStatus,
    gender: gender ?? this.gender,
    city: city ?? this.city,
    birthday: birthday ?? this.birthday,
    userId: userId ?? this.userId,
    userType: userType ?? this.userType,
    nickname: nickname ?? this.nickname,
    signature: signature ?? this.signature,
    description: description ?? this.description,
    detailDescription: detailDescription ?? this.detailDescription,
    avatarImgId: avatarImgId ?? this.avatarImgId,
    backgroundImgId: backgroundImgId ?? this.backgroundImgId,
    backgroundUrl: backgroundUrl ?? this.backgroundUrl,
    authority: authority ?? this.authority,
    mutual: mutual ?? this.mutual,
    expertTags: expertTags ?? this.expertTags,
    experts: experts ?? this.experts,
    djStatus: djStatus ?? this.djStatus,
    vipType: vipType ?? this.vipType,
    remarkName: remarkName ?? this.remarkName,
    authenticationTypes: authenticationTypes ?? this.authenticationTypes,
    avatarDetail: avatarDetail ?? this.avatarDetail,
    anchor: anchor ?? this.anchor,
    avatarImgIdStr: avatarImgIdStr ?? this.avatarImgIdStr,
    backgroundImgIdStr: backgroundImgIdStr ?? this.backgroundImgIdStr,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Subscriber && defaultAvatar == other.defaultAvatar && province == other.province && authStatus == other.authStatus && followed == other.followed && avatarUrl == other.avatarUrl && accountStatus == other.accountStatus && gender == other.gender && city == other.city && birthday == other.birthday && userId == other.userId && userType == other.userType && nickname == other.nickname && signature == other.signature && description == other.description && detailDescription == other.detailDescription && avatarImgId == other.avatarImgId && backgroundImgId == other.backgroundImgId && backgroundUrl == other.backgroundUrl && authority == other.authority && mutual == other.mutual && expertTags == other.expertTags && experts == other.experts && djStatus == other.djStatus && vipType == other.vipType && remarkName == other.remarkName && authenticationTypes == other.authenticationTypes && avatarDetail == other.avatarDetail && anchor == other.anchor && avatarImgIdStr == other.avatarImgIdStr && backgroundImgIdStr == other.backgroundImgIdStr && avatarImgIdStr == other.avatarImgIdStr;

  @override
  int get hashCode => defaultAvatar.hashCode ^ province.hashCode ^ authStatus.hashCode ^ followed.hashCode ^ avatarUrl.hashCode ^ accountStatus.hashCode ^ gender.hashCode ^ city.hashCode ^ birthday.hashCode ^ userId.hashCode ^ userType.hashCode ^ nickname.hashCode ^ signature.hashCode ^ description.hashCode ^ detailDescription.hashCode ^ avatarImgId.hashCode ^ backgroundImgId.hashCode ^ backgroundUrl.hashCode ^ authority.hashCode ^ mutual.hashCode ^ expertTags.hashCode ^ experts.hashCode ^ djStatus.hashCode ^ vipType.hashCode ^ remarkName.hashCode ^ authenticationTypes.hashCode ^ avatarDetail.hashCode ^ anchor.hashCode ^ avatarImgIdStr.hashCode ^ backgroundImgIdStr.hashCode ^ avatarImgIdStr.hashCode;
}

@immutable
class Creator {

  const Creator({
    required this.defaultAvatar,
    required this.province,
    required this.authStatus,
    required this.followed,
    required this.avatarUrl,
    required this.accountStatus,
    required this.gender,
    required this.city,
    required this.birthday,
    required this.userId,
    required this.userType,
    required this.nickname,
    required this.signature,
    required this.description,
    required this.detailDescription,
    required this.avatarImgId,
    required this.backgroundImgId,
    required this.backgroundUrl,
    required this.authority,
    required this.mutual,
    required this.expertTags,
    required this.experts,
    required this.djStatus,
    required this.vipType,
    required this.remarkName,
    required this.authenticationTypes,
    required this.avatarDetail,
    required this.anchor,
    required this.avatarImgIdStr,
    required this.backgroundImgIdStr,
  });

  final bool defaultAvatar;
  final int province;
  final int authStatus;
  final bool followed;
  final String avatarUrl;
  final int accountStatus;
  final int gender;
  final int city;
  final int birthday;
  final int userId;
  final int userType;
  final String nickname;
  final String signature;
  final String description;
  final String detailDescription;
  final int avatarImgId;
  final int backgroundImgId;
  final String backgroundUrl;
  final int authority;
  final bool mutual;
  final dynamic expertTags;
  final dynamic experts;
  final int djStatus;
  final int vipType;
  final dynamic remarkName;
  final int authenticationTypes;
  final dynamic avatarDetail;
  final bool anchor;
  final String avatarImgIdStr;
  final String backgroundImgIdStr;

  factory Creator.fromJson(Map<String,dynamic> json) => Creator(
    defaultAvatar: json['defaultAvatar'] as bool,
    province: json['province'] as int,
    authStatus: json['authStatus'] as int,
    followed: json['followed'] as bool,
    avatarUrl: json['avatarUrl'].toString(),
    accountStatus: json['accountStatus'] as int,
    gender: json['gender'] as int,
    city: json['city'] as int,
    birthday: json['birthday'] as int,
    userId: json['userId'] as int,
    userType: json['userType'] as int,
    nickname: json['nickname'].toString(),
    signature: json['signature'].toString(),
    description: json['description'].toString(),
    detailDescription: json['detailDescription'].toString(),
    avatarImgId: json['avatarImgId'] as int,
    backgroundImgId: json['backgroundImgId'] as int,
    backgroundUrl: json['backgroundUrl'].toString(),
    authority: json['authority'] as int,
    mutual: json['mutual'] as bool,
    expertTags: json['expertTags'] as dynamic,
    experts: json['experts'] as dynamic,
    djStatus: json['djStatus'] as int,
    vipType: json['vipType'] as int,
    remarkName: json['remarkName'] as dynamic,
    authenticationTypes: json['authenticationTypes'] as int,
    avatarDetail: json['avatarDetail'] as dynamic,
    anchor: json['anchor'] as bool,
    avatarImgIdStr: json['avatarImgIdStr'].toString(),
    backgroundImgIdStr: json['backgroundImgIdStr'].toString(),
  );
  
  Map<String, dynamic> toJson() => {
    'defaultAvatar': defaultAvatar,
    'province': province,
    'authStatus': authStatus,
    'followed': followed,
    'avatarUrl': avatarUrl,
    'accountStatus': accountStatus,
    'gender': gender,
    'city': city,
    'birthday': birthday,
    'userId': userId,
    'userType': userType,
    'nickname': nickname,
    'signature': signature,
    'description': description,
    'detailDescription': detailDescription,
    'avatarImgId': avatarImgId,
    'backgroundImgId': backgroundImgId,
    'backgroundUrl': backgroundUrl,
    'authority': authority,
    'mutual': mutual,
    'expertTags': expertTags,
    'experts': experts,
    'djStatus': djStatus,
    'vipType': vipType,
    'remarkName': remarkName,
    'authenticationTypes': authenticationTypes,
    'avatarDetail': avatarDetail,
    'anchor': anchor,
    'avatarImgIdStr': avatarImgIdStr,
    'backgroundImgIdStr': backgroundImgIdStr,
  };

  Creator clone() => Creator(
    defaultAvatar: defaultAvatar,
    province: province,
    authStatus: authStatus,
    followed: followed,
    avatarUrl: avatarUrl,
    accountStatus: accountStatus,
    gender: gender,
    city: city,
    birthday: birthday,
    userId: userId,
    userType: userType,
    nickname: nickname,
    signature: signature,
    description: description,
    detailDescription: detailDescription,
    avatarImgId: avatarImgId,
    backgroundImgId: backgroundImgId,
    backgroundUrl: backgroundUrl,
    authority: authority,
    mutual: mutual,
    expertTags: expertTags,
    experts: experts,
    djStatus: djStatus,
    vipType: vipType,
    remarkName: remarkName,
    authenticationTypes: authenticationTypes,
    avatarDetail: avatarDetail,
    anchor: anchor,
    avatarImgIdStr: avatarImgIdStr,
    backgroundImgIdStr: backgroundImgIdStr,
  );


  Creator copyWith({
    bool? defaultAvatar,
    int? province,
    int? authStatus,
    bool? followed,
    String? avatarUrl,
    int? accountStatus,
    int? gender,
    int? city,
    int? birthday,
    int? userId,
    int? userType,
    String? nickname,
    String? signature,
    String? description,
    String? detailDescription,
    int? avatarImgId,
    int? backgroundImgId,
    String? backgroundUrl,
    int? authority,
    bool? mutual,
    dynamic? expertTags,
    dynamic? experts,
    int? djStatus,
    int? vipType,
    dynamic? remarkName,
    int? authenticationTypes,
    dynamic? avatarDetail,
    bool? anchor,
    String? avatarImgIdStr,
    String? backgroundImgIdStr,
  }) => Creator(
    defaultAvatar: defaultAvatar ?? this.defaultAvatar,
    province: province ?? this.province,
    authStatus: authStatus ?? this.authStatus,
    followed: followed ?? this.followed,
    avatarUrl: avatarUrl ?? this.avatarUrl,
    accountStatus: accountStatus ?? this.accountStatus,
    gender: gender ?? this.gender,
    city: city ?? this.city,
    birthday: birthday ?? this.birthday,
    userId: userId ?? this.userId,
    userType: userType ?? this.userType,
    nickname: nickname ?? this.nickname,
    signature: signature ?? this.signature,
    description: description ?? this.description,
    detailDescription: detailDescription ?? this.detailDescription,
    avatarImgId: avatarImgId ?? this.avatarImgId,
    backgroundImgId: backgroundImgId ?? this.backgroundImgId,
    backgroundUrl: backgroundUrl ?? this.backgroundUrl,
    authority: authority ?? this.authority,
    mutual: mutual ?? this.mutual,
    expertTags: expertTags ?? this.expertTags,
    experts: experts ?? this.experts,
    djStatus: djStatus ?? this.djStatus,
    vipType: vipType ?? this.vipType,
    remarkName: remarkName ?? this.remarkName,
    authenticationTypes: authenticationTypes ?? this.authenticationTypes,
    avatarDetail: avatarDetail ?? this.avatarDetail,
    anchor: anchor ?? this.anchor,
    avatarImgIdStr: avatarImgIdStr ?? this.avatarImgIdStr,
    backgroundImgIdStr: backgroundImgIdStr ?? this.backgroundImgIdStr,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Creator && defaultAvatar == other.defaultAvatar && province == other.province && authStatus == other.authStatus && followed == other.followed && avatarUrl == other.avatarUrl && accountStatus == other.accountStatus && gender == other.gender && city == other.city && birthday == other.birthday && userId == other.userId && userType == other.userType && nickname == other.nickname && signature == other.signature && description == other.description && detailDescription == other.detailDescription && avatarImgId == other.avatarImgId && backgroundImgId == other.backgroundImgId && backgroundUrl == other.backgroundUrl && authority == other.authority && mutual == other.mutual && expertTags == other.expertTags && experts == other.experts && djStatus == other.djStatus && vipType == other.vipType && remarkName == other.remarkName && authenticationTypes == other.authenticationTypes && avatarDetail == other.avatarDetail && anchor == other.anchor && avatarImgIdStr == other.avatarImgIdStr && backgroundImgIdStr == other.backgroundImgIdStr && avatarImgIdStr == other.avatarImgIdStr;

  @override
  int get hashCode => defaultAvatar.hashCode ^ province.hashCode ^ authStatus.hashCode ^ followed.hashCode ^ avatarUrl.hashCode ^ accountStatus.hashCode ^ gender.hashCode ^ city.hashCode ^ birthday.hashCode ^ userId.hashCode ^ userType.hashCode ^ nickname.hashCode ^ signature.hashCode ^ description.hashCode ^ detailDescription.hashCode ^ avatarImgId.hashCode ^ backgroundImgId.hashCode ^ backgroundUrl.hashCode ^ authority.hashCode ^ mutual.hashCode ^ expertTags.hashCode ^ experts.hashCode ^ djStatus.hashCode ^ vipType.hashCode ^ remarkName.hashCode ^ authenticationTypes.hashCode ^ avatarDetail.hashCode ^ anchor.hashCode ^ avatarImgIdStr.hashCode ^ backgroundImgIdStr.hashCode ^ avatarImgIdStr.hashCode;
}

@immutable
class Track {

  const Track({
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
    required this.single,
    required this.noCopyrightRcmd,
    required this.rtype,
    required this.rurl,
    required this.mst,
    required this.cp,
    required this.mv,
    required this.publishTime,
  });

  final String name;
  final int id;
  final int pst;
  final int t;
  final List<Ar> ar;
  final List<dynamic> alia;
  final int pop;
  final int st;
  final String rt;
  final int fee;
  final int v;
  final dynamic crbt;
  final String cf;
  final Al al;
  final int dt;
  final H h;
  final M m;
  final L l;
  final dynamic sq;
  final dynamic hr;
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
  final int single;
  final dynamic noCopyrightRcmd;
  final int rtype;
  final dynamic rurl;
  final int mst;
  final int cp;
  final int mv;
  final int publishTime;

  factory Track.fromJson(Map<String,dynamic> json) => Track(
    name: json['name'].toString(),
    id: json['id'] as int,
    pst: json['pst'] as int,
    t: json['t'] as int,
    ar: (json['ar'] as List? ?? []).map((e) => Ar.fromJson(e as Map<String, dynamic>)).toList(),
    alia: (json['alia'] as List? ?? []).map((e) => e as dynamic).toList(),
    pop: json['pop'] as int,
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
    sq: json['sq'] as dynamic,
    hr: json['hr'] as dynamic,
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
    single: json['single'] as int,
    noCopyrightRcmd: json['noCopyrightRcmd'] as dynamic,
    rtype: json['rtype'] as int,
    rurl: json['rurl'] as dynamic,
    mst: json['mst'] as int,
    cp: json['cp'] as int,
    mv: json['mv'] as int,
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
    'h': h.toJson(),
    'm': m.toJson(),
    'l': l.toJson(),
    'sq': sq,
    'hr': hr,
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
    'single': single,
    'noCopyrightRcmd': noCopyrightRcmd,
    'rtype': rtype,
    'rurl': rurl,
    'mst': mst,
    'cp': cp,
    'mv': mv,
    'publishTime': publishTime
  };

  Track clone() => Track(
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
    h: h.clone(),
    m: m.clone(),
    l: l.clone(),
    sq: sq,
    hr: hr,
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
    single: single,
    noCopyrightRcmd: noCopyrightRcmd,
    rtype: rtype,
    rurl: rurl,
    mst: mst,
    cp: cp,
    mv: mv,
    publishTime: publishTime
  );


  Track copyWith({
    String? name,
    int? id,
    int? pst,
    int? t,
    List<Ar>? ar,
    List<dynamic>? alia,
    int? pop,
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
    dynamic? sq,
    dynamic? hr,
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
    int? single,
    dynamic? noCopyrightRcmd,
    int? rtype,
    dynamic? rurl,
    int? mst,
    int? cp,
    int? mv,
    int? publishTime
  }) => Track(
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
    single: single ?? this.single,
    noCopyrightRcmd: noCopyrightRcmd ?? this.noCopyrightRcmd,
    rtype: rtype ?? this.rtype,
    rurl: rurl ?? this.rurl,
    mst: mst ?? this.mst,
    cp: cp ?? this.cp,
    mv: mv ?? this.mv,
    publishTime: publishTime ?? this.publishTime,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Track && name == other.name && id == other.id && pst == other.pst && t == other.t && ar == other.ar && alia == other.alia && pop == other.pop && st == other.st && rt == other.rt && fee == other.fee && v == other.v && crbt == other.crbt && cf == other.cf && al == other.al && dt == other.dt && h == other.h && m == other.m && l == other.l && sq == other.sq && hr == other.hr && a == other.a && cd == other.cd && no == other.no && rtUrl == other.rtUrl && ftype == other.ftype && rtUrls == other.rtUrls && djId == other.djId && copyright == other.copyright && sId == other.sId && mark == other.mark && originCoverType == other.originCoverType && originSongSimpleData == other.originSongSimpleData && tagPicList == other.tagPicList && resourceState == other.resourceState && version == other.version && songJumpInfo == other.songJumpInfo && entertainmentTags == other.entertainmentTags && single == other.single && noCopyrightRcmd == other.noCopyrightRcmd && rtype == other.rtype && rurl == other.rurl && mst == other.mst && cp == other.cp && mv == other.mv && publishTime == other.publishTime;

  @override
  int get hashCode => name.hashCode ^ id.hashCode ^ pst.hashCode ^ t.hashCode ^ ar.hashCode ^ alia.hashCode ^ pop.hashCode ^ st.hashCode ^ rt.hashCode ^ fee.hashCode ^ v.hashCode ^ crbt.hashCode ^ cf.hashCode ^ al.hashCode ^ dt.hashCode ^ h.hashCode ^ m.hashCode ^ l.hashCode ^ sq.hashCode ^ hr.hashCode ^ a.hashCode ^ cd.hashCode ^ no.hashCode ^ rtUrl.hashCode ^ ftype.hashCode ^ rtUrls.hashCode ^ djId.hashCode ^ copyright.hashCode ^ sId.hashCode ^ mark.hashCode ^ originCoverType.hashCode ^ originSongSimpleData.hashCode ^ tagPicList.hashCode ^ resourceState.hashCode ^ version.hashCode ^ songJumpInfo.hashCode ^ entertainmentTags.hashCode ^ single.hashCode ^ noCopyrightRcmd.hashCode ^ rtype.hashCode ^ rurl.hashCode ^ mst.hashCode ^ cp.hashCode ^ mv.hashCode ^ publishTime.hashCode;
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
  });

  final int br;
  final int fid;
  final int size;
  final int vd;

  factory H.fromJson(Map<String,dynamic> json) => H(
    br: json['br'] as int,
    fid: json['fid'] as int,
    size: json['size'] as int,
    vd: json['vd'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'br': br,
    'fid': fid,
    'size': size,
    'vd': vd
  };

  H clone() => H(
    br: br,
    fid: fid,
    size: size,
    vd: vd
  );


  H copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd
  }) => H(
    br: br ?? this.br,
    fid: fid ?? this.fid,
    size: size ?? this.size,
    vd: vd ?? this.vd,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is H && br == other.br && fid == other.fid && size == other.size && vd == other.vd;

  @override
  int get hashCode => br.hashCode ^ fid.hashCode ^ size.hashCode ^ vd.hashCode;
}

@immutable
class M {

  const M({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
  });

  final int br;
  final int fid;
  final int size;
  final int vd;

  factory M.fromJson(Map<String,dynamic> json) => M(
    br: json['br'] as int,
    fid: json['fid'] as int,
    size: json['size'] as int,
    vd: json['vd'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'br': br,
    'fid': fid,
    'size': size,
    'vd': vd
  };

  M clone() => M(
    br: br,
    fid: fid,
    size: size,
    vd: vd
  );


  M copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd
  }) => M(
    br: br ?? this.br,
    fid: fid ?? this.fid,
    size: size ?? this.size,
    vd: vd ?? this.vd,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is M && br == other.br && fid == other.fid && size == other.size && vd == other.vd;

  @override
  int get hashCode => br.hashCode ^ fid.hashCode ^ size.hashCode ^ vd.hashCode;
}

@immutable
class L {

  const L({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
  });

  final int br;
  final int fid;
  final int size;
  final int vd;

  factory L.fromJson(Map<String,dynamic> json) => L(
    br: json['br'] as int,
    fid: json['fid'] as int,
    size: json['size'] as int,
    vd: json['vd'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'br': br,
    'fid': fid,
    'size': size,
    'vd': vd
  };

  L clone() => L(
    br: br,
    fid: fid,
    size: size,
    vd: vd
  );


  L copyWith({
    int? br,
    int? fid,
    int? size,
    int? vd
  }) => L(
    br: br ?? this.br,
    fid: fid ?? this.fid,
    size: size ?? this.size,
    vd: vd ?? this.vd,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is L && br == other.br && fid == other.fid && size == other.size && vd == other.vd;

  @override
  int get hashCode => br.hashCode ^ fid.hashCode ^ size.hashCode ^ vd.hashCode;
}

@immutable
class TrackId {

  const TrackId({
    required this.id,
    required this.v,
    required this.t,
    required this.at,
    required this.alg,
    required this.uid,
    required this.rcmdReason,
    required this.sc,
    required this.f,
    required this.sr,
  });

  final int id;
  final int v;
  final int t;
  final int at;
  final dynamic alg;
  final int uid;
  final String rcmdReason;
  final dynamic sc;
  final dynamic f;
  final dynamic sr;

  factory TrackId.fromJson(Map<String,dynamic> json) => TrackId(
    id: json['id'] as int,
    v: json['v'] as int,
    t: json['t'] as int,
    at: json['at'] as int,
    alg: json['alg'] as dynamic,
    uid: json['uid'] as int,
    rcmdReason: json['rcmdReason'].toString(),
    sc: json['sc'] as dynamic,
    f: json['f'] as dynamic,
    sr: json['sr'] as dynamic
  );
  
  Map<String, dynamic> toJson() => {
    'id': id,
    'v': v,
    't': t,
    'at': at,
    'alg': alg,
    'uid': uid,
    'rcmdReason': rcmdReason,
    'sc': sc,
    'f': f,
    'sr': sr
  };

  TrackId clone() => TrackId(
    id: id,
    v: v,
    t: t,
    at: at,
    alg: alg,
    uid: uid,
    rcmdReason: rcmdReason,
    sc: sc,
    f: f,
    sr: sr
  );


  TrackId copyWith({
    int? id,
    int? v,
    int? t,
    int? at,
    dynamic? alg,
    int? uid,
    String? rcmdReason,
    dynamic? sc,
    dynamic? f,
    dynamic? sr
  }) => TrackId(
    id: id ?? this.id,
    v: v ?? this.v,
    t: t ?? this.t,
    at: at ?? this.at,
    alg: alg ?? this.alg,
    uid: uid ?? this.uid,
    rcmdReason: rcmdReason ?? this.rcmdReason,
    sc: sc ?? this.sc,
    f: f ?? this.f,
    sr: sr ?? this.sr,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is TrackId && id == other.id && v == other.v && t == other.t && at == other.at && alg == other.alg && uid == other.uid && rcmdReason == other.rcmdReason && sc == other.sc && f == other.f && sr == other.sr;

  @override
  int get hashCode => id.hashCode ^ v.hashCode ^ t.hashCode ^ at.hashCode ^ alg.hashCode ^ uid.hashCode ^ rcmdReason.hashCode ^ sc.hashCode ^ f.hashCode ^ sr.hashCode;
}

@immutable
class Privilege {

  const Privilege({
    required this.id,
    required this.fee,
    required this.payed,
    required this.realPayed,
    required this.st,
    required this.pl,
    required this.dl,
    required this.sp,
    required this.cp,
    required this.subp,
    required this.cs,
    required this.maxbr,
    required this.fl,
    required this.pc,
    required this.toast,
    required this.flag,
    required this.paidBigBang,
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
  final int realPayed;
  final int st;
  final int pl;
  final int dl;
  final int sp;
  final int cp;
  final int subp;
  final bool cs;
  final int maxbr;
  final int fl;
  final dynamic pc;
  final bool toast;
  final int flag;
  final bool paidBigBang;
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
    realPayed: json['realPayed'] as int,
    st: json['st'] as int,
    pl: json['pl'] as int,
    dl: json['dl'] as int,
    sp: json['sp'] as int,
    cp: json['cp'] as int,
    subp: json['subp'] as int,
    cs: json['cs'] as bool,
    maxbr: json['maxbr'] as int,
    fl: json['fl'] as int,
    pc: json['pc'] as dynamic,
    toast: json['toast'] as bool,
    flag: json['flag'] as int,
    paidBigBang: json['paidBigBang'] as bool,
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
    'realPayed': realPayed,
    'st': st,
    'pl': pl,
    'dl': dl,
    'sp': sp,
    'cp': cp,
    'subp': subp,
    'cs': cs,
    'maxbr': maxbr,
    'fl': fl,
    'pc': pc,
    'toast': toast,
    'flag': flag,
    'paidBigBang': paidBigBang,
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
    realPayed: realPayed,
    st: st,
    pl: pl,
    dl: dl,
    sp: sp,
    cp: cp,
    subp: subp,
    cs: cs,
    maxbr: maxbr,
    fl: fl,
    pc: pc,
    toast: toast,
    flag: flag,
    paidBigBang: paidBigBang,
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
    int? realPayed,
    int? st,
    int? pl,
    int? dl,
    int? sp,
    int? cp,
    int? subp,
    bool? cs,
    int? maxbr,
    int? fl,
    dynamic? pc,
    bool? toast,
    int? flag,
    bool? paidBigBang,
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
    realPayed: realPayed ?? this.realPayed,
    st: st ?? this.st,
    pl: pl ?? this.pl,
    dl: dl ?? this.dl,
    sp: sp ?? this.sp,
    cp: cp ?? this.cp,
    subp: subp ?? this.subp,
    cs: cs ?? this.cs,
    maxbr: maxbr ?? this.maxbr,
    fl: fl ?? this.fl,
    pc: pc ?? this.pc,
    toast: toast ?? this.toast,
    flag: flag ?? this.flag,
    paidBigBang: paidBigBang ?? this.paidBigBang,
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
    || other is Privilege && id == other.id && fee == other.fee && payed == other.payed && realPayed == other.realPayed && st == other.st && pl == other.pl && dl == other.dl && sp == other.sp && cp == other.cp && subp == other.subp && cs == other.cs && maxbr == other.maxbr && fl == other.fl && pc == other.pc && toast == other.toast && flag == other.flag && paidBigBang == other.paidBigBang && preSell == other.preSell && playMaxbr == other.playMaxbr && downloadMaxbr == other.downloadMaxbr && maxBrLevel == other.maxBrLevel && playMaxBrLevel == other.playMaxBrLevel && downloadMaxBrLevel == other.downloadMaxBrLevel && plLevel == other.plLevel && dlLevel == other.dlLevel && flLevel == other.flLevel && rscl == other.rscl && freeTrialPrivilege == other.freeTrialPrivilege && chargeInfoList == other.chargeInfoList;

  @override
  int get hashCode => id.hashCode ^ fee.hashCode ^ payed.hashCode ^ realPayed.hashCode ^ st.hashCode ^ pl.hashCode ^ dl.hashCode ^ sp.hashCode ^ cp.hashCode ^ subp.hashCode ^ cs.hashCode ^ maxbr.hashCode ^ fl.hashCode ^ pc.hashCode ^ toast.hashCode ^ flag.hashCode ^ paidBigBang.hashCode ^ preSell.hashCode ^ playMaxbr.hashCode ^ downloadMaxbr.hashCode ^ maxBrLevel.hashCode ^ playMaxBrLevel.hashCode ^ downloadMaxBrLevel.hashCode ^ plLevel.hashCode ^ dlLevel.hashCode ^ flLevel.hashCode ^ rscl.hashCode ^ freeTrialPrivilege.hashCode ^ chargeInfoList.hashCode;
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
