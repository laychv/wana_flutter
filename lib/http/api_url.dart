/// 请求地址
class ApiUrl {
  // host
  static const String HOST = "https://www.wanandroid.com/";

  // 1.首页相关
  // 1.1 首页文章列表
  // 方法：GET
  // 参数：页码，拼接在连接中，从0开始。
  static const String ARTICLE_LIST = "article/list/0/json";

  // 1.2 首页banner
  static const String BANNER = "banner/json";

  // 2. 体系
  // 2.1 体系数据
  static const String TREE = "tree/json";
}
