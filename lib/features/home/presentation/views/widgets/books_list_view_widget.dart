import 'package:bookly_app/features/home/presentation/views/widgets/book_widget.dart';
import 'package:flutter/material.dart';

class BooksListViewWidget extends StatelessWidget {
  const BooksListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 180,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return const BookWidget(
              playbutton: true,
            );
          },
        ));
  }
}
