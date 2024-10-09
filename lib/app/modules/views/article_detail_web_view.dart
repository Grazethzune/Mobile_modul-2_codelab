import 'package:codelab_modul2/app/data/models/article.dart';
import 'package:codelab_modul2/app/modules/article_detail/controllers/article_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class ArticleDetailWebView extends GetView<ArticleDetailController> {
  final ArticleElement article;
  const ArticleDetailWebView({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("WebView"),
        ),
        body: WebViewWidget(
          controller: controller.webViewController(article.url),
        ));
  }
}
