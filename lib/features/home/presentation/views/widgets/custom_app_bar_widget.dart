import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Image(
          image: AssetImage(logo),
          height: 20,
        ),
        const Spacer(
          flex: 50,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 35,
            )),
        const Spacer(
          flex: 1,
        )
      ],
    );
  }
}
