import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_tile_widget.dart';
import 'package:flutter/material.dart';

class SearchListViewWidget extends StatelessWidget {
  const SearchListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: CustomListTile(),
        );
      },
    );
  }
}
