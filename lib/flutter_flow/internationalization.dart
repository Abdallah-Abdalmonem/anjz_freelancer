import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ar', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? arText = '',
    String? enText = '',
  }) =>
      [arText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // MyProfile
  {
    'ot5f15kf': {
      'ar': 'رصيدك الحالي ',
      'en': 'Your current balance',
    },
    'ugm2ijo4': {
      'ar': '',
      'en': 'RS',
    },
    '5an581yp': {
      'ar': '1200 رس',
      'en': '1200 RS',
    },
    'fzml56j3': {
      'ar': '1200',
      'en': '1200',
    },
    'bxpj8utn': {
      'ar': ' ر س',
      'en': 'R S',
    },
    '75t37r0r': {
      'ar': '1200 رس',
      'en': '1200 RS',
    },
    'ns474s1f': {
      'ar': 'يمكنك شحن رصيدك عن طريق ',
      'en': 'You can charge your balance via',
    },
    'pgodqrep': {
      'ar': 'Apple Pay',
      'en': 'Apple Pay',
    },
    'svs2luue': {
      'ar': 'ادخل المبلغ',
      'en': 'Enter the amount',
    },
    'qgfmi91f': {
      'ar': 'ادخل المبلغ هنا...',
      'en': 'Enter the amount here...',
    },
    '3pd2vw50': {
      'ar': 'شحن الرصيد',
      'en': 'recharge',
    },
    'g5i6c7pf': {
      'ar': 'المحفظة',
      'en': 'Portfolio',
    },
    'mfqsft0f': {
      'ar': 'حسابي',
      'en': 'Arithmetic',
    },
  },
  // auth_4_OnboardingPone
  {
    'zz79kn16': {
      'ar': 'ما هو رقم جوالك؟',
      'en': 'What is your phone number?',
    },
    'vkj6imhn': {
      'ar': 'أدخل اسمك رقم هاتفك للبدء في إنشاء ملف التعريف الخاص بك.',
      'en': 'Enter your name and phone number to start creating your profile.',
    },
    'r64c2ybs': {
      'ar': 'الاسم',
      'en': 'the name',
    },
    'u1y9oir7': {
      'ar': 'اكتب اسمك هنا...',
      'en': 'Type your name here...',
    },
    'ywlcwwq4': {
      'ar': 'سنرسل لك رمزًا مكونًا من 6 أرقام!',
      'en': 'We will send you a 6 digit code!',
    },
    'txb5q8v8': {
      'ar': 'رقم الجوال',
      'en': 'Mobile number',
    },
    's9icknhc': {
      'ar': '+966',
      'en': '+966',
    },
    '9h9pxfo9': {
      'ar': 'رجوع',
      'en': 'Back',
    },
    'qb7icpto': {
      'ar': 'حفظ و متابعة',
      'en': 'Save and follow',
    },
    'tm2v9enc': {
      'ar': 'الاسم مطلوب ',
      'en': 'Name required',
    },
    'n0btd9rr': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'y59d0twl': {
      'ar': 'رقم الهاتف مطلوب',
      'en': 'Phone number required',
    },
    '815bbd3w': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'v5p5vptj': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // auth_4_Welcome
  {
    '6t0h0s0v': {
      'ar': 'نربطك بأفضل الفنيين القريبين منك لصيانة منزلية مضمونة وسهلة',
      'en':
          'We connect you with the best technicians near you for guaranteed and easy home maintenance.',
    },
    'n1klebhv': {
      'ar': 'تسجيل برقم الجوال',
      'en': 'Register with mobile number',
    },
    '09lnonbl': {
      'ar': 'تسجيل بحساب جوجل',
      'en': 'Sign up with Google account',
    },
    '286vyh42': {
      'ar': 'هل لديك حساب بالفعل  ',
      'en': 'Do you already have an account?',
    },
    'q8jhedus': {
      'ar': 'تسجيل الدخول',
      'en': 'sign in',
    },
    'yjwomeh2': {
      'ar': 'Admin Only log in',
      'en': 'Admin Only log in',
    },
    'o8ycu1fc': {
      'ar': 'EMAIL...',
      'en': 'EMAIL...',
    },
    'j8jhrosp': {
      'ar': 'PASSWORD...',
      'en': 'PASSWORD...',
    },
    'riibjj9l': {
      'ar': 'PASSWORD...',
      'en': 'PASSWORD...',
    },
    '04w7qb3p': {
      'ar': 'Log In',
      'en': 'Log In',
    },
    'bmaf8i3z': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // auth_4_OnboardingPhoneVerify
  {
    'n8a5c1o6': {
      'ar': 'رقم التعريف المؤقت',
      'en': 'Temporary identification number',
    },
    'c6y76rsn': {
      'ar': 'أدخل الرمز المكون من 6 أرقام الذي أرسلناه إلى الرقم أدناه:',
      'en': 'Enter the 6-digit code we sent to the number below:',
    },
    'si7h1vq4': {
      'ar': 'تأكيد الرقم',
      'en': 'Confirm number',
    },
    'qykyfrit': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // Home
  {
    'n9p397qw': {
      'ar': 'أهلا  ',
      'en': 'Hello',
    },
    'j6e9t18x': {
      'ar': '1',
      'en': '1',
    },
    'oi36oipz': {
      'ar':
          'تم تقديم طلبك للأنضمام ك فني - سيتم ارسال اشعار لك بحالة مراجعة الطلب',
      'en':
          'Your application to join as a technician has been submitted - you will be notified of the application review status',
    },
    'w63oro7f': {
      'ar': 'نأسف  تم رفض الطلب ',
      'en': 'Sorry, your request was declined.',
    },
    'huwikcqx': {
      'ar': 'تواصل معنا',
      'en': 'Connect with us',
    },
    'k01jmp3r': {
      'ar': 'تقديم طلب جديد',
      'en': 'Submit a new request',
    },
    '6run5s7p': {
      'ar': 'كيف نقدر نساعدك',
      'en': 'How can we help you?',
    },
    '1h7a4l1l': {
      'ar': 'سباكة',
      'en': 'Plumbing',
    },
    '1e0u2vir': {
      'ar': 'نجارة',
      'en': 'Carpentry',
    },
    'xit8glpq': {
      'ar': 'تكييف',
      'en': 'conditioning',
    },
    'qmtch92r': {
      'ar': 'ستالايت',
      'en': 'Styles',
    },
    'gnuvcutv': {
      'ar': 'أجهزة منزلية',
      'en': 'Appliances',
    },
    'eyucevmq': {
      'ar': 'كاميرات مراقبة',
      'en': 'security cameras',
    },
    'd518k40b': {
      'ar': 'تبليط',
      'en': 'flooring',
    },
    '7rln4o5q': {
      'ar': 'دهانات',
      'en': 'Paints',
    },
    'zp9w7lr7': {
      'ar': 'نظافة عامة',
      'en': 'sanitation',
    },
    '9tgsi8lx': {
      'ar': 'الفني الذكي',
      'en': '',
    },
    'jlsnqyal': {
      'ar': 'يمكنك ان تسأل الفني الذكي عن اي شي ',
      'en': '',
    },
    'qqsk8ni6': {
      'ar': 'الرئيسية',
      'en': 'Main',
    },
  },
  // AppOffers
  {
    'f6es7otg': {
      'ar': 'العروض',
      'en': 'Offers',
    },
    'fjk2l4xr': {
      'ar': 'عروض',
      'en': 'Offers',
    },
  },
  // authPhone
  {
    'cxsvkith': {
      'ar': 'ما هو رقم جوالك?',
      'en': 'What is your phone number?',
    },
    '3f3osc34': {
      'ar': 'أدخل اسمك رقم هاتفك للبدء في إنشاء ملف التعريف الخاص بك.',
      'en': 'Enter your name and phone number to start creating your profile.',
    },
    'jd0c6uaf': {
      'ar': 'اكتب اسمك هنا...',
      'en': 'Type your name here...',
    },
    'x16gucs3': {
      'ar': 'رقم الجوال',
      'en': 'Mobile number',
    },
    'cjgep4tv': {
      'ar': '503666501',
      'en': '503666501',
    },
    'iaa2b95z': {
      'ar': '+966',
      'en': '+966',
    },
    'xyuybdl2': {
      'ar': 'سنرسل لك رمزًا مكونًا من 6 أرقام!',
      'en': 'We will send you a 6 digit code!',
    },
    'fzlf0139': {
      'ar': 'ارسل كود التعريف',
      'en': 'Send the identification code',
    },
    'lb4og6eu': {
      'ar': 'الاسم مطلوب',
      'en': 'Name required',
    },
    '960bub0i': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '846ay8m3': {
      'ar': 'رقم الهاتف مطلوب',
      'en': 'phone number',
    },
    'qoc7lqlh': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'rsu8vjvj': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // RequestService
  {
    '1hd2t49a': {
      'ar': 'تأكيد الموقع والمتابعة',
      'en': 'Confirm location and follow up',
    },
    'u4iufwht': {
      'ar': 'لطلب فني ',
      'en': 'For technical request',
    },
    'c0j8x8bs': {
      'ar': ' يجب تحديد موقع الصيانة',
      'en': 'Maintenance location must be specified.',
    },
    '77e8erw0': {
      'ar': 'لطلب فني ',
      'en': 'For technical request',
    },
    'nz3raiya': {
      'ar': 'خروج',
      'en': 'Exit',
    },
    '5l91bu1w': {
      'ar': 'متصل الان ',
      'en': 'Is online now',
    },
    'ea9orfpe': {
      'ar': ' فني',
      'en': 'Technical',
    },
    'qm61lgfk': {
      'ar': 'متصل الان 20 فني',
      'en': '20 technicians online now',
    },
    'cjgtp3h0': {
      'ar': 'الخدمة',
      'en': 'the service',
    },
    'r4wiu1qe': {
      'ar':
          'اذا كنت تريد قطع غيار مع الفني الرجاء ابلاغه بها فى الدردشة بعد قبول عرضه ',
      'en':
          'If you want spare parts with the technician, please inform him in the chat after accepting his offer.',
    },
    '81efe1w4': {
      'ar': 'وصف الطلب',
      'en': 'Description of the request',
    },
    'g23mx29h': {
      'ar': 'اكتب وصف المشكلة وارفق اكثر من صورة للطلب...',
      'en':
          'Write a description of the problem and attach more than one photo to the request...',
    },
    'o5qmerio': {
      'ar': 'رقم هاتف للتواصل...',
      'en': 'Contact phone number...',
    },
    '0nulbog5': {
      'ar': 'يمكنك اضافة صورة توضيحية',
      'en': 'You can add an illustrative image.',
    },
    'sk5t1pak': {
      'ar': 'تغيير موقع الصيانة من الخريطة',
      'en': 'Change maintenance location from map',
    },
    '45lvl6j1': {
      'ar': 'ارسال الطلب',
      'en': 'Send request',
    },
    'pdnr0bm0': {
      'ar': 'اكتب وصف العمل',
      'en': 'Field is required',
    },
    'w3wxazuy': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'jq10yuvi': {
      'ar': 'رقم الهاتف',
      'en': 'phone number',
    },
    'd2we8smt': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'f6za74p6': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // MyRequests
  {
    'xwelqct2': {
      'ar': 'النشطة',
      'en': 'Active',
    },
    '6wfyobx7': {
      'ar': 'الخدمة : ',
      'en': 'the service :',
    },
    '827guyxc': {
      'ar': 'رقم الطلب # :  ',
      'en': 'order number # :',
    },
    'ynks1kgz': {
      'ar': 'بأنتظار العروض',
      'en': 'Waiting for offers',
    },
    '0zn5tbbr': {
      'ar': '',
      'en': '',
    },
    'ptks73nq': {
      'ar': ' عرض مقدم ',
      'en': 'Presented by',
    },
    'dxxgkm5l': {
      'ar': 'الفني : ',
      'en': 'Technical:',
    },
    'lfg5ppdg': {
      'ar': 'الدردشة',
      'en': 'Chat',
    },
    'f5eqymq0': {
      'ar': 'تحقق من الطلب',
      'en': 'Check the order',
    },
    'tr9b3ov1': {
      'ar': 'بداية العمل',
      'en': 'Beginning work',
    },
    '4dgh9mq8': {
      'ar': 'الغاء الطلب',
      'en': 'Cancelling order',
    },
    '8nzda5lx': {
      'ar': 'السابق',
      'en': 'the previous',
    },
    'q52idnl5': {
      'ar': 'رقم الطلب # :  ',
      'en': 'order number # :',
    },
    'bc5jw30o': {
      'ar': 'الخدمة : ',
      'en': 'the service :',
    },
    'f5bofib6': {
      'ar': 'بأنتظار العروض',
      'en': 'Waiting for offers',
    },
    '56b5w437': {
      'ar': '',
      'en': '',
    },
    'rqqqz0l1': {
      'ar': ' عرض مقدم ',
      'en': 'Presented by',
    },
    '7ch8eon9': {
      'ar': 'تحقق من الطلب',
      'en': 'Check the order',
    },
    '8uqk21oc': {
      'ar': 'الغاء الطلب',
      'en': 'Cancelling order',
    },
    'hnr79zgw': {
      'ar': 'الطلبات',
      'en': 'Requests',
    },
  },
  // Setting
  {
    'hmg06t8a': {
      'ar': 'عن أنجز',
      'en': 'About Anjaz',
    },
    '4gkckvkc': {
      'ar': 'سياسة الخصوصية',
      'en': 'privacy policy',
    },
    'x6rd2anv': {
      'ar': 'مكافأتي',
      'en': 'My reward',
    },
    'zgw4na0t': {
      'ar': '0 نقطة',
      'en': '0 points',
    },
    '4wrx1t2i': {
      'ar': 'محفظتي',
      'en': 'My wallet',
    },
    '04o38aim': {
      'ar': 'تعديل بياناتي',
      'en': 'Edit my details',
    },
    'wcohj89w': {
      'ar': 'سجل كمقدم خدمة',
      'en': 'Register as a service provider',
    },
    'y1yusvn1': {
      'ar': 'ما الجديد',
      'en': 'what\'s new',
    },
    'nc4xdiyt': {
      'ar': 'الشروط والاحكام',
      'en': 'Terms and Conditions',
    },
    'l3x282xb': {
      'ar': 'تسجيل الخروج',
      'en': 'sign out',
    },
    'cao5asn9': {
      'ar': 'تسجيل الدخول',
      'en': 'sign in',
    },
    '3dwegstc': {
      'ar': 'لوحة التحكم',
      'en': 'control Board',
    },
    'gnyvil5m': {
      'ar': 'لوحة المعلومات',
      'en': 'Dashboard',
    },
    'wb9em0bc': {
      'ar': 'فني',
      'en': 'Technical',
    },
    '4dp95w6m': {
      'ar': 'عميل',
      'en': 'client',
    },
    'psfw25mo': {
      'ar': 'اعادة ضبط',
      'en': 'Re-Set',
    },
    '4oyxs3cx': {
      'ar': 'Admin Only log in',
      'en': 'Admin Only log in',
    },
    'gj0ggdsx': {
      'ar': 'EMAIL...',
      'en': 'EMAIL...',
    },
    '4deab1b5': {
      'ar': 'PASSWORD...',
      'en': 'PASSWORD...',
    },
    'xeoz1u0f': {
      'ar': 'Log In',
      'en': 'Log In',
    },
    'pfp4act9': {
      'ar': 'الاعدادات',
      'en': 'Settings',
    },
    's0p7x1lh': {
      'ar': 'اعدادات',
      'en': 'Settings',
    },
  },
  // customerService
  {
    'ak3x4t76': {
      'ar': 'تحدث معنا',
      'en': 'Talk to us',
    },
    'jy0gje8g': {
      'ar': 'فريق الدعم الفني',
      'en': '',
    },
    'zn4q7kpf': {
      'ar': 'الدعم',
      'en': 'the support',
    },
  },
  // userRequestDetails
  {
    'wf8q5gpf': {
      'ar': 'الخدمة : ',
      'en': 'the service :',
    },
    'bp754zrd': {
      'ar': 'رقم الطلب : ',
      'en': 'order number :',
    },
    'm03qs19o': {
      'ar': '#200',
      'en': '#200',
    },
    'tdnkziux': {
      'ar': 'الوصف : ',
      'en': 'the description :',
    },
    'n5yfck1p': {
      'ar': 'تفاصيل العرض',
      'en': 'Offer details',
    },
    '57qc5ps8': {
      'ar': 'أجرة الفني',
      'en': 'Technician\'s fee',
    },
    'aavipjkl': {
      'ar': 'Hello World',
      'en': 'Hello World',
    },
    '3tj8zzok': {
      'ar': ' ر س ',
      'en': 'R S',
    },
    'ng2nsy0v': {
      'ar': 'Hello World',
      'en': '',
    },
    'ia1s3ps8': {
      'ar': 'عمولة',
      'en': 'commission',
    },
    'fxxvac5k': {
      'ar': '',
      'en': '5',
    },
    'xvhoahel': {
      'ar': 'Hello World',
      'en': 'Hello World',
    },
    'y0h4qw0a': {
      'ar': ' ر س',
      'en': 'R S',
    },
    'vu5nifvt': {
      'ar': 'Hello World',
      'en': 'Hello World',
    },
    'mffsd84r': {
      'ar': 'الاجمالي ',
      'en': 'Total',
    },
    'u9i0qy7y': {
      'ar': 'Hello World',
      'en': 'Hello World',
    },
    'pwjgg01q': {
      'ar': ' ر س',
      'en': 'R S',
    },
    'x4oyn21x': {
      'ar': 'Hello World',
      'en': '',
    },
    'ttbvx1tt': {
      'ar': 'بداية العمل',
      'en': 'Beginning work',
    },
    'vnnhnowj': {
      'ar': 'الفني فى الطريق اليك',
      'en': 'Technician is on his way to you',
    },
    'kmdmocv6': {
      'ar': 'وصل الفني للموقع',
      'en': 'The technician arrived at the site.',
    },
    'w20w6p5q': {
      'ar': 'طلب الفني تسليم العمل واصدر الفاتورة',
      'en':
          'The technician requested the work to be delivered and issued the invoice.',
    },
    'knpupyb8': {
      'ar': 'الفاتورة النهائية',
      'en': 'Final invoice',
    },
    '4s8y1ls5': {
      'ar': 'قطع الغيار',
      'en': 'Spare parts',
    },
    'vnpqidfi': {
      'ar': 'Hello World',
      'en': 'Hello World',
    },
    'y04iy7ic': {
      'ar': 'ر س',
      'en': 'R S',
    },
    'p40288jw': {
      'ar': 'أجرة الفني',
      'en': 'Technician\'s fee',
    },
    'r7znu4ac': {
      'ar': 'Hello World',
      'en': 'Hello World',
    },
    '9fpq7zcc': {
      'ar': 'ر س',
      'en': 'R S',
    },
    '606i3bxv': {
      'ar': 'عمولة',
      'en': 'commission',
    },
    'g2tfdm1z': {
      'ar': '',
      'en': '5',
    },
    'brgcy2ow': {
      'ar': 'Hello World',
      'en': 'Hello World',
    },
    'nwsyiy9f': {
      'ar': ' ر س',
      'en': 'R S',
    },
    'ym9xd4mb': {
      'ar': 'Hello World',
      'en': 'Hello World',
    },
    'f5ap0w2d': {
      'ar': 'الاجمالي ',
      'en': 'Total',
    },
    'qsq2z8jq': {
      'ar': 'Hello World',
      'en': 'Hello World',
    },
    '11ck4zfe': {
      'ar': 'ر س',
      'en': 'R S',
    },
    's21r013z': {
      'ar': 'استلام العمل والدفع ',
      'en': 'Receive work and pay',
    },
    'pb61fasj': {
      'ar': 'Apple Pay',
      'en': 'Apple Pay',
    },
    'lu5l6lwq': {
      'ar': 'دفع كاش',
      'en': 'Cash payment',
    },
    'kh1prkxk': {
      'ar': 'لقد اخترت الدفع كاش وتم تبليغ الفني بذلك',
      'en': 'I chose to pay in cash and the technician was notified of that.',
    },
    'mje0mcjl': {
      'ar': 'قام الفني بتأكيد استلام الكاش',
      'en': 'The technician confirmed the receipt of the cash.',
    },
    'n01hd3dx': {
      'ar': 'تم الدفع من بطاقتك البنكية ',
      'en': 'Payment was made from your bank card.',
    },
    'at0jzfwj': {
      'ar': '340',
      'en': '340',
    },
    '7oyslf07': {
      'ar': ' ر س',
      'en': 'R S',
    },
    '7ozx3k0n': {
      'ar': '240 ',
      'en': '240',
    },
    'y3lwdr3k': {
      'ar': 'انهاء العمل',
      'en': 'Finish the job',
    },
    'oyvawci9': {
      'ar': 'تقييم الفني',
      'en': 'Technical evaluation',
    },
    'w2ilk431': {
      'ar': 'أكتب رأيك فى الفني ..',
      'en': 'Write your opinion on the art..',
    },
    'fdb1fihn': {
      'ar': 'ارسل رأيك',
      'en': 'Send your opinion',
    },
    'pyclk7ai': {
      'ar': 'اكتب رأيك فى الفني',
      'en': 'Write your opinion on the artist',
    },
    'aeesy5s5': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '79c508fs': {
      'ar': 'طلب نشط',
      'en': 'Active request',
    },
    'chldb80k': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // technicianHome
  {
    'xqql5ht7': {
      'ar': '1',
      'en': '1',
    },
    'ncwdnqt3': {
      'ar': 'حسابى',
      'en': 'Arithmetic',
    },
    'tvq558m9': {
      'ar': 'سجل الطلبات',
      'en': 'Order history',
    },
    'a07uqezf': {
      'ar': 'الضبط',
      'en': 'Adjustment',
    },
    'y5rjjgap': {
      'ar': 'تفاصيل الدفع',
      'en': 'Payment details',
    },
    '8w1sc15b': {
      'ar': 'الدعم الفني',
      'en': 'technical support',
    },
    'tafhdn4b': {
      'ar': 'تسجيل الخروج',
      'en': 'sign out',
    },
    'nhmg6ha9': {
      'ar': 'Dashboard',
      'en': 'Dashboard',
    },
    '3hu7hk0w': {
      'ar': 'نشطة',
      'en': 'Active',
    },
    '5h6svcls': {
      'ar': 'km',
      'en': 'km',
    },
    'gd8zxlee': {
      'ar': 'رقم الطلب : ',
      'en': 'order number :',
    },
    'pybq876d': {
      'ar': 'رقم الطلب : #200',
      'en': 'Order number: #200',
    },
    '1s3k3any': {
      'ar': 'بواسطة : ',
      'en': 'by :',
    },
    '516r6k4j': {
      'ar': 'بواسطة : احمد ابو المجد',
      'en': 'By: Ahmed Abu El-Majd',
    },
    'wmaws40j': {
      'ar': 'الوصف : ',
      'en': 'the description :',
    },
    'kkpbbrpr': {
      'ar': 'الوصف : مطلوب كهربائي خبرة للعمل علي تأسيس كهرباء بناية',
      'en':
          'Description: An experienced electrician is required to work on the electrical installation of a building.',
    },
    '2mxeezov': {
      'ar': 'وافق العميل علي العرض',
      'en': 'The client accepted the offer.',
    },
    'qjqliwac': {
      'ar': 'بداية العمل و انا الان فى الطريق اليك',
      'en': 'I started working and I am on my way to you now',
    },
    'brzb18j1': {
      'ar': 'تفاصيل الطلب',
      'en': 'Order details',
    },
    'e6o9nbrh': {
      'ar': 'جميع الطلبات',
      'en': 'All requests',
    },
    'xybc4oer': {
      'ar': 'km',
      'en': 'km',
    },
    'fa1ttbsl': {
      'ar': 'رقم الطلب : ',
      'en': 'Order number: #200',
    },
    'ig1uht5o': {
      'ar': 'رقم الطلب : #200',
      'en': 'Order number: #200',
    },
    'ntncfqi5': {
      'ar': 'بواسطة : ',
      'en': 'by :',
    },
    '0z784h6r': {
      'ar': 'بواسطة : احمد ابو المجد',
      'en': 'By: Ahmed Abu El-Majd',
    },
    'spifxckz': {
      'ar': 'الوصف : ',
      'en': 'the description :',
    },
    'i5gza93t': {
      'ar': 'الوصف : مطلوب كهربائي خبرة للعمل علي تأسيس كهرباء بناية',
      'en':
          'Description: An experienced electrician is required to work on the electrical installation of a building.',
    },
    '18m6r97o': {
      'ar': 'ينتهي ',
      'en': 'finish',
    },
    'fanu4y4e': {
      'ar': 'Hello World',
      'en': 'Hello World',
    },
    'i4zledpr': {
      'ar': 'اخفاء',
      'en': 'Hide',
    },
    'djubahqi': {
      'ar': 'قدم عرضك',
      'en': 'Submit your offer',
    },
    'im0x0kc7': {
      'ar': 'فى انتظار موافقة العميل علي عرضك  ',
      'en': 'Waiting for the client to approve your offer',
    },
    '4yygikn7': {
      'ar': 'تعديل العرض',
      'en': 'Edit Display',
    },
    'b6eoimo2': {
      'ar': 'وافق العميل علي العرض',
      'en': '',
    },
    'xb5wldun': {
      'ar': 'بداية العمل و انا الان فى الطريق اليك',
      'en': 'I started working and I am on my way to you now',
    },
    '8b007koj': {
      'ar': 'تفاصيل الطلب',
      'en': 'Order details',
    },
    'gji3nexh': {
      'ar': '',
      'en': '',
    },
    '56cexmiy': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // notifications
  {
    'ixj1lhkb': {
      'ar': 'عرض المحادثة',
      'en': 'Users',
    },
    'tey6rphv': {
      'ar': 'اعادة تشغيل التطبيق',
      'en': 'Restart the application',
    },
    'vxpm9c2f': {
      'ar': 'الأشعارات',
      'en': 'Notifications',
    },
    '0zp875d2': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // Splash
  {
    '1qmaz7k0': {
      'ar': ' هَيِّن ',
      'en': 'little',
    },
    'y2d054t7': {
      'ar': 'فني',
      'en': 'Technical',
    },
    'pi168ev3': {
      'ar': 'عميل',
      'en': 'client',
    },
    '1b42ugmv': {
      'ar': 'اعادة ضبط',
      'en': 'Re-Set',
    },
    '3rn4omw7': {
      'ar': 'Admin Only log in',
      'en': 'Admin Only log in',
    },
    'ixgxj0uu': {
      'ar': 'EMAIL...',
      'en': 'EMAIL...',
    },
    't2fhghu8': {
      'ar': 'PASSWORD...',
      'en': 'PASSWORD...',
    },
    'u6pfpqsj': {
      'ar': 'Log In',
      'en': 'Log In',
    },
    'i7vfdbwh': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // FreelancerAccount
  {
    'e47mszj7': {
      'ar': '0',
      'en': '0',
    },
    'sel0t9gv': {
      'ar': ' ر س',
      'en': 'R S',
    },
    'hjg0d8qg': {
      'ar': 'رصيدك الكلي  ',
      'en': 'Your total balance',
    },
    '81aygcmd': {
      'ar': '0',
      'en': '0',
    },
    'ffza2s6i': {
      'ar': ' ر س',
      'en': 'R S',
    },
    '1bog8p6q': {
      'ar': 'رصيدقابل للسحب',
      'en': 'Withdrawable balance',
    },
    'h59enn83': {
      'ar': '0',
      'en': '0',
    },
    'd1qojgkz': {
      'ar': ' ر س',
      'en': 'R S',
    },
    '7rboazds': {
      'ar': 'رصيد معلق',
      'en': 'Pending balance',
    },
    'cxlfnz85': {
      'ar': ' ر س',
      'en': 'R S',
    },
    '9tw334hl': {
      'ar': 'مديونيتك',
      'en': 'Your debt',
    },
    'odhpyqja': {
      'ar': 'يجب التسديد قبل 5/7/2024',
      'en': 'Payment must be made before 7/5/2024',
    },
    'iscx9069': {
      'ar': 'حسابك',
      'en': 'Your account',
    },
    'f4zde49p': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // chat_2_Details
  {
    'tbgmlvbr': {
      'ar': 'محادثة الدعم',
      'en': 'Users',
    },
    'zj1o4hib': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // chat_2_main
  {
    'ks29gyaw': {
      'ar': 'Group Chat',
      'en': 'Group Chat',
    },
    'r6wkzont': {
      'ar': 'محادثاتي',
      'en': 'My conversations',
    },
    'dxhgw3d4': {
      'ar': '__',
      'en': '__',
    },
  },
  // chat_2_InviteUsers
  {
    'lu6j324d': {
      'ar': 'Invite Friends',
      'en': 'Invite Friends',
    },
    'ednb6l1x': {
      'ar': 'Selected',
      'en': 'Selected',
    },
    'y0zf50mm': {
      'ar': 'Invite Friends',
      'en': 'Invite Friends',
    },
    'jtpuyqla': {
      'ar': 'Select users from below to start a chat.',
      'en': 'Select users from below to start a chat.',
    },
    'r43imnn4': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // image_Details
  {
    'n5qs093z': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // technicalRequestDetails
  {
    'xidosx3j': {
      'ar': 'رقم الطلب : ',
      'en': 'order number :',
    },
    'vsuf7lbk': {
      'ar': 'بواسطة : ',
      'en': 'by :',
    },
    'ghtsb4jq': {
      'ar': 'الوصف : ',
      'en': 'the description :',
    },
    '2tx1sv8a': {
      'ar': 'وافق العميل علي العرض  بقيمة ',
      'en': 'The client accepted the offer for the value of',
    },
    'x724hk4n': {
      'ar': 'ر س',
      'en': 'R S',
    },
    'eoh2dezf': {
      'ar': 'تم اشعار العميل بتوجهك لمكان العمل',
      'en':
          'The customer has been notified that you are heading to the workplace.',
    },
    'wl28qgn1': {
      'ar': 'وافق العميل علي العرض بقيمة 100 رس',
      'en': 'The customer accepted the offer of 100 RS.',
    },
    'qt9ruvg5': {
      'ar': 'تم اشعار العميل بوصولك لمكان العمل',
      'en': 'The client has been notified of your arrival at the workplace.',
    },
    'xzfofo5m': {
      'ar': 'وافق العميل علي العرض بقيمة 100 رس',
      'en': 'The customer accepted the offer of 100 RS.',
    },
    'ccdlv7vi': {
      'ar': 'تم اصدار فاتورتك وارسالها للعميل ',
      'en': 'Your invoice has been issued and sent to the customer.',
    },
    '2y9xgr0o': {
      'ar': 'وافق العميل علي العرض بقيمة 100 رس',
      'en': 'The customer accepted the offer of 100 RS.',
    },
    'iklltrr4': {
      'ar': 'تم ارسال طلب تسليم العمل للعميل ',
      'en': 'The work delivery request has been sent to the client.',
    },
    '12frviet': {
      'ar': 'وافق العميل علي العرض بقيمة 100 رس',
      'en': 'The customer accepted the offer of 100 RS.',
    },
    '5zyw18bf': {
      'ar': 'قيمة المشتريات : ',
      'en': 'Purchase value:',
    },
    'g5sl9ltm': {
      'ar': ' ر س',
      'en': 'R S',
    },
    'q180ak4f': {
      'ar': 'Hello World',
      'en': 'Hello World',
    },
    'rj2zlhm1': {
      'ar': 'قيمة الصيانة : ',
      'en': 'Maintenance value:',
    },
    'p5ud1xyx': {
      'ar': ' ر س',
      'en': 'R S',
    },
    'l7k2xffm': {
      'ar': 'Hello World',
      'en': '',
    },
    '27krxbld': {
      'ar': 'عمولة : ',
      'en': 'Commission:',
    },
    'qa2j8hl8': {
      'ar': '5',
      'en': '5',
    },
    'wapw0qj7': {
      'ar': ' ر س',
      'en': 'R S',
    },
    '09qtexpc': {
      'ar': 'Hello World',
      'en': 'Hello World',
    },
    'lod5ckdj': {
      'ar': 'الاجمالي : ',
      'en': 'Total :',
    },
    'ovvyeql7': {
      'ar': ' ر س',
      'en': 'R S',
    },
    'k9vkzdxp': {
      'ar': 'Hello World',
      'en': 'Hello World',
    },
    'z6uwknac': {
      'ar': 'قام العميل بالاستلام',
      'en': 'The customer received it.',
    },
    'fvtil8a7': {
      'ar': 'قام العميل بالدفع من خلال التطبيق',
      'en': 'The customer paid through the app.',
    },
    'elb523m5': {
      'ar': '000',
      'en': '000',
    },
    'sui7d0eh': {
      'ar': ' ر س',
      'en': 'R S',
    },
    'bxlwy99e': {
      'ar': '240 ',
      'en': '240',
    },
    'gj9al1i8': {
      'ar': 'طلب العميل الدفع كاش',
      'en': 'Customer requested cash payment',
    },
    '1lk35riw': {
      'ar': 'تم تسجيل الكاش فى مديونيتك',
      'en': 'Cash has been recorded in your debt',
    },
    'z4gds21p': {
      'ar': 'بداية العمل و انا الان فى الطريق اليك',
      'en': 'I started working and I am on my way to you now',
    },
    'amxm2ngn': {
      'ar': 'وصلت موقع الصيانة',
      'en': 'I arrived at the maintenance site',
    },
    '4uib674x': {
      'ar': 'اصدار فاتورة و تسليم العمل',
      'en': 'Issue invoice and deliver work',
    },
    'k7h10d0r': {
      'ar': 'استلمت المبلغ',
      'en': 'I received the amount',
    },
    'n6sttkqs': {
      'ar': 'تقييم المستخدم',
      'en': 'User Rating',
    },
    '8f7fzd7p': {
      'ar': 'أكتب رأيك فى المستخدم ..',
      'en': 'Write your opinion about the user..',
    },
    'rsgwa1fi': {
      'ar': 'ارسل رأيك',
      'en': 'Send your opinion',
    },
    'r9dn06l9': {
      'ar': 'Field is required',
      'en': 'Field is required',
    },
    'jk9lpx50': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '9csaqi3k': {
      'ar': 'تفاصيل الطلب',
      'en': 'Order details',
    },
    'olkhs60f': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // Dashboard
  {
    '3hzxl9it': {
      'ar': 'أضف خدمة عملاء',
      'en': 'Add customer service',
    },
    'xonvp7q7': {
      'ar': 'ملخص احصائيات المستخدمين',
      'en': 'User Statistics Summary',
    },
    '0jtnjzey': {
      'ar': 'عد المستخدمين ',
      'en': 'Count users',
    },
    'r2rr50ru': {
      'ar': 'نشط اليوم',
      'en': 'Active today',
    },
    '3r9j1458': {
      'ar': 'مستخدم مسجل اليوم',
      'en': 'Registered user today',
    },
    'h1o5rcpt': {
      'ar': 'ملخص احصائيات الفنيين',
      'en': 'Technician Statistics Summary',
    },
    'e02a34si': {
      'ar': 'عدد الفنيين',
      'en': 'Number of technicians',
    },
    'uicd9j8b': {
      'ar': 'فنيين نشطين اليوم',
      'en': 'Active Technicians Today',
    },
    'u028ye4l': {
      'ar': 'طلبات  فنيين المراجعة',
      'en': 'Review Technicians Requests',
    },
    'clxaf8hy': {
      'ar': 'المشرفين',
      'en': 'Supervisors',
    },
    '9srmvx0c': {
      'ar': 'تعيين مشرف جديد',
      'en': 'Appointing a new supervisor',
    },
    'frl1kuih': {
      'ar': 'الغاء الاشراف',
      'en': 'Cancel supervision',
    },
    '2u8onte6': {
      'ar': 'المستخدمين',
      'en': 'Users',
    },
    'xc43wcvh': {
      'ar': 'الفنيين',
      'en': 'Technicians',
    },
    '6v4f6mlw': {
      'ar': 'الاشتراكات والدفع',
      'en': 'Subscriptions and Payment',
    },
    'b18ow8ky': {
      'ar': 'الطلبات',
      'en': 'Requests',
    },
    '2eucfz29': {
      'ar': 'لوحة المعلومات',
      'en': 'Dashboard',
    },
    'ofrrxkav': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // ReqOffersList
  {
    'vebhsnoy': {
      'ar': 'رقم الطلب : 200',
      'en': 'Order No.: 200',
    },
    'f8vc7aqg': {
      'ar': 'مقدم من',
      'en': 'Submitted by',
    },
    '5u15u43z': {
      'ar': 'محمد احمد البدري',
      'en': 'Mohammed Ahmed Al-Badri',
    },
    'hux9mko8': {
      'ar': 'السعر المبدئي : ',
      'en': 'Starting price:',
    },
    'rjcnlyc6': {
      'ar': ' ر س',
      'en': 'R S',
    },
    '96zh462p': {
      'ar': '100',
      'en': '100',
    },
    '6rki2xpm': {
      'ar': 'موافقة',
      'en': 'consent',
    },
    'qvqxmw3o': {
      'ar': 'عرض مقبول',
      'en': 'Accepted offer',
    },
    'g0e75h1i': {
      'ar': 'تحقق من الطلب',
      'en': 'Check the order',
    },
    'zm9eowah': {
      'ar': 'بداية العمل',
      'en': 'Beginning work',
    },
    'fzl6datq': {
      'ar': 'عروض على طلبك',
      'en': 'Offers on your request',
    },
    '0rdj5vrq': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // technicalRequests
  {
    'i3dpyua1': {
      'ar': 'نشطة',
      'en': 'Active',
    },
    '4v3sd10n': {
      'ar': 'ملغي',
      'en': 'Canceled',
    },
    '3ep8dptz': {
      'ar': 'بإننظار الموافقة',
      'en': 'Pending approval',
    },
    '4jq6j0wt': {
      'ar': 'منتهية',
      'en': 'Expired',
    },
    'a2rz1362': {
      'ar': 'سجل الطلبات',
      'en': 'Order history',
    },
    'enrn3tdo': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // Admin
  {
    'g1fsfk4t': {
      'ar': 'الفئات',
      'en': 'Categories',
    },
    'l9g8sfro': {
      'ar': 'أضف فئة',
      'en': 'Add Category',
    },
    'z1xdnnh8': {
      'ar': 'لوحة التحكم',
      'en': 'control Board',
    },
    'chldb80k': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // CreateTechnicalAccount
  {
    'icbihk45': {
      'ar': ' أدخل معلوماتك',
      'en': 'Enter your information',
    },
    'wo9cxi4l': {
      'ar': 'اسم الفني',
      'en': 'Artist Name',
    },
    'xosutsyn': {
      'ar': 'مكان الاقامة',
      'en': 'Place of residence',
    },
    '1uf2p3cs': {
      'ar': 'اكتب هنا العنوان المكتوب فى بطاقة الاقامة',
      'en': 'Write here the address written on the residence card',
    },
    '5r58zlkz': {
      'ar': 'الجنسية',
      'en': 'Nationality',
    },
    'n41uuq0a': {
      'ar': 'اكتب جنسيتك',
      'en': 'Enter your nationality',
    },
    '4bkknyri': {
      'ar': 'أختر التخصصات التي تتقنها ( بحد أقصي تخصصين فقط )',
      'en':
          'Choose the specializations you are proficient in (maximum two specializations only)',
    },
    'wl8tgee5': {
      'ar': 'اختر التخصصات',
      'en': 'Choose majors',
    },
    'ki7hksj1': {
      'ar': 'صورة الهوية أو الاقامة',
      'en': 'ID or residence photo',
    },
    'lj5f7gzu': {
      'ar': 'ارفاق',
      'en': 'Attachments',
    },
    'crfq9boo': {
      'ar': 'التقط صورة',
      'en': 'take a picture',
    },
    '6zjdj7yo': {
      'ar': 'ارفاق',
      'en': 'Attachments',
    },
    'a3d0olaj': {
      'ar': 'أوافق علي',
      'en': 'I agree to the terms and conditions',
    },
    'mmwyxefa': {
      'ar': ' الشروط والاحكام',
      'en': 'Terms and Conditions',
    },
    'qe4hrew3': {
      'ar': 'أوافق علي الشروط والاحكام',
      'en': 'I agree to the terms and conditions',
    },
    'mxhawxl8': {
      'ar': 'ارسال بياناتك للمراجعة',
      'en': 'Submit your data for review',
    },
    'wzmjdcbe': {
      'ar': 'الاسم مطلوب',
      'en': 'Name required',
    },
    'jeo4loxb': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'hecbq4fu': {
      'ar': 'العنوان مطلوب',
      'en': 'Title required',
    },
    'ty4ux8xq': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '32x5x9ge': {
      'ar': 'ادخل جنسيتك',
      'en': 'Enter your nationality',
    },
    'ti2vh62h': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'gb4gm7pt': {
      'ar': ' حساب فني',
      'en': 'Technical account',
    },
    '1loo6wau': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // technicalsRequests
  {
    '3vdvst8e': {
      'ar': 'مراجعة',
      'en': 'review',
    },
    'lmex3y4k': {
      'ar': 'مقبول',
      'en': 'acceptable',
    },
    'edhgznqr': {
      'ar': 'مرفوض',
      'en': 'unacceptable',
    },
    'f5zo5th6': {
      'ar': 'لم تتم المراجعة',
      'en': 'Not reviewed',
    },
    'ry4s6gx1': {
      'ar': 'مقبول',
      'en': 'acceptable',
    },
    '855reg4h': {
      'ar': 'مرفوض',
      'en': 'unacceptable',
    },
    '8z6trjo1': {
      'ar': 'طلبات الفنيين',
      'en': 'Technicians\' requests',
    },
    'nexth5jd': {
      'ar': 'Shop',
      'en': 'Shop',
    },
  },
  // ReviewTechnicalAccount
  {
    'y2sw0bfw': {
      'ar': 'معلومات الفني',
      'en': 'Technical information',
    },
    '57scwpsg': {
      'ar': 'اسم الفني',
      'en': 'Artist Name',
    },
    'c6lco6jb': {
      'ar': 'رقم هاتف الفني',
      'en': 'Technician\'s phone number',
    },
    'qt1pdph2': {
      'ar': 'مكان الاقامة',
      'en': 'Place of residence',
    },
    'uep3f2h0': {
      'ar': 'اكتب هنا العنوان المكتوب فى بطاقة الاقامة',
      'en': 'Write here the address written on the residence card',
    },
    '2h4o7qsm': {
      'ar': 'اكتب جنسيتك',
      'en': 'Enter your nationality',
    },
    'byhv4v5j': {
      'ar': ' التخصصات',
      'en': 'Specializations',
    },
    'mh1wn0ss': {
      'ar': 'صورة الهوية أو الاقامة',
      'en': 'ID or residence photo',
    },
    'mpg9fas9': {
      'ar': 'صورة شخصية',
      'en': 'Photograph',
    },
    '94yozztd': {
      'ar': 'قبول',
      'en': 'Acceptance',
    },
    '52njk2rl': {
      'ar': 'رفض',
      'en': 'to reject',
    },
    'xkmku6ff': {
      'ar': 'الاسم مطلوب',
      'en': 'Name required',
    },
    'jdzkna8w': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'v4e8nttv': {
      'ar': 'العنوان مطلوب',
      'en': 'Title required',
    },
    'o7x9oqop': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '68v2pc2o': {
      'ar': ' حساب فني',
      'en': 'Technical account',
    },
    'w9id5mem': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // notifications_List
  {
    '9ibu47sk': {
      'ar': 'Notifications',
      'en': 'Notifications',
    },
    '46fhlzh9': {
      'ar': 'Below is a list of your activities.',
      'en': 'Below is a list of your activities.',
    },
    'vynnpq33': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // notification_Create
  {
    'z2gyq0b6': {
      'ar': 'Create Activity',
      'en': 'Create Activity',
    },
    'mfithc60': {
      'ar': 'You can fill out the elemements below to create an activity item.',
      'en': 'You can fill out the elements below to create an activity item.',
    },
    'gdk9s34z': {
      'ar': 'Activity Name...',
      'en': 'Activity Name...',
    },
    'es9ykwkz': {
      'ar': 'Short Description of what is going on...',
      'en': 'Short description of what is going on...',
    },
    'wvlp72h6': {
      'ar': 'Activity Type',
      'en': 'Activity Type',
    },
    'z9c6ev3e': {
      'ar': 'New Comment',
      'en': 'New Comment',
    },
    '82eoifg5': {
      'ar': 'Friend Request',
      'en': 'Friend Request',
    },
    'nolbrn02': {
      'ar': 'New Post',
      'en': 'New Post',
    },
    'xyi3eaws': {
      'ar': 'New Comment',
      'en': 'New Comment',
    },
    '47mz6ah3': {
      'ar': 'Upload Screenshot',
      'en': 'Upload Screenshot',
    },
    'rywgj1x6': {
      'ar': 'Assign User',
      'en': 'Assign User',
    },
    '69ilgv85': {
      'ar': 'Add User',
      'en': 'Add User',
    },
    'ysymdklo': {
      'ar': 'Create Activity',
      'en': 'Create Activity',
    },
    '25spbo7q': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // userProfile
  {
    'twxufndg': {
      'ar': 'طلبات',
      'en': 'Requests',
    },
    'w07b7m9w': {
      'ar': 'تقييمات',
      'en': 'Reviews',
    },
    'lnwzu57q': {
      'ar': 'Overall',
      'en': 'Overall',
    },
    'zj1o4hib': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // TecnicianService
  {
    '6mr06t39': {
      'ar': 'تحدث معنا',
      'en': '',
    },
    '4zhelwsc': {
      'ar': 'فريق الدعم الفني',
      'en': '',
    },
    'qdoq6et1': {
      'ar': 'الدعم',
      'en': 'the support',
    },
  },
  // smartTecnician
  {
    'stgqzqbx': {
      'ar': 'اختر القسم',
      'en': '',
    },
    '2cogh529': {
      'ar': 'Option 1',
      'en': '',
    },
    'sfj2x9tc': {
      'ar': 'وصف العطل',
      'en': '',
    },
    'ngth521m': {
      'ar': 'اكتب وصف العطل هنا...',
      'en': '',
    },
    'i2glkrnd': {
      'ar': 'اسال الفني الذكي',
      'en': '',
    },
    '586c3wlk': {
      'ar': 'اكتب وصف العطل',
      'en': '',
    },
    '5x04l8hp': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'f4zde49p': {
      'ar': 'Home',
      'en': 'Home',
    },
  },
  // ChangeThemelightdark
  {
    'bd6mxhyc': {
      'ar': 'المظهر',
      'en': 'The appearance',
    },
    'sn1j4est': {
      'ar': 'قم بتحديث مظهر التطبيق الخاص بك من خلال تحديد أحد الخيارات أدناه.',
      'en':
          'Update the look of your app by selecting one of the options below.',
    },
    '3a8qqzuh': {
      'ar': 'داكن',
      'en': 'dark',
    },
    'jk2bdyia': {
      'ar': 'فاتح',
      'en': 'Light',
    },
  },
  // requestSent
  {
    '8h81sn4n': {
      'ar': 'تم ارسال الطلب للفنيين',
      'en': 'The request has been sent to the technicians.',
    },
    'zpvltvn1': {
      'ar': 'شكرا لاختيارك تطبيق أنجز',
      'en': 'Thank you for choosing Anjaz app',
    },
  },
  // editMyProfile
  {
    'xl0w54sc': {
      'ar': 'تعديل بياناتي',
      'en': 'Edit my details',
    },
    'kgxsc3s6': {
      'ar': 'بالاسفل يمكنك تعديل بياناتك',
      'en': 'Below you can edit your data',
    },
    '1998yx5b': {
      'ar': 'اسمك',
      'en': 'your name',
    },
    '6z17qi6i': {
      'ar': 'عنوان الصيانة',
      'en': 'Maintenance Address',
    },
    '09rshh8f': {
      'ar': 'الغاء',
      'en': 'cancellation',
    },
    'y3ge2k69': {
      'ar': 'حفظ التعديلات',
      'en': 'Save changes',
    },
  },
  // navBar
  {
    'z28ba3nx': {
      'ar': 'الرئيسية',
      'en': 'Main',
    },
    '27zspdbe': {
      'ar': 'الطلبات',
      'en': 'Requests',
    },
    '0eueyygk': {
      'ar': 'عروض',
      'en': 'Offers',
    },
    'fwuc9lyx': {
      'ar': 'الدعم',
      'en': 'the support',
    },
    'pmc4sq99': {
      'ar': 'الضبط',
      'en': 'Adjustment',
    },
  },
  // AddOffer
  {
    '0a2cheyz': {
      'ar': 'قيمة العرض ر س',
      'en': 'Offer value RS',
    },
    'rwgy9xxz': {
      'ar': '100 ر س',
      'en': '100 RS',
    },
    'h9tqph62': {
      'ar': 'اكتب عرضك',
      'en': 'Write your offer',
    },
    '8vkb1l22': {
      'ar': 'إرسال العرض',
      'en': 'Send offer',
    },
    'p3bbgfm6': {
      'ar': 'يجب ادخال القيمة',
      'en': 'Value must be entered',
    },
    'nqcav6tf': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'hdjfrpmh': {
      'ar': 'Field is required',
      'en': 'Field is required',
    },
    'n5a7sao8': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
  },
  // chat_DetailsOverlay
  {
    'knqk5ymu': {
      'ar': 'Close',
      'en': 'Close',
    },
  },
  // chat_ThreadComponent
  {
    'j6c1qesu': {
      'ar': 'تصفية مديونية الفني',
      'en': 'Liquidation of the technician\'s debt',
    },
    '5ok8xu7s': {
      'ar': 'Start typing here...',
      'en': 'Start typing here...',
    },
    '2x4menyl': {
      'ar': 'اكتب ما تريد ارساله',
      'en': 'Type what you want to send',
    },
    'sixaepfq': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
  },
  // user_ListSmall
  {
    'ayicx5ea': {
      'ar': 'ME',
      'en': 'ME',
    },
  },
  // deleteDialog
  {
    '77x3dz52': {
      'ar': 'Options',
      'en': 'Options',
    },
    'z31ubhfp': {
      'ar': 'Invite Users',
      'en': 'Invite Users',
    },
    '3kwtouxu': {
      'ar': 'Delete Chat',
      'en': 'Delete Chat',
    },
    '7o7czue4': {
      'ar': 'Confirm Delete',
      'en': 'Confirm Delete',
    },
    'yqq1c0xx': {
      'ar': 'You can\'t undo this action.',
      'en': 'You can\'t undo this action.',
    },
    'bvhq4prd': {
      'ar': 'Delete',
      'en': 'Delete',
    },
  },
  // ShowMap
  {
    '3cvvdkku': {
      'ar': ' ',
      'en': '',
    },
    '343b318g': {
      'ar': 'إغلاق',
      'en': 'Close',
    },
  },
  // payment
  {
    '9184i0pa': {
      'ar': 'الدفع',
      'en': 'paying off',
    },
    'fnrcc309': {
      'ar': 'تقرير تفصيلي عن فاتورة الخدمة',
      'en': 'Detailed service bill report',
    },
    '0k3nwxf4': {
      'ar': 'Price Breakdown',
      'en': 'Price Breakdown',
    },
    '9cr5l0wf': {
      'ar': 'مشتريات',
      'en': 'purchases',
    },
    'hhno5cv1': {
      'ar': '100',
      'en': '100',
    },
    'h1z5q2qm': {
      'ar': 'ر س',
      'en': 'R S',
    },
    'a6pkfo08': {
      'ar': '100 رس',
      'en': '100 RS',
    },
    'k22ddv2q': {
      'ar': 'خدمة',
      'en': 'service',
    },
    'ilzl93gq': {
      'ar': '240',
      'en': '240',
    },
    '1mmovehv': {
      'ar': 'ر س',
      'en': 'R S',
    },
    'xn3pul1j': {
      'ar': '100 رس',
      'en': '100 RS',
    },
    'w3zo3ko9': {
      'ar': 'عمولة ',
      'en': 'commission',
    },
    '2ayqicf4': {
      'ar': '5',
      'en': '5',
    },
    '749d4108': {
      'ar': 'ر س',
      'en': 'R S',
    },
    'kifyhbrl': {
      'ar': '100 رس',
      'en': '100 RS',
    },
    'uc00d79b': {
      'ar': 'Total',
      'en': 'Total',
    },
    'xc2lr0jm': {
      'ar': '345',
      'en': '345',
    },
    'fujjbu09': {
      'ar': 'ر س',
      'en': 'R S',
    },
    '6wrrsd3k': {
      'ar': '100 رس',
      'en': '100 RS',
    },
    '3u39x5c4': {
      'ar': 'Apple Pay',
      'en': 'Apple Pay',
    },
    'au1si0cm': {
      'ar': 'أو يمكنك الدفع من خلال بطاقتك البنكية',
      'en': 'Or you can pay with your bank card',
    },
    '603rordo': {
      'ar': 'البطاقة البنكية',
      'en': 'Bank card',
    },
  },
  // CreatInvoice
  {
    'c4periex': {
      'ar': 'تحرير فاتورة',
      'en': 'Edit invoice',
    },
    'v8tzhwo6': {
      'ar': 'أرفق صورة فاتورة مشتريات الصيانة',
      'en': 'Attach a copy of the maintenance purchase invoice.',
    },
    'esyavuam': {
      'ar': 'ارفاق الصور',
      'en': 'Attach images',
    },
    'yeocuulg': {
      'ar': 'صور تسليم العمل',
      'en': 'Work delivery photos',
    },
    'ountgpyh': {
      'ar': 'ارفاق الصور',
      'en': 'Attach images',
    },
    'fncv4919': {
      'ar': 'قيمة المشتريات   ر س',
      'en': 'Purchase value Rs',
    },
    '6p6lrbo4': {
      'ar': '0',
      'en': '0',
    },
    'zhxbvrtq': {
      'ar': 'لتعديل قيمة المشتريات يجب اضافة صورة فاتورة المشتريات اولا',
      'en': '',
    },
    'i5t8ju0s': {
      'ar': 'قيمة الخدمة   ر س...',
      'en': 'Service value Rs...',
    },
    'qc1c5n7u': {
      'ar': 'الاجمالي',
      'en': 'Total',
    },
    's0ylqsmv': {
      'ar': 'أصدار فاتورة',
      'en': 'Issue an invoice',
    },
  },
  // Primarybill
  {
    'nlp61s1l': {
      'ar':
          'اذا كنت تريد قطع غيار مع الفني الرجاء ابلاغه بها فى الدردشة بعد قبول عرضه ',
      'en':
          'If you want spare parts with the technician, please inform him in the chat after accepting his offer.',
    },
    'oq06bheq': {
      'ar': 'تفصيل الفاتورة',
      'en': 'Invoice detail',
    },
    '8smnzr5k': {
      'ar': 'سعر خدمة',
      'en': 'Service price',
    },
    '2vdyeita': {
      'ar': 'ر س',
      'en': 'R S',
    },
    '76n8vxnj': {
      'ar': '100 رس',
      'en': '100 RS',
    },
    'fy0nuu19': {
      'ar': 'عمولة ',
      'en': 'commission',
    },
    '1j7kb8by': {
      'ar': 'ر س',
      'en': 'R S',
    },
    'p8s5f59m': {
      'ar': '100 رس',
      'en': '100 RS',
    },
    'p3cufn9h': {
      'ar': 'Total',
      'en': 'Total',
    },
    'x8eygb8b': {
      'ar': 'ر س',
      'en': 'R S',
    },
    'm6dsbv6y': {
      'ar': '100 رس',
      'en': '100 RS',
    },
    'scl78spa': {
      'ar': 'قبول العرض',
      'en': 'Accept the offer',
    },
  },
  // AddCategoty
  {
    'ixmpf6xp': {
      'ar': 'اسم الفئة باللغة العربية...',
      'en': 'Category name in Arabic...',
    },
    'qkm6s2ed': {
      'ar': 'اسم الفئة بالانجليزية...',
      'en': 'Category name in English...',
    },
    't434d8ge': {
      'ar': 'ترتيب العرض...',
      'en': 'Display order...',
    },
    'r288khoy': {
      'ar': 'ضبط الالوان',
      'en': 'Adjust colors',
    },
    'qaovt0lm': {
      'ar': 'حفظ',
      'en': 'save',
    },
    'w8ty8m5z': {
      'ar': 'الغاء',
      'en': 'cancellation',
    },
    'e1bo4hq8': {
      'ar': 'ادخل اسم الفئة باللغة العربية',
      'en': 'Enter the category name in Arabic',
    },
    'ygvs88dm': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'yn3y78jm': {
      'ar': 'ادخل اسم الفئة بالانجليزية',
      'en': 'Enter the category name in English',
    },
    'd2we8smt': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'fv7dgjry': {
      'ar': 'ادخل قيمة اللون 1',
      'en': 'Enter color value 1',
    },
    'w8wvi6v5': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'v9a830ss': {
      'ar': 'ادخل قيمة اللون ',
      'en': 'Enter color value',
    },
    'v4xhfrd2': {
      'ar': '#111011',
      'en': '#111011',
    },
    'u4u9oaex': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
  },
  // EditCategoty
  {
    'vo2nmr53': {
      'ar': 'تعديل الفئة',
      'en': 'Edit Category',
    },
    '42b53srx': {
      'ar': 'اسم الفئة باللغة العربية...',
      'en': 'Category name in Arabic...',
    },
    'na5crfv7': {
      'ar': 'اسم الفئة بالانجليزية...',
      'en': 'Category name in English...',
    },
    'cypsp18n': {
      'ar': 'ترتيب العرض...',
      'en': 'Display order...',
    },
    '6x27y2uo': {
      'ar': 'تغيير الالوان',
      'en': 'Change colors',
    },
    'nxstu4be': {
      'ar': 'حفظ',
      'en': 'save',
    },
    '75kf908k': {
      'ar': 'الغاء',
      'en': 'cancellation',
    },
    'dn3q1lpx': {
      'ar': 'ادخل اسم الفئة باللغة العربية',
      'en': 'Enter the category name in Arabic',
    },
    'qkwovi1t': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'mvfujf6l': {
      'ar': 'ادخل اسم الفئة بالانجليزية',
      'en': 'Enter the category name in English',
    },
    'we6pw7zo': {
      'ar': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
  },
  // SelectCategory
  {
    '0y9k0fu7': {
      'ar': 'أختر تخصصين فقط',
      'en': 'Choose only two majors',
    },
    'gqhyrn46': {
      'ar': 'حفظ',
      'en': 'save',
    },
  },
  // activeRequest
  {
    'qvoderky': {
      'ar': 'رقم الطلب # :  ',
      'en': 'order number # :',
    },
    'qfkm28lq': {
      'ar': 'الخدمة : ',
      'en': 'the service :',
    },
    'qltzilbs': {
      'ar': 'بأنتظار العروض',
      'en': 'Waiting for offers',
    },
    '3521ka8j': {
      'ar': '',
      'en': '',
    },
    'vrzya3nh': {
      'ar': 'الفني : ',
      'en': 'Technical:',
    },
    '958d1l5h': {
      'ar': 'الدردشة',
      'en': 'Chat',
    },
    'mt0vhy49': {
      'ar': ' عرض مقدم ',
      'en': 'Presented by',
    },
    '23y8sf0k': {
      'ar': 'تحقق من الطلب',
      'en': 'Check the order',
    },
    'lk15xura': {
      'ar': 'الغاء الطلب',
      'en': 'Cancelling order',
    },
  },
  // NotLogedIn
  {
    'jinbxz2u': {
      'ar': 'برجاء تسجيل الدخول',
      'en': 'Please login',
    },
    'adwxb5p7': {
      'ar':
          'لا يمكنك الاستفادة من كل مميزات التطبيق بدون تسجيل دخول بدون تسجيل دخول للتطبيق',
      'en':
          'You cannot take advantage of all the features of the application without logging in without logging in to the application',
    },
    'yzejpx1e': {
      'ar': 'تسجيل الدخول',
      'en': 'sign in',
    },
    'nw7xop3r': {
      'ar': 'الغاء',
      'en': 'cancellation',
    },
  },
  // user_ListSmall_1
  {
    'pq3aejxx': {
      'ar': 'ME',
      'en': 'ME',
    },
  },
  // user_List
  {
    'edi2px8i': {
      'ar': 'Assign User',
      'en': 'Assign User',
    },
    'kf1gm1qa': {
      'ar': 'Select a user from the list below to continue.',
      'en': 'Select a user from the list below to continue.',
    },
    'nseda3mq': {
      'ar': 'Close',
      'en': 'Close',
    },
  },
  // RefuseeReason
  {
    '4yfz6i60': {
      'ar': 'ادخل سبب الرفض هنا...',
      'en': 'Enter the reason for rejection here...',
    },
    'dz9o2sm7': {
      'ar': 'رفض',
      'en': 'to reject',
    },
    'ewctclz0': {
      'ar': 'الغاء',
      'en': 'cancellation',
    },
  },
  // TermsAndConditions
  {
    'eb5z0g04': {
      'ar': 'Cancel',
      'en': 'Cancel',
    },
  },
  // openLocation
  {
    'mds1ckff': {
      'ar': 'برجاء تشغيل الموقع الجغرافي حتي يعمل التطبيق بشكل صحيح',
      'en': 'Please turn on location for the app to work properly.',
    },
    'd57ryjpt': {
      'ar': 'الغاء',
      'en': 'cancellation',
    },
  },
  // Miscellaneous
  {
    '2kz4sv6n': {
      'ar': 'تسجيل برقم الجوال',
      'en': 'Register with mobile number',
    },
    'ctwtmbbg': {
      'ar': 'Home',
      'en': 'Home',
    },
    'lbge2fjg': {
      'ar': 'تسجيل بحساب جوجل',
      'en': 'Sign up with Google account',
    },
    'qxlzsshi': {
      'ar': 'رقم هاتف للتواصل...',
      'en': 'Contact phone number...',
    },
    'yfgk6brz': {
      'ar': '',
      'en': '',
    },
    'xw44slx9': {
      'ar': '',
      'en': '',
    },
    'h9zj893q': {
      'ar': '',
      'en': '',
    },
    'kgjz6nav': {
      'ar': '',
      'en': '',
    },
    '2d4fwl5c': {
      'ar': '',
      'en': '',
    },
    '3mhw4ucl': {
      'ar': '',
      'en': '',
    },
    'w3d8nd5j': {
      'ar': '',
      'en': '',
    },
    'vguochz2': {
      'ar': '',
      'en': '',
    },
    'zt8cwb1w': {
      'ar': '',
      'en': '',
    },
    '6njtx3gz': {
      'ar': '',
      'en': '',
    },
    'w96kuid5': {
      'ar': '',
      'en': '',
    },
    'jsh0b27h': {
      'ar': '',
      'en': '',
    },
    '0ussuqpi': {
      'ar': '',
      'en': '',
    },
    'mm6y180j': {
      'ar': '',
      'en': '',
    },
    'l7dnr35k': {
      'ar': '',
      'en': '',
    },
    'mdrna89w': {
      'ar': '',
      'en': '',
    },
    'k864h6cj': {
      'ar': '',
      'en': '',
    },
    'pt9pfzsw': {
      'ar': '',
      'en': '',
    },
    '1rpzyszb': {
      'ar': '',
      'en': '',
    },
    'mswo3i47': {
      'ar': '',
      'en': '',
    },
    '6llhc1xo': {
      'ar': '',
      'en': '',
    },
    'vet600q2': {
      'ar': '',
      'en': '',
    },
    '8pdgq4h2': {
      'ar': '',
      'en': '',
    },
    '0dhdlgb6': {
      'ar': '',
      'en': '',
    },
    'mv3wikkk': {
      'ar': '',
      'en': '',
    },
    't3x9438o': {
      'ar': '',
      'en': '',
    },
    'ocua1gqq': {
      'ar': '',
      'en': '',
    },
    'hjeph3uu': {
      'ar': '',
      'en': '',
    },
    'ijw8wgu9': {
      'ar': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
