import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field_widget.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_list_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(left: 30.0, right: 30, top: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(
                  Icons.close,
                  size: 32,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomSearchTextFieldWidget(),
              const SizedBox(
                height: 20,
              ),
              const Expanded(child: SearchListViewWidget())
            ],
          ),
        ),
      ),
    );
  }
}
