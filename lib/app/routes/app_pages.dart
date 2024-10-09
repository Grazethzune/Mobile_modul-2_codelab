import 'package:codelab_modul2/app/modules/article_detail/views/article_detail_web_view.dart';
import 'package:codelab_modul2/app/modules/bindings/home_binding.dart';
import 'package:codelab_modul2/app/modules/homes/views/home_view.dart';
import 'package:codelab_modul2/app/modules/http_screen/bindings/http_binding.dart';
import 'package:codelab_modul2/app/modules/http_screen/views/http_view.dart';
import 'package:codelab_modul2/app/modules/views/article_detail_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
        name: _Paths.HTTP,
        page: () => const HttpView(),
        binding: HttpBinding()),
    GetPage(
      name: _Paths.ARTICLE_DETAILS,
      page: () => ArticleDetailPage(article: Get.arguments),
    ),
    GetPage(
      name: _Paths.ARTICLE_DETAILS_WEBVIEW,
      page: () => ArticleDetailWebView(article: Get.arguments),
    )
  ];
}
