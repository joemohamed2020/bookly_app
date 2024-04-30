import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 16),
            child: Image(
              image: AssetImage(logo),
              height: 20,
            ),
          ),
          backgroundColor: kBackgroundColor,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0, top: 16),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 28,
                  )),
            )
          ],
        ),
        body:
            const CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 32,
                ),
                BooksListViewWidget(),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text(
                    "Best Seller",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(right: 47, left: 30),
              child: BestSellerListViewWidget(),
            ),
          )
        ]),
      ),
    );
  }
}
