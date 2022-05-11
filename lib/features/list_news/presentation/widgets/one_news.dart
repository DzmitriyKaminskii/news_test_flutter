import 'package:flutter/material.dart';
import 'package:news_test_flutter/theme/padding_edge.dart';
import 'package:news_test_flutter/theme/theme_text.dart';

class OneNews extends StatelessWidget {
  const OneNews(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.sources,
      required this.imageSrc})
      : super(key: key);

  final String title;
  final String subTitle;
  final String sources;
  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.grey[400] ?? Colors.grey,
            width: 2.0,
          )),
      child: Padding(
        padding: PaddingEdge.allTen,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: PaddingEdge.leftTen,
              child: SizedBox(
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: ThemeText.newsTitle,
                        overflow: TextOverflow.ellipsis),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(subTitle,
                        style: ThemeText.newsSubTitle,
                        overflow: TextOverflow.ellipsis),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text('By: $sources',
                        style: ThemeText.newsSource,
                        overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
            ),
            imageSrc.isNotEmpty
                ? Image.network(
                    imageSrc,
                    height: 100,
                    width: 100,
                  )
                : Image.asset(
                    'assets/noimage.png',
                    height: 100,
                    width: 100,
                  ),
          ],
        ),
      ),
    );
  }
}
