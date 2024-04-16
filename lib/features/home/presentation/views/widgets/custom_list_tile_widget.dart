import 'package:bookly_app/features/home/presentation/views/widgets/book_widget.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        BookWidget(),
        SizedBox(
          width: 32,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Harry Potter",
                style: TextStyle(
                    fontFamily: "GT-Sectra-Fine",
                    fontSize: 20,
                    color: Colors.white),
              ),
              Text(
                "and the Goblet of Fire",
                style: TextStyle(
                    fontFamily: "GT-Sectra-Fine",
                    fontSize: 20,
                    color: Colors.white),
              ),
              Text(
                "J.K. Rowling",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4.0, right: 64),
                child: Row(
                  children: [
                    Text(
                      "19.99€",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(
                      flex: 5,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text(
                      "4.5",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      "(52145)",
                      style: TextStyle(fontSize: 14, fontFamily: "Montserrat"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
