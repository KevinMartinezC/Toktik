import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/screens/discover/widgets/discover_screen.dart';
import 'package:toktik/presentation/screens/discover/view_models/discover_view_model.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => DiscoverViewModel()..loadNextPage())],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: const DiscoverScreen(),
      ),
    );
  }
}
