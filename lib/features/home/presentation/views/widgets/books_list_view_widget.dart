import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_widget.dart';
import 'package:flutter/material.dart';

class BooksListViewWidget extends StatelessWidget {
  const BooksListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.width * 0.4 * (1/aspect),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return BookWidget(
              width: MediaQuery.of(context).size.width * 0.4,
              playbutton: true,
            );
          },
        ));
  }
}
