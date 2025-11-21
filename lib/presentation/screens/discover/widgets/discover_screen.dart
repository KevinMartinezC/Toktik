import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/screens/discover/view_models/discover_view_model.dart';
import 'package:toktik/presentation/widgets/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<DiscoverViewModel>();
    return Scaffold(
      body: viewModel.initialLoading
          ? const Center(child: CircularProgressIndicator(strokeWidth: 2))
          : VideoScrollableView(videos: viewModel.videos),
    );
  }
}
