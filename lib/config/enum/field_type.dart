enum FieldTypeEnum {
  /**
   * 单行文本
   */
  TEXT(1, "text"),
  /**
   * 多行文本
   */
  TEXTAREA(2, "textarea"),

  /**
   * 数字
   */
  NUMBER(3, "number"),
  /**
   * 小数
   */
  NUMBER_FLOAT(4, "number_float"),
  /**
   * 百分数
   */
  PERCENT(5, "percent"),
  /**
   * 日期
   */
  DATE(6, "date"),
  /**
   * 日期时间
   */
  DATETIME(7, "datetime"),
  /**
   * 单选
   */
  SELECT(8, "select"),
  /**
   * 多选
   */
  CHECKBOX(9, "checkbox"),
  /**
   * 手机
   */
  MOBILE(10, "mobile"),
  /**
   * 邮件
   */
  EMAIL(11, "email"),
  /**
   * 文件
   */
  FILE(12, "file"),
  /**
   * 人员
   */
  USER(13, "user"),
  /**
   * 部门
   */
  DEPT(14, "dept"),
  /**
   * 布尔值
   */
  BOOLEAN_VALUE(15, "boolean_value"),
  /**
   * 网址
   */
  WEBSITE(16, "website"),
  /**
   * crm 地图
   */
  ADDRESS(17, "address"),
  /**
   * 定位
   */
  POSITION(18, "position"),

  /**
   * 明细表格
   */
  DETAIL_TABLE(30, "detail_table"),
  /**
   * 手写签名
   */
  HANDWRITING_SIGN(31, "handwriting_sign"),
  /**
   * 日期区间
   */
  DATE_INTERVAL(32, "date_interval"),
  /**
   * 标签
   */
  TAG(33, "field_tag"),
  /**
   * 关注度字段
   */
  ATTENTION(34, "field_attention"),

  /**
   * 唯一编号
   */
  SERIAL_NUMBER(35, "serial_number"),

  /**
   * 计算公式
   */
  FORMULA(36, "formula"),
  /**
   * 经纬度字段类型
   */
  POSITION_LNG_LAT(37, "position_lng_lat"),

  unknown(-1, '');

  const FieldTypeEnum(this.number, this.value);

  final num number;

  final String value;
  static FieldTypeEnum getTypeByTitle(String title) =>
      FieldTypeEnum.values.firstWhere((activity) => activity.name == title,
          orElse: () => FieldTypeEnum.unknown);

  static FieldTypeEnum getType(num number) =>
      FieldTypeEnum.values.firstWhere((activity) => activity.number == number,
          orElse: () => FieldTypeEnum.unknown);

  static String getValue(num number) => FieldTypeEnum.values
      .firstWhere((activity) => activity.number == number,
          orElse: () => FieldTypeEnum.unknown)
      .value;
}
