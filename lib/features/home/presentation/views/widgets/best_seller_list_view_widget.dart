import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_tile_widget.dart';
import 'package:flutter/material.dart';

class BestSellerListViewWidget extends StatelessWidget {
  const BestSellerListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: CustomListTile(),
        );
      },
    );
  }
}
