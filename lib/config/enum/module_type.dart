enum ModuleTypeEnum {
  MAIN(0, 0, "/"),
  LOGIN(0, 0, "/login"),
  NAVBAR(0, 0, "/navbar"),
  INDEX(0, 0, "/index"),
  HOME(0, 0, "/home"),

  CAR(4, 0, "/car"),
  CARADD(4, 1, "/caradd"),
  CARINFO(4, 2, "/carinfo"),

  NOTE(5, 0, "/note"),
  OTHER(6, 0, "/other"),

  UNKNOWN(-1, -1, '');

  const ModuleTypeEnum(this.label, this.sortnum, this.routepath);

  final num label;

  final num sortnum;

  final String routepath;
  // static ModuleTypeEnum getTypeByTitle(String title) =>
  //     ModuleTypeEnum.values.firstWhere((activity) => activity.name == title,
  //         orElse: () => ModuleTypeEnum.UNKNOWN);

  static ModuleTypeEnum getType(num number) => ModuleTypeEnum.values.firstWhere(
      (activity) => activity.label == number && activity.sortnum == 0,
      orElse: () => ModuleTypeEnum.UNKNOWN);

  static String getValue(num number) => ModuleTypeEnum.values
      .firstWhere(
          (activity) => activity.label == number && activity.sortnum == 0,
          orElse: () => ModuleTypeEnum.UNKNOWN)
      .routepath;
}
