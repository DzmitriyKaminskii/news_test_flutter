import 'package:equatable/equatable.dart';

class News extends Equatable {
  final String title;
  final String? description;
  final String sources;
  final String? imageScr;

  const News(
      {required this.title,
      required this.description,
      required this.sources,
      required this.imageScr});

  @override
  List<Object?> get props => [title, description, sources, imageScr];
}
