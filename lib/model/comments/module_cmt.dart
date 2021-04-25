enum MODULECOMMENT { STYLE, PROFILE, AUDIT }

class ModuleComment {
  static String getValue(MODULECOMMENT modulecomment) {
    switch (modulecomment) {
      case MODULECOMMENT.STYLE:
        return 'style';
      case MODULECOMMENT.PROFILE:
        return 'profile';
      case MODULECOMMENT.AUDIT:
        return 'audit';
      default:
        return '';
    }
  }
}
