import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_pertama/app/data/services/http_controller.dart'; 
import '../../componets/card_article.dart'; 

class HttpView extends GetView<HttpController> {
  const HttpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HTTP'),
      ),
      backgroundColor: const Color.fromARGB(255, 99, 152, 196),
      body: Obx(() {
        if (controller.isLoading.value) {
          // Display a progress indicator while loading
          return Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).colorScheme.secondary,)
              ),
            );
        } else {
          // Display the list of articles
          return ListView.builder(
            shrinkWrap: true,
            itemCount: controller.articles.length,
            itemBuilder: (context, index) {
              var article = controller.articles[index];
              return CardArticle(article: article);
            },
          );
        }
      }));
  }
}
