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
        image: "http://185.213.166.42:8000" + parsedJson['image']);
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
  String username;

  factory UserEntity.fromJson(Map<String, dynamic> parsedJson) {
    return UserEntity(
        first_name: parsedJson['first_name'],
        username: parsedJson['username'],
        last_name: parsedJson['last_name']);
  }

  UserEntity({this.first_name, this.last_name, this.username});
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

class SendCommentEntity {
  String success;

  SendCommentEntity({this.success});

  factory SendCommentEntity.fromJson(Map<String, dynamic> parsedJson) {
    return SendCommentEntity(
      success: parsedJson['success'],
    );
  }
}

class SendPhoneEntity {
  int pin;

  SendPhoneEntity({this.pin});

  factory SendPhoneEntity.fromJson(Map<String, dynamic> parsedJson) {
    return SendPhoneEntity(
      pin: parsedJson['pin'],
    );
  }
}

class SendCodEntity {
  String token;
  bool is_registered;
  bool success;

  SendCodEntity({this.token, this.is_registered, this.success});

  factory SendCodEntity.fromJson(Map<String, dynamic> parsedJson) {
    return SendCodEntity(
      token: parsedJson['token'],
      is_registered: parsedJson['is_registered'],
      success: parsedJson['success'],
    );
  }
}

class RegisterEntity {
  String username;
  String first_name;
  String last_name;
  StudentEntity student;

  RegisterEntity(
      {this.username, this.first_name, this.last_name, this.student});

  factory RegisterEntity.fromJson(Map<String, dynamic> parsedJson) {
    return RegisterEntity(
      first_name: parsedJson['first_name'],
      last_name: parsedJson['last_name'],
      student: StudentEntity.fromJson(parsedJson['player']),
    );
  }
}

class ProfileEntity {
  String mom_phone;
  String dad_phone;
  String position;
  String home_phone;
  StudentNameEntity user;

  ProfileEntity(
      {this.mom_phone,
      this.dad_phone,
      this.user,
      this.home_phone,
      this.position});

  factory ProfileEntity.fromJson(Map<String, dynamic> parsedJson) {
    return ProfileEntity(
      mom_phone: parsedJson['mom_phone'],
      dad_phone: parsedJson['dad_phone'],
      home_phone: parsedJson['home_phone'],
      position: parsedJson['position'],
      user: StudentNameEntity.fromJson(parsedJson['user']),
    );
  }
}

class StudentEntity {
  String national_code;
  String school;
  String school_trainer;
  String former_club;
  String dad_phone;
  String mom_phone;
  String home_phone;
  String dad_work;

  StudentEntity(
      {this.national_code,
      this.school,
      this.school_trainer,
      this.former_club,
      this.dad_phone,
      this.mom_phone,
      this.home_phone,
      this.dad_work,
      this.address,
      this.disease});

  String address;
  String disease;

  factory StudentEntity.fromJson(Map<String, dynamic> parsedJson) {
    return StudentEntity(
      national_code: parsedJson['national_code'],
      school: parsedJson['school'],
      school_trainer: parsedJson['school_trainer'],
      former_club: parsedJson['former_club'],
      dad_phone: parsedJson['dad_phone'],
      mom_phone: parsedJson['mom_phone'],
      home_phone: parsedJson['home_phone'],
      dad_work: parsedJson['dad_work'],
      address: parsedJson['address'],
      disease: parsedJson['disease'],
    );
  }
}

class StudentNameEntity {
  String username;
  String first_name;
  String last_name;

  StudentNameEntity({this.username, this.first_name, this.last_name});

  factory StudentNameEntity.fromJson(Map<String, dynamic> parsedJson) {
    return StudentNameEntity(
      first_name: parsedJson['first_name'],
      last_name: parsedJson['last_name'],
      username: parsedJson['username'],
    );
  }
}

class PresenceEntity {
  int absence;
  bool success;
  int presence;

  PresenceEntity({this.absence, this.success, this.presence});

  factory PresenceEntity.fromJson(Map<String, dynamic> parsedJson) {
    return PresenceEntity(
      presence: parsedJson['presence'],
      success: parsedJson['success'],
      absence: parsedJson['absence'],
    );
  }
}

class CommerceList {

  String title;
  bool is_income;
  int price;
  String date;
  CommerceList({this.date,this.title, this.is_income, this.price});
  factory CommerceList.fromJson(Map<String, dynamic> parsedJson) {
    String convertDate(String date) {
      String year = date.substring(0, 4);
      String month = date.substring(4, 6);
      String day = date.substring(6, 8);
      return year + "/" + month + "/" + day;
    }
    return CommerceList(
      is_income: parsedJson['is_income'],
      price: parsedJson['price'],
      title: parsedJson['title'],
      date : convertDate(parsedJson['date']),
    );
  }
}

class CheckEntity {
  String name;
  String number;
  int id;
  int price;
  String date;
  bool is_passed;

  CheckEntity(
      {this.name, this.number, this.price, this.date, this.is_passed, this.id});

  factory CheckEntity.fromJson(Map<String, dynamic> parsedJson) {
    return CheckEntity(
      name: parsedJson['name'],
      price: parsedJson['price'],
      number: parsedJson['number'],
      id: parsedJson['id'],
      date: parsedJson['date'],
      is_passed: parsedJson['is_passed'],
    );
  }
}

class CheckCreateEntity {
  String number;
  String user;
  String name;
  int price;

  CheckCreateEntity({this.number, this.user, this.name, this.price});

  factory CheckCreateEntity.fromJson(Map<String, dynamic> parsedJson) {
    return CheckCreateEntity(
      name: parsedJson['name'],
      price: parsedJson['price'],
      number: parsedJson['number'],
      user: parsedJson['user'],
    );
  }
}

class CheckPassEntity {
  bool success;

  CheckPassEntity({this.success});

  factory CheckPassEntity.fromJson(Map<String, dynamic> parsedJson) {
    return CheckPassEntity(
      success: parsedJson['success'],
    );
  }
}

class CommerceListEntity {
  int count;
  String next;
  String previous;
  List<CommerceList> results;

  factory CommerceListEntity.fromJson(Map<String, dynamic> parsedJson) {
    List<CommerceList> convert() {
      var list = parsedJson['results'] as List;
      List<CommerceList> imagesList =
          list.map((i) => CommerceList.fromJson(i)).toList();
      return imagesList;
    }

    return CommerceListEntity(
        count: parsedJson['count'],
        next: parsedJson['next'],
        previous: parsedJson['previous'],
        results: convert());
  }

  CommerceListEntity({this.count, this.next, this.previous, this.results});
}

class StudentList {
  List<StudentNameEntity> students;

  factory StudentList.fromJson(Map<String, dynamic> parsedJson) {
    List<StudentNameEntity> convert() {
      var list = parsedJson['players'] as List;
      List<StudentNameEntity> imagesList =
          list.map((i) => StudentNameEntity.fromJson(i)).toList();
      return imagesList;
    }

    return StudentList(students: convert());
  }

  StudentList({this.students});
}

class CheckListEntity {
  int count;
  String next;
  String previous;
  List<CheckEntity> results;

  factory CheckListEntity.fromJson(Map<String, dynamic> parsedJson) {
    List<CheckEntity> convert() {
      var list = parsedJson['results'] as List;
      List<CheckEntity> imagesList =
          list.map((i) => CheckEntity.fromJson(i)).toList();
      return imagesList;
    }

    return CheckListEntity(
        count: parsedJson['count'],
        next: parsedJson['next'],
        previous: parsedJson['previous'],
        results: convert());
  }

  CheckListEntity({this.count, this.next, this.previous, this.results});
}

class ExerciseEntity {
  String title;
  String subtitle;
  String time;
  String description;
  int color;

  ExerciseEntity(
      {this.title, this.subtitle, this.time, this.color, this.description});

  factory ExerciseEntity.fromJson(Map<String, dynamic> parsedJson) {
    return ExerciseEntity(
      title: parsedJson['title'],
      subtitle: parsedJson['subtitle'],
      time: parsedJson['time'],
      description: parsedJson['description'],
      color: parsedJson['color'],
    );
  }
}

class ExerciseListEntity {
  int count;
  String next;
  String previous;
  List<ExerciseEntity> results;

  factory ExerciseListEntity.fromJson(Map<String, dynamic> parsedJson) {
    List<ExerciseEntity> convert() {
      var list = parsedJson['results'] as List;
      List<ExerciseEntity> imagesList =
          list.map((i) => ExerciseEntity.fromJson(i)).toList();
      return imagesList;
    }

    return ExerciseListEntity(
        count: parsedJson['count'],
        next: parsedJson['next'],
        previous: parsedJson['previous'],
        results: convert());
  }

  ExerciseListEntity({this.count, this.next, this.previous, this.results});
}

class PeriodEntity {
  String end_date;
  String first_date;
  String name;
  int id;
  int price;

  PeriodEntity(
      {this.end_date, this.first_date, this.name, this.id, this.price});

  factory PeriodEntity.fromJson(Map<String, dynamic> parsedJson) {
    return PeriodEntity(
      end_date: parsedJson['end_date'],
      first_date: parsedJson['first_date'],
      name: parsedJson['name'],
      id: parsedJson['id'],
      price: parsedJson['price'],
    );
  }
}

class PeriodListEntity {
  int count;
  String next;
  String previous;
  List<PeriodEntity> results;

  factory PeriodListEntity.fromJson(Map<String, dynamic> parsedJson) {
    List<PeriodEntity> convert() {
      var list = parsedJson['results'] as List;
      List<PeriodEntity> imagesList =
          list.map((i) => PeriodEntity.fromJson(i)).toList();
      return imagesList;
    }

    return PeriodListEntity(
        count: parsedJson['count'],
        next: parsedJson['next'],
        previous: parsedJson['previous'],
        results: convert());
  }

  PeriodListEntity({this.count, this.next, this.previous, this.results});
}

class ExerciseUserListEntity {
  List<CheckEntity> checks;

  factory ExerciseUserListEntity.fromJson(Map<String, dynamic> parsedJson) {
    List<CheckEntity> convert() {
      var list = parsedJson['checks'] as List;
      List<CheckEntity> imagesList =
          list.map((i) => CheckEntity.fromJson(i)).toList();
      return imagesList;
    }

    return ExerciseUserListEntity(checks: convert());
  }

  ExerciseUserListEntity({this.checks});
}

class CategoryItem {
  final int id;
  final String title;

  CategoryItem({
    this.id,
    this.title,
  });

  factory CategoryItem.fromJson(Map<String, dynamic> json) => new CategoryItem(
        id: json["id"],
        title: json["title"],
      );
}

class CategoryItemList {
  List<CategoryItem> categoryList;

  CategoryItemList({this.categoryList});

  factory CategoryItemList.fromJson(parsedJson) {
    List<CategoryItem> convert() {
      var list = parsedJson as List;
      List<CategoryItem> categoryList =
          list.map((i) => CategoryItem.fromJson(i)).toList();
      return categoryList;
    }

    return CategoryItemList(categoryList: convert());
  }
}

class ShowMonthActivityEntity {
  int id;
  String date;
  int price;

  ShowMonthActivityEntity({this.id, this.date, this.price});

  factory ShowMonthActivityEntity.fromJson(Map<String, dynamic> json) =>
      new ShowMonthActivityEntity(
        id: json["id"],
        date: json["date"],
        price: json["price"],
      );
}

class ShowMonthActivityList {
  List<ShowMonthActivityEntity> monthActivty;

  ShowMonthActivityList({this.monthActivty});

  factory ShowMonthActivityList.fromJson(parsedJson) {
    List<ShowMonthActivityEntity> convert() {
      var list = parsedJson as List;
      List<ShowMonthActivityEntity> categoryList =
          list.map((i) => ShowMonthActivityEntity.fromJson(i)).toList();
      return categoryList;
    }

    return ShowMonthActivityList(monthActivty: convert());
  }
}

class MonthAttendanceEntity {
  int absence;

  //String date;
  int presence;

  MonthAttendanceEntity({this.absence, this.presence});

  factory MonthAttendanceEntity.fromJson(Map<String, dynamic> json) =>
      new MonthAttendanceEntity(
        absence: json["absence"],
        //    date: json["date"],
        presence: json["presence"],
      );
}

class CommerceTotalEntity {
  int inCome;
  int outCome;

  CommerceTotalEntity({this.inCome, this.outCome});

  factory CommerceTotalEntity.fromJson(Map<String, dynamic> json) =>
      new CommerceTotalEntity(
        inCome: json["income_commerce"],
        outCome: json["outgo_commerce"],
      );
}

class FeeEntity {
  int pay;
  int fee;
  bool success;

  FeeEntity({this.pay, this.fee,this.success});

  factory FeeEntity.fromJson(Map<String, dynamic> json) => FeeEntity(
    fee: json["fee"],
    pay: json["pay"],
    success : json["success"],
  );
}
class CheckRegentCode{
  bool success;

  CheckRegentCode({this.success});

  factory CheckRegentCode.fromJson(Map<String,dynamic> json)=>CheckRegentCode(
    success: json["success"],
  );

}