import 'package:flutter/foundation.dart';

@immutable
class Login {

  const Login({
    required this.loginType,
    required this.code,
    required this.account,
    required this.token,
    required this.profile,
  });

  final int loginType;
  final int code;
  final Account account;
  final String token;
  final Profile profile;

  factory Login.fromJson(Map<String,dynamic> json) => Login(
    loginType: json['loginType'] as int,
    code: json['code'] as int,
    account: Account.fromJson(json['account'] as Map<String, dynamic>),
    token: json['token'].toString(),
    profile: Profile.fromJson(json['profile'] as Map<String, dynamic>)
  );
  
  Map<String, dynamic> toJson() => {
    'loginType': loginType,
    'code': code,
    'account': account.toJson(),
    'token': token,
    'profile': profile.toJson()
  };

  Login clone() => Login(
    loginType: loginType,
    code: code,
    account: account.clone(),
    token: token,
    profile: profile.clone()
  );


  Login copyWith({
    int? loginType,
    int? code,
    Account? account,
    String? token,
    Profile? profile
  }) => Login(
    loginType: loginType ?? this.loginType,
    code: code ?? this.code,
    account: account ?? this.account,
    token: token ?? this.token,
    profile: profile ?? this.profile,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Login && loginType == other.loginType && code == other.code && account == other.account && token == other.token && profile == other.profile;

  @override
  int get hashCode => loginType.hashCode ^ code.hashCode ^ account.hashCode ^ token.hashCode ^ profile.hashCode;
}

@immutable
class Account {

  const Account({
    required this.id,
    required this.userName,
    required this.type,
    required this.status,
    required this.whitelistAuthority,
    required this.createTime,
    required this.salt,
    required this.tokenVersion,
    required this.ban,
    required this.baoyueVersion,
    required this.donateVersion,
    required this.vipType,
    required this.viptypeVersion,
    required this.uninitialized,
    required this.anonimousUser,
  });

  final int id;
  final String userName;
  final int type;
  final int status;
  final int whitelistAuthority;
  final int createTime;
  final String salt;
  final int tokenVersion;
  final int ban;
  final int baoyueVersion;
  final int donateVersion;
  final int vipType;
  final int viptypeVersion;
  final bool uninitialized;
  final bool anonimousUser;

  factory Account.fromJson(Map<String,dynamic> json) => Account(
    id: json['id'] as int,
    userName: json['userName'].toString(),
    type: json['type'] as int,
    status: json['status'] as int,
    whitelistAuthority: json['whitelistAuthority'] as int,
    createTime: json['createTime'] as int,
    salt: json['salt'].toString(),
    tokenVersion: json['tokenVersion'] as int,
    ban: json['ban'] as int,
    baoyueVersion: json['baoyueVersion'] as int,
    donateVersion: json['donateVersion'] as int,
    vipType: json['vipType'] as int,
    viptypeVersion: json['viptypeVersion'] as int,
    uninitialized: json['uninitialized'] as bool,
    anonimousUser: json['anonimousUser'] as bool
  );
  
  Map<String, dynamic> toJson() => {
    'id': id,
    'userName': userName,
    'type': type,
    'status': status,
    'whitelistAuthority': whitelistAuthority,
    'createTime': createTime,
    'salt': salt,
    'tokenVersion': tokenVersion,
    'ban': ban,
    'baoyueVersion': baoyueVersion,
    'donateVersion': donateVersion,
    'vipType': vipType,
    'viptypeVersion': viptypeVersion,
    'uninitialized': uninitialized,
    'anonimousUser': anonimousUser
  };

  Account clone() => Account(
    id: id,
    userName: userName,
    type: type,
    status: status,
    whitelistAuthority: whitelistAuthority,
    createTime: createTime,
    salt: salt,
    tokenVersion: tokenVersion,
    ban: ban,
    baoyueVersion: baoyueVersion,
    donateVersion: donateVersion,
    vipType: vipType,
    viptypeVersion: viptypeVersion,
    uninitialized: uninitialized,
    anonimousUser: anonimousUser
  );


  Account copyWith({
    int? id,
    String? userName,
    int? type,
    int? status,
    int? whitelistAuthority,
    int? createTime,
    String? salt,
    int? tokenVersion,
    int? ban,
    int? baoyueVersion,
    int? donateVersion,
    int? vipType,
    int? viptypeVersion,
    bool? uninitialized,
    bool? anonimousUser
  }) => Account(
    id: id ?? this.id,
    userName: userName ?? this.userName,
    type: type ?? this.type,
    status: status ?? this.status,
    whitelistAuthority: whitelistAuthority ?? this.whitelistAuthority,
    createTime: createTime ?? this.createTime,
    salt: salt ?? this.salt,
    tokenVersion: tokenVersion ?? this.tokenVersion,
    ban: ban ?? this.ban,
    baoyueVersion: baoyueVersion ?? this.baoyueVersion,
    donateVersion: donateVersion ?? this.donateVersion,
    vipType: vipType ?? this.vipType,
    viptypeVersion: viptypeVersion ?? this.viptypeVersion,
    uninitialized: uninitialized ?? this.uninitialized,
    anonimousUser: anonimousUser ?? this.anonimousUser,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Account && id == other.id && userName == other.userName && type == other.type && status == other.status && whitelistAuthority == other.whitelistAuthority && createTime == other.createTime && salt == other.salt && tokenVersion == other.tokenVersion && ban == other.ban && baoyueVersion == other.baoyueVersion && donateVersion == other.donateVersion && vipType == other.vipType && viptypeVersion == other.viptypeVersion && uninitialized == other.uninitialized && anonimousUser == other.anonimousUser;

  @override
  int get hashCode => id.hashCode ^ userName.hashCode ^ type.hashCode ^ status.hashCode ^ whitelistAuthority.hashCode ^ createTime.hashCode ^ salt.hashCode ^ tokenVersion.hashCode ^ ban.hashCode ^ baoyueVersion.hashCode ^ donateVersion.hashCode ^ vipType.hashCode ^ viptypeVersion.hashCode ^ uninitialized.hashCode ^ anonimousUser.hashCode;
}

@immutable
class Profile {

  const Profile({
    required this.avatarImgIdStr,
    required this.backgroundImgIdStr,
    required this.followed,
    required this.backgroundUrl,
    required this.mutual,
    required this.remarkName,
    required this.defaultAvatar,
    required this.userType,
    required this.vipType,
    required this.authStatus,
    required this.djStatus,
    required this.detailDescription,
    required this.expertTags,
    required this.accountStatus,
    required this.nickname,
    required this.birthday,
    required this.gender,
    required this.province,
    required this.city,
    required this.avatarImgId,
    required this.backgroundImgId,
    required this.avatarUrl,
    required this.userId,
    required this.description,
    required this.signature,
    required this.authority,
    required this.followeds,
    required this.follows,
    required this.eventCount,
    required this.avatarDetail,
    required this.playlistCount,
    required this.playlistBeSubscribedCount,
  });

  final String avatarImgIdStr;
  final String backgroundImgIdStr;
  final bool followed;
  final String backgroundUrl;
  final bool mutual;
  final dynamic remarkName;
  final bool defaultAvatar;
  final int userType;
  final int vipType;
  final int authStatus;
  final int djStatus;
  final String detailDescription;
  final dynamic expertTags;
  final int accountStatus;
  final String nickname;
  final int birthday;
  final int gender;
  final int province;
  final int city;
  final int avatarImgId;
  final int backgroundImgId;
  final String avatarUrl;
  final int userId;
  final String description;
  final String signature;
  final int authority;
  final int followeds;
  final int follows;
  final int eventCount;
  final dynamic avatarDetail;
  final int playlistCount;
  final int playlistBeSubscribedCount;

  factory Profile.fromJson(Map<String,dynamic> json) => Profile(
    avatarImgIdStr: json['avatarImgIdStr'].toString(),
    backgroundImgIdStr: json['backgroundImgIdStr'].toString(),
    followed: json['followed'] as bool,
    backgroundUrl: json['backgroundUrl'].toString(),
    mutual: json['mutual'] as bool,
    remarkName: json['remarkName'] as dynamic,
    defaultAvatar: json['defaultAvatar'] as bool,
    userType: json['userType'] as int,
    vipType: json['vipType'] as int,
    authStatus: json['authStatus'] as int,
    djStatus: json['djStatus'] as int,
    detailDescription: json['detailDescription'].toString(),
    expertTags: json['expertTags'] as dynamic,
    accountStatus: json['accountStatus'] as int,
    nickname: json['nickname'].toString(),
    birthday: json['birthday'] as int,
    gender: json['gender'] as int,
    province: json['province'] as int,
    city: json['city'] as int,
    avatarImgId: json['avatarImgId'] as int,
    backgroundImgId: json['backgroundImgId'] as int,
    avatarUrl: json['avatarUrl'].toString(),
    userId: json['userId'] as int,
    description: json['description'].toString(),
    signature: json['signature'].toString(),
    authority: json['authority'] as int,
    followeds: json['followeds'] as int,
    follows: json['follows'] as int,
    eventCount: json['eventCount'] as int,
    avatarDetail: json['avatarDetail'] as dynamic,
    playlistCount: json['playlistCount'] as int,
    playlistBeSubscribedCount: json['playlistBeSubscribedCount'] as int
  );
  
  Map<String, dynamic> toJson() => {
    'avatarImgIdStr': avatarImgIdStr,
    'backgroundImgIdStr': backgroundImgIdStr,
    'followed': followed,
    'backgroundUrl': backgroundUrl,
    'mutual': mutual,
    'remarkName': remarkName,
    'defaultAvatar': defaultAvatar,
    'userType': userType,
    'vipType': vipType,
    'authStatus': authStatus,
    'djStatus': djStatus,
    'detailDescription': detailDescription,
    'expertTags': expertTags,
    'accountStatus': accountStatus,
    'nickname': nickname,
    'birthday': birthday,
    'gender': gender,
    'province': province,
    'city': city,
    'avatarImgId': avatarImgId,
    'backgroundImgId': backgroundImgId,
    'avatarUrl': avatarUrl,
    'userId': userId,
    'description': description,
    'signature': signature,
    'authority': authority,
    'followeds': followeds,
    'follows': follows,
    'eventCount': eventCount,
    'avatarDetail': avatarDetail,
    'playlistCount': playlistCount,
    'playlistBeSubscribedCount': playlistBeSubscribedCount
  };

  Profile clone() => Profile(
    avatarImgIdStr: avatarImgIdStr,
    backgroundImgIdStr: backgroundImgIdStr,
    followed: followed,
    backgroundUrl: backgroundUrl,
    mutual: mutual,
    remarkName: remarkName,
    defaultAvatar: defaultAvatar,
    userType: userType,
    vipType: vipType,
    authStatus: authStatus,
    djStatus: djStatus,
    detailDescription: detailDescription,
    expertTags: expertTags,
    accountStatus: accountStatus,
    nickname: nickname,
    birthday: birthday,
    gender: gender,
    province: province,
    city: city,
    avatarImgId: avatarImgId,
    backgroundImgId: backgroundImgId,
    avatarUrl: avatarUrl,
    userId: userId,
    description: description,
    signature: signature,
    authority: authority,
    followeds: followeds,
    follows: follows,
    eventCount: eventCount,
    avatarDetail: avatarDetail,
    playlistCount: playlistCount,
    playlistBeSubscribedCount: playlistBeSubscribedCount
  );


  Profile copyWith({
    String? avatarImgIdStr,
    String? backgroundImgIdStr,
    bool? followed,
    String? backgroundUrl,
    bool? mutual,
    dynamic? remarkName,
    bool? defaultAvatar,
    int? userType,
    int? vipType,
    int? authStatus,
    int? djStatus,
    String? detailDescription,
    dynamic? expertTags,
    int? accountStatus,
    String? nickname,
    int? birthday,
    int? gender,
    int? province,
    int? city,
    int? avatarImgId,
    int? backgroundImgId,
    String? avatarUrl,
    int? userId,
    String? description,
    String? signature,
    int? authority,
    int? followeds,
    int? follows,
    int? eventCount,
    dynamic? avatarDetail,
    int? playlistCount,
    int? playlistBeSubscribedCount
  }) => Profile(
    avatarImgIdStr: avatarImgIdStr ?? this.avatarImgIdStr,
    backgroundImgIdStr: backgroundImgIdStr ?? this.backgroundImgIdStr,
    followed: followed ?? this.followed,
    backgroundUrl: backgroundUrl ?? this.backgroundUrl,
    mutual: mutual ?? this.mutual,
    remarkName: remarkName ?? this.remarkName,
    defaultAvatar: defaultAvatar ?? this.defaultAvatar,
    userType: userType ?? this.userType,
    vipType: vipType ?? this.vipType,
    authStatus: authStatus ?? this.authStatus,
    djStatus: djStatus ?? this.djStatus,
    detailDescription: detailDescription ?? this.detailDescription,
    expertTags: expertTags ?? this.expertTags,
    accountStatus: accountStatus ?? this.accountStatus,
    nickname: nickname ?? this.nickname,
    birthday: birthday ?? this.birthday,
    gender: gender ?? this.gender,
    province: province ?? this.province,
    city: city ?? this.city,
    avatarImgId: avatarImgId ?? this.avatarImgId,
    backgroundImgId: backgroundImgId ?? this.backgroundImgId,
    avatarUrl: avatarUrl ?? this.avatarUrl,
    userId: userId ?? this.userId,
    description: description ?? this.description,
    signature: signature ?? this.signature,
    authority: authority ?? this.authority,
    followeds: followeds ?? this.followeds,
    follows: follows ?? this.follows,
    eventCount: eventCount ?? this.eventCount,
    avatarDetail: avatarDetail ?? this.avatarDetail,
    playlistCount: playlistCount ?? this.playlistCount,
    playlistBeSubscribedCount: playlistBeSubscribedCount ?? this.playlistBeSubscribedCount,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is Profile && avatarImgIdStr == other.avatarImgIdStr && backgroundImgIdStr == other.backgroundImgIdStr && followed == other.followed && backgroundUrl == other.backgroundUrl && mutual == other.mutual && remarkName == other.remarkName && defaultAvatar == other.defaultAvatar && userType == other.userType && vipType == other.vipType && authStatus == other.authStatus && djStatus == other.djStatus && detailDescription == other.detailDescription  && expertTags == other.expertTags && accountStatus == other.accountStatus && nickname == other.nickname && birthday == other.birthday && gender == other.gender && province == other.province && city == other.city && avatarImgId == other.avatarImgId && backgroundImgId == other.backgroundImgId && avatarUrl == other.avatarUrl && userId == other.userId && description == other.description && signature == other.signature && authority == other.authority && followeds == other.followeds && follows == other.follows && eventCount == other.eventCount && avatarDetail == other.avatarDetail && playlistCount == other.playlistCount && playlistBeSubscribedCount == other.playlistBeSubscribedCount;

  @override
  int get hashCode => avatarImgIdStr.hashCode ^ backgroundImgIdStr.hashCode ^ followed.hashCode ^ backgroundUrl.hashCode ^ mutual.hashCode ^ remarkName.hashCode ^ defaultAvatar.hashCode ^ userType.hashCode ^ vipType.hashCode ^ authStatus.hashCode ^ djStatus.hashCode ^ detailDescription.hashCode ^  expertTags.hashCode ^ accountStatus.hashCode ^ nickname.hashCode ^ birthday.hashCode ^ gender.hashCode ^ province.hashCode ^ city.hashCode ^ avatarImgId.hashCode ^ backgroundImgId.hashCode ^ avatarUrl.hashCode ^ userId.hashCode ^ description.hashCode ^ signature.hashCode ^ authority.hashCode ^ followeds.hashCode ^ follows.hashCode ^ eventCount.hashCode ^ avatarDetail.hashCode ^ playlistCount.hashCode ^ playlistBeSubscribedCount.hashCode;
}