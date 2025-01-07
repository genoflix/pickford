import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es'];

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
    String? enText = '',
    String? esText = '',
  }) =>
      [enText, esText][languageIndex] ?? '';

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

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

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

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // splash
  {
    'h2qucc2j': {
      'en': 'PICKFORD',
      'es': 'Pickford',
    },
    '7vmd5290': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // start
  {
    'dyyvxsdv': {
      'en': 'Manage your viewings with Pickford',
      'es': 'Gestiona tus visitas con Pickford',
    },
    'ktnt0xdg': {
      'en': 'Discover, save and track',
      'es': 'Descubra, guarde y realice un seguimiento',
    },
    'wdc0d0z1': {
      'en':
          'Discover movies and series, save them on your lists and track your viewings.',
      'es':
          'Descubre películas y series, guárdalas en tus listas y realiza un seguimiento de tus visualizaciones.',
    },
    'ye1uts05': {
      'en': 'Make community',
      'es': 'Hacer comunidad',
    },
    '9rkakuds': {
      'en':
          'You can select your opinion of the, recommend to friends and rate them. Also, comment theories and read the community.',
      'es':
          'Puedes seleccionar tu opinión sobre ellos, recomendarlos a tus amigos y calificarlos. Además, comentar teorías y leer la comunidad.',
    },
    '9fsw6nfl': {
      'en': 'Login',
      'es': 'Acceso',
    },
    'uxgyzicb': {
      'en': 'Sign up',
      'es': 'Inscribirse',
    },
    'zh5j3d8g': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // login
  {
    'vgkeawcn': {
      'en': 'Login',
      'es': 'Acceso',
    },
    '3qdownep': {
      'en': 'Email',
      'es': '',
    },
    '4ymn6h1i': {
      'en': 'Password',
      'es': '',
    },
    's90rpap6': {
      'en': 'Forgot your password?',
      'es': '¿Olvidaste tu contraseña?',
    },
    'jan1nph3': {
      'en': 'Continue',
      'es': 'Continuar',
    },
    'i8ah6za9': {
      'en': 'Continue',
      'es': 'Continuar',
    },
    '9kw37l84': {
      'en': 'Or continue with',
      'es': 'O continuar con',
    },
    'vzm3q0tt': {
      'en': 'I don’t have any account yet',
      'es': 'Aún no tengo ninguna cuenta',
    },
    '2r4aco7x': {
      'en': 'Fill in this field',
      'es': '',
    },
    'lqn2q9lo': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    '2st69niy': {
      'en': 'Fill in this field',
      'es': '',
    },
    'rvx3y3ff': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'q11eu55b': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // signup
  {
    'djosvqjx': {
      'en': 'Sign up',
      'es': 'Acceso',
    },
    'pklw6uju': {
      'en': 'Username',
      'es': '',
    },
    'v1j3m5r3': {
      'en': 'Email',
      'es': '',
    },
    'yn0e5o52': {
      'en': 'Password',
      'es': '',
    },
    'bcvmnlg8': {
      'en': 'Your password must contain:',
      'es': '¿Olvidaste tu contraseña?',
    },
    '2holthiz': {
      'en': '- 8 or more characters',
      'es': '¿Olvidaste tu contraseña?',
    },
    'lpysytwj': {
      'en': '- 1 or more uppercase letters',
      'es': '¿Olvidaste tu contraseña?',
    },
    'u1ut7d6n': {
      'en': '- 1 or more lowercase letters',
      'es': '¿Olvidaste tu contraseña?',
    },
    '6mi3561h': {
      'en': '- 1 or more digits',
      'es': '¿Olvidaste tu contraseña?',
    },
    'h0rex1v4': {
      'en': 'I accept ',
      'es': '',
    },
    '3iwx8vjv': {
      'en': 'terms and conditions',
      'es': '',
    },
    '6u3vp59i': {
      'en': 'Continue',
      'es': 'Continuar',
    },
    'um131798': {
      'en': 'Continue',
      'es': 'Continuar',
    },
    'sqlys919': {
      'en': 'Or continue with',
      'es': 'O continuar con',
    },
    'ud0daony': {
      'en': 'I already have an account',
      'es': 'Aún no tengo ninguna cuenta',
    },
    'f41a3yt2': {
      'en': 'Fill in this field',
      'es': '',
    },
    'jwnp5xdh': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'obivndib': {
      'en': 'Fill in this field',
      'es': '',
    },
    'p4ux52yj': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'db9deobp': {
      'en': 'Fill in this field',
      'es': '',
    },
    'wsmap9wn': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'pstck9a7': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // recovery
  {
    '9v0q1nww': {
      'en': 'Recovery',
      'es': 'Acceso',
    },
    '7vihoycl': {
      'en':
          'To recover your password, simply enter your access email address in the field below.',
      'es':
          'Puedes seleccionar tu opinión sobre ellos, recomendarlos a tus amigos y calificarlos. Además, comentar teorías y leer la comunidad.',
    },
    'r1bpjs6j': {
      'en': 'Email',
      'es': '',
    },
    'u0vwkmnr': {
      'en': 'Continue',
      'es': 'Continuar',
    },
    '1wueyk8w': {
      'en': 'Continue',
      'es': 'Continuar',
    },
    '77o77qtz': {
      'en': 'Remembered your password? Enter here',
      'es': 'Aún no tengo ninguna cuenta',
    },
    '07bfwsds': {
      'en': 'Fill in this field',
      'es': '',
    },
    'm5piylk6': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'gt7cbj4i': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // home
  {
    'wsztzqgs': {
      'en': 'Hello',
      'es': '',
    },
    '9vljrtfl': {
      'en': '[Name]',
      'es': '',
    },
    'e7ipxm2g': {
      'en': 'R',
      'es': '',
    },
    'li63d2om': {
      'en': 'Recommended by your contacts',
      'es': '',
    },
    'lq07moya': {
      'en': '6.1',
      'es': '',
    },
    'dgi49zzj': {
      'en': 'Dune Part I',
      'es': '',
    },
    'rfy128fm': {
      'en': '24/03/2024',
      'es': '',
    },
    'cgn4sjdy': {
      'en': 'R',
      'es': '',
    },
    'bokrbrwa': {
      'en': 'Belinda Santa...',
      'es': '',
    },
    'k1znl4p1': {
      'en': '6.1',
      'es': '',
    },
    'cb4evrho': {
      'en': 'Dune Part I',
      'es': '',
    },
    'b7my20jl': {
      'en': '24/03/2024',
      'es': '',
    },
    '4mvyc5vz': {
      'en': 'R',
      'es': '',
    },
    'ybzx0scf': {
      'en': 'Belinda Santa...',
      'es': '',
    },
    'vfzakkwm': {
      'en': '6.1',
      'es': '',
    },
    '8idtckzd': {
      'en': 'Dune Part I',
      'es': '',
    },
    '2173vxli': {
      'en': '24/03/2024',
      'es': '',
    },
    '2y4mjpkb': {
      'en': 'R',
      'es': '',
    },
    'm1j5bh69': {
      'en': 'Belinda Santa...',
      'es': '',
    },
    'r2earslr': {
      'en': 'Value recently watched',
      'es': '',
    },
    '9b8ppi0j': {
      'en': 'Movies',
      'es': '',
    },
    '8gxrkn9v': {
      'en': 'Series',
      'es': '',
    },
    'yg4k7wet': {
      'en': '6.1',
      'es': '',
    },
    'kp09qfla': {
      'en': 'Dune Part I',
      'es': '',
    },
    'amuvjjny': {
      'en': '6.1',
      'es': '',
    },
    'fr2easd4': {
      'en': 'Dune Part I',
      'es': '',
    },
    'cweusxuc': {
      'en': '6.1',
      'es': '',
    },
    'ro9eh3yg': {
      'en': 'Dune Part I',
      'es': '',
    },
    'x46f2b5d': {
      'en': '6.1',
      'es': '',
    },
    'eli8hafj': {
      'en': 'Dune Part I',
      'es': '',
    },
    'negbg3rx': {
      'en': 'Read and comment',
      'es': '',
    },
    'zutgebaw': {
      'en': 'Fallout',
      'es': '',
    },
    'e39irwqy': {
      'en': 'Episode name',
      'es': '',
    },
    'tjkcob4o': {
      'en': '6.1',
      'es': '',
    },
    'yktggwe1': {
      'en': '1x08',
      'es': '',
    },
    'ilpv3qwq': {
      'en': 'Rate',
      'es': '',
    },
    'vm5hzos1': {
      'en': 'Comments',
      'es': '',
    },
    'n8tc1388': {
      'en': 'Fallout',
      'es': '',
    },
    'mnbfxvk7': {
      'en': 'Episode name',
      'es': '',
    },
    '6crtr2fp': {
      'en': '6.1',
      'es': '',
    },
    'gbyby1o8': {
      'en': '1x08',
      'es': '',
    },
    'nb6qtos1': {
      'en': 'Rate',
      'es': '',
    },
    'mbfiyfb8': {
      'en': 'Comments',
      'es': '',
    },
    'ow6qcfr9': {
      'en': 'My lists',
      'es': '',
    },
    'krsp7lz0': {
      'en': 'My watchlist',
      'es': '',
    },
    'dkgfslu4': {
      'en': 'Horror movies',
      'es': '',
    },
    'm45hnl5y': {
      'en': '6.1',
      'es': '',
    },
    '3auyr3a5': {
      'en': 'Dune Part I',
      'es': '',
    },
    '19srz7ry': {
      'en': '6.1',
      'es': '',
    },
    '3wgia4wj': {
      'en': 'Dune Part I',
      'es': '',
    },
    '6gi6cfn5': {
      'en': '6.1',
      'es': '',
    },
    '774rb636': {
      'en': 'Dune Part I',
      'es': '',
    },
    'dbdoovhu': {
      'en': '6.1',
      'es': '',
    },
    'fb9xub50': {
      'en': 'Dune Part I',
      'es': '',
    },
    'qrr7au0g': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // plan
  {
    '8rjr5g0h': {
      'en': 'Choose your plan',
      'es': 'Acceso',
    },
    'yq6ua4lf': {
      'en': 'You can change your membership whenever you want',
      'es': '¿Olvidaste tu contraseña?',
    },
    'v7091yw1': {
      'en': 'Premium',
      'es': '',
    },
    'lpkzz7if': {
      'en': '1,99 €/month',
      'es': '',
    },
    '3icz9zul': {
      'en': 'Standard',
      'es': '',
    },
    'kvxbbheg': {
      'en': '1,99 €/month',
      'es': '',
    },
    '2dckp1w9': {
      'en': 'No ads',
      'es': '¿Olvidaste tu contraseña?',
    },
    '4xaz7nh9': {
      'en': 'In progress series',
      'es': '¿Olvidaste tu contraseña?',
    },
    'lvx8ge53': {
      'en': 'Upcoming premieres',
      'es': '¿Olvidaste tu contraseña?',
    },
    '5uzhuist': {
      'en':
          'Recommendations according to your available time, available platforms, mood and other preferences.',
      'es': '¿Olvidaste tu contraseña?',
    },
    'revjqffj': {
      'en': 'Complete activity and statistics management',
      'es': '¿Olvidaste tu contraseña?',
    },
    'x7zgi41f': {
      'en': 'Mark season as watched with one-click  or slider',
      'es': '¿Olvidaste tu contraseña?',
    },
    '7qftxad9': {
      'en': 'Avoiding spoilers in the movie and series files',
      'es': '¿Olvidaste tu contraseña?',
    },
    'kkrz11bl': {
      'en': 'Movies and series recommended by your contacts',
      'es': '¿Olvidaste tu contraseña?',
    },
    '9dnvjbb2': {
      'en': 'Search movies and series',
      'es': '¿Olvidaste tu contraseña?',
    },
    'y9h7trq4': {
      'en': 'Basic activity',
      'es': '¿Olvidaste tu contraseña?',
    },
    '0tm0yphm': {
      'en': 'Individual and group lists',
      'es': '¿Olvidaste tu contraseña?',
    },
    '6dfpvqyx': {
      'en': 'Series progress view',
      'es': '¿Olvidaste tu contraseña?',
    },
    'bhlwaoqw': {
      'en': 'View and write comments with spoiler filter',
      'es': '¿Olvidaste tu contraseña?',
    },
    'n9k3qmhw': {
      'en': 'Show more',
      'es': '¿Olvidaste tu contraseña?',
    },
    'r3gniccz': {
      'en': 'Hide',
      'es': '¿Olvidaste tu contraseña?',
    },
    'elmwhs3f': {
      'en': 'Confirm',
      'es': 'Continuar',
    },
    '0eeqezmn': {
      'en': 'Confirm',
      'es': 'Continuar',
    },
    'c19u91oq': {
      'en': 'Fill in this field',
      'es': '',
    },
    'm3h5mdx7': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'bgy8j03d': {
      'en': 'Fill in this field',
      'es': '',
    },
    '85hi0gma': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'h94jm4f7': {
      'en': 'Fill in this field',
      'es': '',
    },
    'muw6dda0': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'hcp14ts4': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // verification
  {
    '3n5w2s2s': {
      'en': 'Verification code',
      'es': 'Acceso',
    },
    'i25uoy0u': {
      'en':
          'We have sent a verification code to your mail. We have sent a verification code to your email. Type that code in the inputs below.',
      'es': '¿Olvidaste tu contraseña?',
    },
    '6zwhj0lw': {
      'en': 'Supporting text',
      'es': '¿Olvidaste tu contraseña?',
    },
    '6gj3lj8m': {
      'en': 'Confirm',
      'es': 'Continuar',
    },
    'isfiljt0': {
      'en': 'Confirm',
      'es': 'Continuar',
    },
    'c2ibegic': {
      'en': 'Fill in this field',
      'es': '',
    },
    'jdwt5tkv': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'c2c5cynt': {
      'en': 'Fill in this field',
      'es': '',
    },
    'd2jueeww': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'loxnk1ev': {
      'en': 'Fill in this field',
      'es': '',
    },
    '5daghrds': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'wr0qsgog': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // homeClean
  {
    'ng7pctvr': {
      'en': 'Hello',
      'es': '',
    },
    '08eq2pxv': {
      'en': '[Name]',
      'es': '',
    },
    '5jbyxtmy': {
      'en': 'R',
      'es': '',
    },
    'sljpyshn': {
      'en': 'Discover movies and series',
      'es': '',
    },
    'u2aslw8s': {
      'en':
          'Mark titles as watched, save on your watchlist, rate movies, recommend and comment',
      'es': '',
    },
    '6a95e1r4': {
      'en': 'Discover',
      'es': 'Acceso',
    },
    'zwdxrq2x': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // discover
  {
    'yiex7ux6': {
      'en': 'Search',
      'es': '',
    },
    'r18h4k0q': {
      'en': 'Movies',
      'es': '',
    },
    'dd5fxo0o': {
      'en': 'Series',
      'es': '',
    },
    '0i7l993c': {
      'en': 'Most watched this week',
      'es': '',
    },
    'owv72f8d': {
      'en': '6.1',
      'es': '',
    },
    '5qd4brib': {
      'en': 'Dune Part I',
      'es': '',
    },
    '5slr3jmc': {
      'en': '6.1',
      'es': '',
    },
    'usqiwqzv': {
      'en': 'Dune Part I',
      'es': '',
    },
    'z0q53era': {
      'en': '6.1',
      'es': '',
    },
    '2p30o1l4': {
      'en': 'Dune Part I',
      'es': '',
    },
    '8r6vvk0q': {
      'en': '6.1',
      'es': '',
    },
    '0w6lx14p': {
      'en': 'Dune Part I',
      'es': '',
    },
    '4c6v7wz9': {
      'en': 'Most reacted by your contacts',
      'es': '',
    },
    'to70qlio': {
      'en': '6.1',
      'es': '',
    },
    '3xlfvp55': {
      'en': 'Dune Part I',
      'es': '',
    },
    'bxbnb7u9': {
      'en': '6.1',
      'es': '',
    },
    'hjuqy76k': {
      'en': 'Dune Part I',
      'es': '',
    },
    'xswbtvkp': {
      'en': '6.1',
      'es': '',
    },
    'a7fs0ubk': {
      'en': 'Dune Part I',
      'es': '',
    },
    '99c04530': {
      'en': '6.1',
      'es': '',
    },
    'g1bob6cc': {
      'en': 'Dune Part I',
      'es': '',
    },
    'nhl9z7oi': {
      'en': 'New',
      'es': '',
    },
    'oc0bbw9s': {
      'en': '6.1',
      'es': '',
    },
    'iww0wvy6': {
      'en': 'Dune Part I',
      'es': '',
    },
    'utx66i6r': {
      'en': '6.1',
      'es': '',
    },
    '5yd0342k': {
      'en': 'Dune Part I',
      'es': '',
    },
    'yg22ogsk': {
      'en': '6.1',
      'es': '',
    },
    '3ea0537l': {
      'en': 'Dune Part I',
      'es': '',
    },
    'p3c8cr04': {
      'en': '6.1',
      'es': '',
    },
    'ilxirltr': {
      'en': 'Dune Part I',
      'es': '',
    },
    'n4f86qvb': {
      'en': 'Similar to your favourites',
      'es': '',
    },
    'mq6cdl1g': {
      'en': '6.1',
      'es': '',
    },
    '47c9hr2h': {
      'en': 'Dune Part I',
      'es': '',
    },
    'wlrgcigu': {
      'en': '6.1',
      'es': '',
    },
    'bb39zbox': {
      'en': 'Dune Part I',
      'es': '',
    },
    'trdpyxu7': {
      'en': '6.1',
      'es': '',
    },
    '1dih058w': {
      'en': 'Dune Part I',
      'es': '',
    },
    'hsjldcfp': {
      'en': '6.1',
      'es': '',
    },
    'i1ktxeqb': {
      'en': 'Dune Part I',
      'es': '',
    },
    'rxw5h47z': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // inicio
  {
    't80lxn7s': {
      'en': 'Page Title',
      'es': '',
    },
    '14n0n66i': {
      'en': 'Home',
      'es': '',
    },
  },
  // terms
  {
    'khiqw422': {
      'en': 'Terms and conditions',
      'es': 'Acceso',
    },
    'fk399rnh': {
      'en': 'I accept',
      'es': 'Continuar',
    },
    'dswjgy0u': {
      'en': 'Fill in this field',
      'es': '',
    },
    'x1wufpzj': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'zeft4gzm': {
      'en': 'Fill in this field',
      'es': '',
    },
    'hja8zdv5': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    '1t9gr3jk': {
      'en': 'Fill in this field',
      'es': '',
    },
    'jezq9geo': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    '2z6hb3s4': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // logo
  {
    'dxuosaww': {
      'en': 'PICKFORD',
      'es': 'Pickford',
    },
  },
  // idioma
  {
    'pjy7erxc': {
      'en': 'Choose Language',
      'es': '',
    },
    'zma99jwe': {
      'en': 'English',
      'es': '',
    },
    's6wqgh97': {
      'en': 'Español',
      'es': '',
    },
  },
  // menu
  {
    'hg9rqx2o': {
      'en': 'Home',
      'es': '',
    },
    'qet97pzn': {
      'en': 'Discover',
      'es': '',
    },
    'zabj03c4': {
      'en': 'Activity',
      'es': '',
    },
    'x6v5duo4': {
      'en': 'Lists',
      'es': '',
    },
  },
  // popupPremium
  {
    'lcnuchpg': {
      'en': 'Do you want to see the advantages to upgrade premium?',
      'es': '',
    },
    'xgfh92aj': {
      'en':
          'You can change your membership from your profile screen at any time',
      'es': '',
    },
    'i3cqf999': {
      'en': 'Don’t show again',
      'es': '',
    },
    '1cyq5r2v': {
      'en': 'Yes',
      'es': '',
    },
  },
  // Miscellaneous
  {
    '1zo19mhz': {
      'en': '',
      'es': '',
    },
    '43u0xptn': {
      'en': '',
      'es': '',
    },
    'exgds810': {
      'en': '',
      'es': '',
    },
    'akr7fx7j': {
      'en': '',
      'es': '',
    },
    'vipmejgw': {
      'en': '',
      'es': '',
    },
    'l43j4wet': {
      'en': '',
      'es': '',
    },
    'aogc45u3': {
      'en': '',
      'es': '',
    },
    'dqtya3x6': {
      'en': '',
      'es': '',
    },
    'b6ck1amr': {
      'en': '',
      'es': '',
    },
    'h6himvuz': {
      'en': '',
      'es': '',
    },
    'l5gkahdi': {
      'en': '',
      'es': '',
    },
    'tj119pbn': {
      'en': '',
      'es': '',
    },
    '024z8abe': {
      'en': '',
      'es': '',
    },
    'l5arvrhy': {
      'en': '',
      'es': '',
    },
    'oxc2d1ue': {
      'en': '',
      'es': '',
    },
    'i6m98pui': {
      'en': '',
      'es': '',
    },
    'o3a8d1px': {
      'en': '',
      'es': '',
    },
    '97pggtkl': {
      'en': '',
      'es': '',
    },
    '7dk0691k': {
      'en': '',
      'es': '',
    },
    's4quk29g': {
      'en': '',
      'es': '',
    },
    'dwxpg35z': {
      'en': '',
      'es': '',
    },
    '6ivyqwyn': {
      'en': '',
      'es': '',
    },
    'osxhdk6e': {
      'en': '',
      'es': '',
    },
    'e8u47mry': {
      'en': '',
      'es': '',
    },
    'vlgrhxie': {
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
