class PhotoEntityList {
  String content;
  String title;
  String image;
  String file;
  bool is_video;

  PhotoEntityList(
      {this.content, this.title, this.image, this.file, this.is_video});

  factory PhotoEntityList.fromJson(Map<String, dynamic> parsedJson) {
    return PhotoEntityList(
        content: parsedJson['content'],
        title: parsedJson['title'],
        file: parsedJson['file'],
        is_video: parsedJson['is_video'],
        image: parsedJson['image']);
  }
}

class FameEntity {
  String content;
  String title;
  String image;

  FameEntity({this.content, this.title, this.image});

  factory FameEntity.fromJson(Map<String, dynamic> parsedJson) {
    return FameEntity(
        content: parsedJson['content'],
        title: parsedJson['title'],
        image: parsedJson['image']);
  }
}

class AboutEntity {
  String image;
  String content;

  AboutEntity({this.image, this.content});

  factory AboutEntity.fromJson(Map<String, dynamic> parsedJson) {
    return AboutEntity(
        content: parsedJson['content'], image: parsedJson['image']);
  }
}

class FameList {
  int count;
  String next;
  String previous;
  List<FameEntity> results;

  factory FameList.fromJson(Map<String, dynamic> parsedJson) {
    List<FameEntity> convert() {
      var list = parsedJson['results'] as List;
      List<FameEntity> imagesList =
          list.map((i) => FameEntity.fromJson(i)).toList();
      return imagesList;
    }

    return FameList(
        count: parsedJson['count'],
        next: parsedJson['next'],
        previous: parsedJson['previous'],
        results: convert());
  }

  FameList({this.count, this.next, this.previous, this.results});
}

class PhotoList {
  int count;
  String next;
  String previous;
  List<PhotoEntityList> results;

  factory PhotoList.fromJson(Map<String, dynamic> parsedJson) {
    List<PhotoEntityList> convert() {
      var list = parsedJson['results'] as List;
      List<PhotoEntityList> imagesList =
          list.map((i) => PhotoEntityList.fromJson(i)).toList();
      return imagesList;
    }

    return PhotoList(
        count: parsedJson['count'],
        next: parsedJson['next'],
        previous: parsedJson['previous'],
        results: convert());
  }

  PhotoList({this.count, this.next, this.previous, this.results});
}

class NewsEntity {
  String url;
  int id;
  String title;
  String content;
  List<ImageEntity> newsImages;

  NewsEntity({this.url, this.id, this.title, this.content, this.newsImages});

  factory NewsEntity.fromJson(Map<String, dynamic> parsedJson) {
    List<ImageEntity> convert() {
      var list = parsedJson['newsImages'] as List;
      List<ImageEntity> imagesList =
          list.map((i) => ImageEntity.fromJson(i)).toList();
      return imagesList;
    }

    return NewsEntity(
        url: parsedJson['url'],
        id: parsedJson['id'],
        title: parsedJson['title'],
        newsImages: convert(),
        content: parsedJson['content']);
  }
}

class ImageEntity {
  String newsImage;

  ImageEntity({this.newsImage});

  factory ImageEntity.fromJson(Map<String, dynamic> parsedJson) {
    return ImageEntity(
      newsImage: parsedJson['image'],
    );
  }
}

class CoachListEntity {
  int count;
  String next;
  String previous;
  List<CoachEntity> results;

  factory CoachListEntity.fromJson(Map<String, dynamic> parsedJson) {
    List<CoachEntity> convert() {
      var list = parsedJson['results'] as List;
      List<CoachEntity> imagesList =
          list.map((i) => CoachEntity.fromJson(i)).toList();
      return imagesList;
    }

    return CoachListEntity(
        count: parsedJson['count'],
        next: parsedJson['next'],
        previous: parsedJson['previous'],
        results: convert());
  }

  CoachListEntity({this.count, this.next, this.previous, this.results});
}

class UserEntity {
  String first_name;
  String last_name;

  factory UserEntity.fromJson(Map<String, dynamic> parsedJson) {
    return UserEntity(
        first_name: parsedJson['first_name'],
        last_name: parsedJson['last_name']);
  }

  UserEntity({this.first_name, this.last_name});
}

class CoachEntity {
  String level;
  String content;
  String image;
  UserEntity user;

  CoachEntity({this.level, this.content, this.image, this.user});

  factory CoachEntity.fromJson(Map<String, dynamic> parsedJson) {
    return CoachEntity(
        level: parsedJson['level'],
        content: parsedJson['content'],
        image: parsedJson['image'],
        user: UserEntity.fromJson(parsedJson['user']));
  }
}

class AboutProgrammerListEntity {
  int count;
  String next;
  String previous;
  List<AboutEntity> results;

  factory AboutProgrammerListEntity.fromJson(Map<String, dynamic> parsedJson) {
    List<AboutEntity> convert() {
      var list = parsedJson['results'] as List;
      List<AboutEntity> imagesList =
          list.map((i) => AboutEntity.fromJson(i)).toList();
      return imagesList;
    }

    return AboutProgrammerListEntity(
        count: parsedJson['count'],
        next: parsedJson['next'],
        previous: parsedJson['previous'],
        results: convert());
  }

  AboutProgrammerListEntity(
      {this.count, this.next, this.previous, this.results});
}

class SocailListEntity {
  int count;
  String next;
  String previous;
  List<SocailEntity> results;

  factory SocailListEntity.fromJson(Map<String, dynamic> parsedJson) {
    List<SocailEntity> convert() {
      var list = parsedJson['results'] as List;
      List<SocailEntity> imagesList =
          list.map((i) => SocailEntity.fromJson(i)).toList();
      return imagesList;
    }

    return SocailListEntity(
        count: parsedJson['count'],
        next: parsedJson['next'],
        previous: parsedJson['previous'],
        results: convert());
  }

  SocailListEntity({this.count, this.next, this.previous, this.results});
}

class SocailEntity {
  String instagram;
  String telegram;
  String phone;
  String email;
  SocailEntity({this.instagram, this.telegram, this.phone, this.email});

  factory SocailEntity.fromJson(Map<String, dynamic> parsedJson) {
    return SocailEntity(
      instagram: parsedJson['instagram'],
      telegram: parsedJson['telegram'],
      phone: parsedJson['phone'],
      email: parsedJson['email'],
    );
  }
}
