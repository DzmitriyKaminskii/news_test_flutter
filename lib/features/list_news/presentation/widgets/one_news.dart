import 'package:flutter/material.dart';
import 'package:news_test_flutter/theme/dimensions.dart';
import 'package:news_test_flutter/theme/padding_edge.dart';

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
      color: Theme.of(context).colorScheme.onSecondaryContainer,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.cardBorderRadius),
          side: BorderSide(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            width: Dimensions.cardBorderSideWidth,
          )),
      child: Padding(
        padding: PaddingEdge.allTen,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: PaddingEdge.leftTen,
              child: SizedBox(
                width: Dimensions.newsTextWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: Theme.of(context).textTheme.headline4,
                        overflow: TextOverflow.ellipsis),
                    const SizedBox(
                      height: Dimensions.defaultSpacer,
                    ),
                    Text(subTitle,
                        style: Theme.of(context).textTheme.headline5,
                        overflow: TextOverflow.ellipsis),
                    const SizedBox(
                      height: Dimensions.defaultSpacer,
                    ),
                    Text('By: $sources',
                        style: Theme.of(context).textTheme.headline6,
                        overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
            ),
            imageSrc.isNotEmpty
                ? Image.network(
                    imageSrc,
                    height: Dimensions.newsImageSize,
                    width: Dimensions.newsImageSize,
                  )
                : Image.asset(
                    'assets/noimage.png',
                    height: Dimensions.newsImageSize,
                    width: Dimensions.newsImageSize,
                  ),
          ],
        ),
      ),
    );
  }
}
