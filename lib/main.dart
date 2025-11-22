import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/data/datasources/local_video_posts_datasource_impl.dart';
import 'package:toktik/data/repositories/video_posts_repository_impl.dart';
import 'package:toktik/domain/repositories/video_posts_repository.dart';
import 'package:toktik/presentation/screens/discover/widgets/discover_screen.dart';
import 'package:toktik/presentation/screens/discover/view_models/discover_view_model.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Dependency injection: Create repository instance
    
    final VideoPostsRepository videoPostsRepository = VideoPostsRepositoryImpl(
      datasource: LocalVideoPostsDatasourceImpl()
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DiscoverViewModel(
            videoPostsRepository: videoPostsRepository,
          )..loadNextPage(),
        ),
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: const DiscoverScreen(),
      ),
    );
  }
}
