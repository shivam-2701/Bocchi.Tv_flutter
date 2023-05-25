import 'package:anime_api/util/constants.dart';

class Episode {
  final String id;
  final int episode;
  final String image;
  final String? duration;
  final String? createdAt;
  final String? audio;

  const Episode({
    required this.id,
    required this.episode,
    required this.image,
    required this.duration,
    required this.audio,
    required this.createdAt,
  });

  factory Episode.fromJSON({required Map<String, dynamic> dataMap}) {
    return Episode(
      id: dataMap["session"],
      episode: dataMap["episode"],
      image: dataMap["snapshot"] ?? Constants.NOT_FOUND_IMAGE,
      duration: dataMap["duration"],
      audio: dataMap["audio"],
      createdAt: dataMap["created_at"],
    );
  }
}
