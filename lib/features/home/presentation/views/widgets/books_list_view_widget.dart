import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/manager/books_list_cubit/books_list_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListViewWidget extends StatelessWidget {
  const BooksListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksListCubit, BooksListState>(
      builder: (context, state) {
        if (state is BooksListFailure) {
          return Text(state.message);
        } else if (state is BooksListSuccess) {
          return SizedBox(
              height: MediaQuery.of(context).size.width * 0.4 * (1 / aspect),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return BookWidget(
                    width: MediaQuery.of(context).size.width * 0.4,
                    playbutton: true,
                    image: NetworkImage(
                        state.books[index].volumeInfo!.imageLinks!.thumbnail!),
                  );
                },
              ));
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
