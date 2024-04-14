import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 16, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBarWidget(),
              SizedBox(
                height: 32,
              ),
              BooksListViewWidget(),
              SizedBox(
                height: 48,
              ),
              Text(
                "Best Seller",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
