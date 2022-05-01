import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'By: $sources',
                    style: TextStyle(
                      color: Colors.purple[400],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              imageSrc,
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
