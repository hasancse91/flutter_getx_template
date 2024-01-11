enum AppLanguages {
  nb, // Norwegian
  en, // English
}

extension AppLanguageTitle on AppLanguages {
  String getTitle() {
    switch (this) {
      case AppLanguages.en:
        return "English";
      case AppLanguages.nb:
        return "Norsk Bokmål";
      default:
        return "English";
    }
  }
}
