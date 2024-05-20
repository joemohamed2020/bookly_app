import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/also_like_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating_widget.dart';
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
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.width * 0.284),
                      child:
                          BookWidget(width: MediaQuery.of(context).size.width,image:const AssetImage("assets/images/Book1.png"),),

                    ),
                    const SizedBox(
                      height: 43,
                    ),
                    const Text("The Jungle Book", style: Styles.textStyle30),
                    const SizedBox(
                      height: 8,
                    ),
                    Text("Rudyard Kipling",
                        style: Styles.textStyle18
                            .copyWith(fontStyle: FontStyle.italic)),
                    const SizedBox(
                      height: 16,
                    ),
                    const RatingWidget(
                      axisAlignment: MainAxisAlignment.center,
                    ),
                    const SizedBox(
                      height: 37,
                    ),
                    const BookActionWidget(),
                    const Expanded(
                      child: SizedBox(
                        height: 50,
                      ),
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
                    ),
                    const SizedBox(
                      height: 40,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
