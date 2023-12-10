import 'package:flutter/material.dart';
import 'package:reviewapps/models/food_models.dart';
import 'package:reviewapps/widget/custom_tag.dart';
import 'package:reviewapps/widget/image_container.dart';

class ArticleScreen extends StatelessWidget {
  var foodDetail;
  ArticleScreen({Key? key, this.foodDetail}) : super(key: key);

  static const routeName = '/Article';
  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      width: double.infinity,
      imageUrl: foodDetail['imageUrl'],
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            _FoodHeadline(article: foodDetail),
            _FoodBody(article: foodDetail)
          ],
        ),
      ),
    );
  }
}

class _FoodBody extends StatelessWidget {
  _FoodBody({
    Key? key,
    this.article,
  }) : super(key: key);

  var article;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomTag(
                backgroundColor: Color.fromARGB(255, 24, 100, 5),
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: NetworkImage(
                        // article.authorImageUrl,
                        article['authorImageUrl']),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    // article.author,
                    article['author'],
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              CustomTag(
                backgroundColor: Color.fromARGB(255, 24, 100, 5),
                children: [
                  const Icon(
                    Icons.timer,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    // '${DateTime.now().difference(article.createdAt).inHours}h',
                    '',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(width: 10),
              CustomTag(
                backgroundColor: Color.fromARGB(255, 24, 100, 5),
                children: [
                  const Icon(
                    Icons.remove_red_eye,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    // '${article.views}',
                    article['views'],
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            // article.title,
            article['title'],
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(
            // article.body,
            article['body'],
            style:
                Theme.of(context).textTheme.bodyMedium!.copyWith(height: 1.5),
          ),
          const SizedBox(height: 20),
          GridView.builder(
              shrinkWrap: true,
              itemCount: 2,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.25,
              ),
              itemBuilder: (context, index) {
                return ImageContainer(
                  width: MediaQuery.of(context).size.width * 0.42,
                  // imageUrl: article.imageUrl,
                  imageUrl: article['imageUrl'],
                  margin: const EdgeInsets.only(right: 5.0, bottom: 5.0),
                );
              })
        ],
      ),
    );
  }
}

class _FoodHeadline extends StatelessWidget {
  _FoodHeadline({
    Key? key,
    this.article,
  }) : super(key: key);

  var article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          CustomTag(
            backgroundColor:
                const Color.fromARGB(255, 104, 102, 102).withAlpha(150),
            children: [
              Text(
                // article.category,
                article['category'],
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            // article.title,
            article['title'],
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.25,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            // article.subtitle,
            article['subtitle'],
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
