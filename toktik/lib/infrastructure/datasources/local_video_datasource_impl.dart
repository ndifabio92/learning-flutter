import 'package:toktik/domain/datasources/videos_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoDatasource implements VideosPostsDatasource {
  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    // TODO: implement getTrendingVideosByPage
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByUser(String userId) {
    // TODO: implement getTrendingVideosByUser
    throw UnimplementedError();
  }
}
