import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_tile_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top: 16, left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBarWidget(),
                SizedBox(
                  height: 32,
                ),
                BooksListViewWidget(),
                SizedBox(
                  height: 32,
                ),
                Text(
                  "Best Seller",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 16,
                ),
                CustomListTile()
              ],
            )),
      ),
    );
  }
}


// Padding(
//                 padding: const EdgeInsets.only(right: 32.0),
//                 child: ListTile(
//                   title: const Text(
//                     "Harry Potter",
//                     style: TextStyle(
//                         fontFamily: "GT-Sectra-Fine",
//                         fontSize: 20,
//                         color: Colors.white),
//                   ),
//                   subtitle: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         "and the Goblet of Fire",
//                         style: TextStyle(
//                             fontFamily: "GT-Sectra-Fine",
//                             fontSize: 20,
//                             color: Colors.white),
//                       ),
//                       const Text(
//                         "J.K. Rowling",
//                         style: TextStyle(
//                           fontFamily: "Montserrat",
//                           fontWeight: FontWeight.w500,
//                           fontSize: 14,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 4.0),
//                         child: Row(
//                           children: [
//                             const Text(
//                               "19.99€",
//                               style: TextStyle(
//                                   fontSize: 20,
//                                   color: Colors.white,
//                                   fontFamily: "Montserrat",
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             const Spacer(
//                               flex: 5,
//                             ),
//                             IconButton(
//                                 onPressed: () {},
//                                 icon: const Icon(
//                                   Icons.star,
//                                   color: Colors.amber,
//                                 )),
//                             const Text(
//                               "4.5",
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   color: Colors.white,
//                                   fontFamily: "Montserrat",
//                                   fontWeight: FontWeight.w500),
//                             ),
//                             const Spacer(
//                               flex: 1,
//                             ),
//                             const Text(
//                               "(52145)",
//                               style: TextStyle(
//                                   fontSize: 14, fontFamily: "Montserrat"),
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                   leading: Container(
//                     height: 105,
//                     width: 70,
//                     decoration: const BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage("assets/images/Book3.png"),
//                             fit: BoxFit.cover)),
//                   ),
//                 ),
//               )
