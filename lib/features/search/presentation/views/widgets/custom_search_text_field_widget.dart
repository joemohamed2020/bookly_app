import 'package:flutter/material.dart';

class CustomSearchTextFieldWidget extends StatelessWidget {
  const CustomSearchTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          size: 28,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
    );
  }
}
