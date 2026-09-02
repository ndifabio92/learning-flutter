import 'package:toktik/domain/entities/video_post.dart';

abstract class VideosPostsRepository {
  Future<List<VideoPost>> getTrendingVideosByUser(String userId);
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
}
