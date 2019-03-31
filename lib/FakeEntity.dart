import 'package:club_manager/entity/cv_entity.dart';
import 'package:club_manager/entity/honors_entity.dart';
import 'package:club_manager/entity/photograph.dart';
import 'package:club_manager/entity/news_entity.dart';
import 'package:club_manager/widgets/Exercise.dart';
import 'package:flutter/material.dart';
import 'package:club_manager/pages/support/serverAbout.dart';

class FakeData {
  static String appNameFarsi = "مدرسه فوتبال";
  static String des = "ورزش خودتان را مدیریت کنید";
  static String coachLogo = '';
  static String newsLogo =
      'https://previews.123rf.com/images/dvolkovkir1980/dvolkovkir19801702/dvolkovkir1980170200008/72399951-speaker-in-hand-speaker-megaphone-flat-design-vector-illustration-vector.jpg';
  static String galleryLogo =
      'https://images-na.ssl-images-amazon.com/images/I/61F-Epj6A9L._SX569_.jpg';
  static String honorsLogo =
      'http://www.dailyadvent.com/wp-content/uploads/2018/07/Fc-Barcelona.jpg';
  static String news =
      "https://images.unsplash.com/photo-1483030096298-4ca126b58199?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80";
  static String loginUrl =
      "http://www.sclance.com/pngs/football-stadium-png/football_stadium_png_524482.png";
  static String callUs =
      "http://stadiumdb.com/pictures/stadiums/irn/imam_reza_stadium/imam_reza_stadium02.jpg";
  static Map<String, List<Photograph>> fakeGallery = map();
  static String srcImageExercise =
      'http://www.knowhowsoccer.com/wp-content/uploads/2015/06/specific_exercise_how_to_become_soccer_fit-2.jpg';
  static String logo =
      "https://upload.wikimedia.org/wikipedia/en/5/52/Padideh_Shahr-e_Khodrou_logo.png";
  static String companyName = "پدیده";
  static String companyDetail = "باشگاه فوتبال پدیده در سال (۱۳۹۲ خورشیدی) - (۲۰۱۳ میلادی) با خرید امتیاز باشگاه فوتبال مس سرچشمه تأسیس و در مسابقات لیگ آزادگان شرکت کرد. "
      "باشگاه پدیده با قهرمانی در گروه الف لیگ آزادگان فصل ۹۳–۱۳۹۲ به لیگ برتر ایران صعود کرد. "
      "در خرداد ۱۳۹۳ به پاس حمایت و همراهی مردم خراسان با این تیم جهت راهیابی به لیگ برتر خلیج فارس، نام این تیم از «پدیده مشهد» به «پدیده خراسان» تغییر کرد. "
      "باشگاه پدیده خراسان در پایان هفته ششم لیگ چهاردهم که اولین حضور این تیم در لیگ برتر خلیج فارس است تنها تیم بدون شکست مسابقات باقی ماند و در رده سوم لیگ قرار گرفت."
      "در پایان هفته ششم لیگ برتر پدیده مشهد بهترین تیم و علیرضا مرزبان مربی تیم به عنوان بهترین مربی انتخاب شد. "
      "در لیگ برتر سال ۱۳۹۵–۱۳۹۶ در حالی که پدیده داشت به همراه پرسپولیس و پارس جنوبی برای مقام نخست (در هفته‌های میانی فصل) می‌جنگید با پیروزی ۲–۰ مقابل استقلال، باعث استعفاء سرمربی این تیم شد. "
      "اما در نیم فصل اول لیگ هجدهم پدیده با سرمربیگری یحیی گل‌محمدی توانست نتایج قابل قبولی کسب کند و در پایان نیم فصل در جایگاه دوم جدول رده‌بندی قرار گرفت. اما شرکت پدیده در اداره امور باشگاه مشکلاتی داشت و سرانجام پس‌از کش و قوس‌های فراوان و با همکاری مسئولان استانی در سال ۱۳۹۷ سهام باشگاه پدیده به شرکت شهرخودرو با مالکیت فرهاد حمیداوی منتقل شد";
  static String programmerName = "برنامه نویسان";
  static String programmerDetail = "درباره برنامه نویسان";
  static String programmerLogo = "";

  static List<componnent> components = [
    componnent(
      title: 'تلفن',
      subtitle: '091**********',
      iconData: Icons.phone,
    ),
    componnent(
      iconData: Icons.photo_camera,
      title: 'اینستاگرام',
      subtitle: '@padidehFc',
    ),
    componnent(
        iconData: Icons.email, title: "ایمیل", subtitle: "*********@gmail.com"),
    componnent(
      iconData: Icons.send,
      title: "تلگرام",
      subtitle: '@shahrkhodrou_fc',
    ),
  ];

  static List<componnent> contactProgrammer = [
    componnent(
      title: 'تلفن',
      subtitle: '091**********',
      iconData: Icons.phone,
    ),
    componnent(
      iconData: Icons.photo_camera,
      title: 'اینستاگرام',
      subtitle: '@padidehFc',
    ),
    componnent(
        iconData: Icons.email, title: "ایمیل", subtitle: "*********@gmail.com"),
    componnent(
      iconData: Icons.send,
      title: "تلگرام",
      subtitle: '@shahrkhodrou_fc',
    ),
  ];

  static List<Exercise> tasks = [
    Exercise(
        title: "تمرین بدنسازی",
        subtitle: "همه سنین",
        time: "بظ۵",
        color: Colors.orange,
        completed: false),
    Exercise(
        title: "نرمش صبحگاهی",
        subtitle: "زیر ۱۲ سال",
        time: "۷قظ",
        color: Colors.cyan,
        completed: true),
    Exercise(
        title: "تمرین دروازه بانان",
        subtitle: "دست کش فراموش نشود",
        time: "۲بظ",
        color: Colors.pink,
        completed: false),
    Exercise(
        title: "تمرین بدنسازی",
        subtitle: "همه سنین",
        time: "بظ۵",
        color: Colors.orange,
        completed: false),
    Exercise(
        title: "نرمش صبحگاهی",
        subtitle: "زیر ۱۲ سال",
        time: "۷قظ",
        color: Colors.cyan,
        completed: true),
    Exercise(
        title: "تمرین دروازه بانان",
        subtitle: "دست کش فراموش نشود",
        time: "۲بظ",
        color: Colors.pink,
        completed: false),
    Exercise(
        title: "تمرین بدنسازی",
        subtitle: "همه سنین",
        time: "بظ۵",
        color: Colors.orange,
        completed: false),
    Exercise(
        title: "نرمش صبحگاهی",
        subtitle: "زیر ۱۲ سال",
        time: "۷قظ",
        color: Colors.cyan,
        completed: true),
    Exercise(
        title: "تمرین دروازه بانان",
        subtitle: "دست کش فراموش نشود",
        time: "۲بظ",
        color: Colors.pink,
        completed: false),
    Exercise(
        title: "تمرین بدنسازی",
        subtitle: "همه سنین",
        time: "بظ۵",
        color: Colors.orange,
        completed: false),
    Exercise(
        title: "نرمش صبحگاهی",
        subtitle: "زیر ۱۲ سال",
        time: "۷قظ",
        color: Colors.cyan,
        completed: true),
    Exercise(
        title: "تمرین دروازه بانان",
        subtitle: "دست کش فراموش نشود",
        time: "۲بظ",
        color: Colors.pink,
        completed: false),
    Exercise(
        title: "تمرین بدنسازی",
        subtitle: "همه سنین",
        time: "بظ۵",
        color: Colors.orange,
        completed: false),
    Exercise(
        title: "نرمش صبحگاهی",
        subtitle: "زیر ۱۲ سال",
        time: "۷قظ",
        color: Colors.cyan,
        completed: true),
    Exercise(
        title: "تمرین دروازه بانان",
        subtitle: "دست کش فراموش نشود",
        time: "۲بظ",
        color: Colors.pink,
        completed: false),
    Exercise(
        title: "تمرین بدنسازی",
        subtitle: "همه سنین",
        time: "بظ۵",
        color: Colors.orange,
        completed: false),
    Exercise(
        title: "نرمش صبحگاهی",
        subtitle: "زیر ۱۲ سال",
        time: "۷قظ",
        color: Colors.cyan,
        completed: true),
    Exercise(
        title: "تمرین دروازه بانان",
        subtitle: "دست کش فراموش نشود",
        time: "۲بظ",
        color: Colors.pink,
        completed: false),
  ];

  static List<NewsEntity> fakeNews = List.generate(25, (i) {
    return NewsEntity(
        title: "عنوان $i",
        imgURL: 'https://picsum.photos/500/500?image=${i+1000}',
        shortDesc:
            'جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصو',
        description:
            'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد.');
  });

  static List<HonorsEntity> fakeHonors = List.generate(25, (i) {
    return HonorsEntity(
        title: "عنوان $i",
        imgURL: 'https://picsum.photos/400/500?image=${i + 100}',
        description:
            'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان.');
  });
  static List<CVEntity> fakeCVs = List.generate(25, (i) {
    return CVEntity((p) => p
      ..imgURL = 'https://picsum.photos/200/300?image=$i'
      ..name = 'آقای مربی $i'
      ..license = 'مربی درجه $i '
      ..education = 'کمی تا حدی خوب'
      ..description =
          'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برایدر ستون و سطرآنچنان که لازم است و برای در ستون و سطرآنچنان که لازم است و برای شرایط');
  });
}

Map<String, List<Photograph>> map() {
  List<String> l = ['1381', '1382', '1383', '1384'];
  Map<String, List<Photograph>> pics = {
    '1381': [],
    '1382': [],
    '1383': [],
    '1384': []
  };
  String str = 'این یک متن آزمایشی برای فاز توسعه میباشد.';

  pics[l[0]].add(Photograph((p) => p
    ..photo = 'https://hw18.cdn.asset.aparat.com/aparat-video/911beda0aa70ca03505077c34075faa111151596-240p__82786.mp4'
    ..thumbnail = 'https://hw18.cdn.asset.aparat.com/aparat-video/911beda0aa70ca03505077c34075faa111151596-240p__82786.mp4'
    ..description = str..isVideo = true));
  for (int i = 100; i <= 140; i++) {
    pics[l[0]].add(Photograph((p) => p
      ..photo = 'https://picsum.photos/200/300?image=$i'
      ..thumbnail = 'https://picsum.photos/400/500?image=$i'
      ..description = str..isVideo = false));
  }
  for (int i = 145; i <= 190; i++) {
    pics[l[1]].add(Photograph((p) => p
      ..photo = 'https://picsum.photos/200/300?image=$i'
      ..thumbnail = 'https://picsum.photos/400/500?image=$i'
      ..description = str..isVideo = false));
  }
  for (int i = 200; i <= 250; i++) {
    pics[l[2]].add(Photograph((p) => p
      ..photo = 'https://picsum.photos/200/300?image=$i'
      ..thumbnail = 'https://picsum.photos/400/500?image=$i'
      ..description = str..isVideo = false));
  }
  for (int i = 255; i <= 260; i++) {
    pics[l[3]].add(Photograph((p) => p
      ..photo = 'https://picsum.photos/200/300?image=$i'
      ..thumbnail = 'https://picsum.photos/400/500?image=$i'
      ..description = str..isVideo = false));
  }

  return pics;
}
