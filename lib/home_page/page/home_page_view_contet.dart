import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gaming_shop_ui/auth/root_page/cubit/root_page_cubit.dart';
import 'package:gaming_shop_ui/guides/guides_view.dart';
import 'package:gaming_shop_ui/home_page/view_contents/hits_of_the_week_view_content.dart';
import 'package:gaming_shop_ui/home_page/view_contents/last_watched_view_content.dart';
import 'package:gaming_shop_ui/home_page/view_contents/photo_gallery_view.dart';
import 'package:gaming_shop_ui/home_page/view_contents/recomend_view_content.dart';
import 'package:gaming_shop_ui/home_page/widgets/text_field.dart';

class HomePageViewContent extends StatelessWidget {
  const HomePageViewContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RootPageCubit(),
      child: BlocBuilder<RootPageCubit, RootPageState>(
        builder: (context, state) {
          return ListView(
            children: [
              const TextFieldContent(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: PhotoGalleryPage(),
              ),
              const RecomendViewContent(),
              const GuidesView(),
              const HitsOfTheWeekViewContent(),
              const LastWatchedViewContent(),
            ],
          );
        },
      ),
    );
  }
}
