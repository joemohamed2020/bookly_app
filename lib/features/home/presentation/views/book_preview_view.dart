import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/also_like_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookPreviewView extends StatelessWidget {
  const BookPreviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kBackgroundColor,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: IconButton(
              icon: const Icon(Icons.close),
              iconSize: 30,
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Icon(
                  Icons.shopping_cart,
                  size: 25,
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 36),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.284),
                  child: BookWidget(width: MediaQuery.of(context).size.width),
                ),
                const SizedBox(
                  height: 45,
                ),
                const Text("The Jungle Book", style: Styles.textStyle30),
                const SizedBox(
                  height: 8,
                ),
                const Text("Rudyard Kipling", style: Styles.textStyle18),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                    ),
                    const Text("4.5", style: Styles.textStyle16),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text("(52145)", style: Styles.textStyle14),
                  ],
                ),
                const SizedBox(
                  height: 37,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      color: Colors.white,
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.4,
                      leftRadius: 20,
                      text: "19.99 €",
                      style: Styles.textStyle18.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    CustomButton(
                      color: const Color(0xffEF8262),
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.4,
                      rightRadius: 20,
                      text: "Free preview",
                      style: Styles.textStyle16.copyWith(
                          color: Colors.white,
                          fontFamily: gilroyFont,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      "You can also like",
                      style: Styles.textStyle14
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: AlsoLikeListView(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
