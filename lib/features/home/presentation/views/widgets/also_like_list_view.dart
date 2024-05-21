import 'package:bookly_app/features/home/presentation/views/widgets/book_widget.dart';
import 'package:flutter/material.dart';

class AlsoLikeListView extends StatelessWidget {
  const AlsoLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return BookWidget(
              width: MediaQuery.of(context).size.width * 0.19,
              image:"https://st.depositphotos.com/1741875/1237/i/380/depositphotos_12376816-stock-photo-stack-of-old-books.jpg");
        },
      ),
    );
  }
}
