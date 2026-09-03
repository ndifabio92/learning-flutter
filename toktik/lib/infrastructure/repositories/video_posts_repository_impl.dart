import 'package:toktik/domain/datasources/videos_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/videos_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideosPostsRepository {
  final VideosPostsDatasource videosDataSource;

  VideoPostsRepositoryImpl({required this.videosDataSource});

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDataSource.getTrendingVideosByPage(page);
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByUser(String userId) {
    // TODO: implement getTrendingVideosByUser
    throw UnimplementedError();
  }
}
