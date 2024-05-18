import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'books_list_state.dart';

class BooksListCubit extends Cubit<BooksListState> {
  BooksListCubit(this.homeRepo) : super(BooksListInitial());
  final HomeRepo homeRepo;
  Future<void> fetchBooksList() async {
    emit(BooksListLoading());
    var output = await homeRepo.fetchBooksListViewWidget();
    output.fold(
        (fialure) => emit(BooksListFailure(message: fialure.errorMessage)),
        (booksList) => emit(BooksListSuccess(books: booksList)));
  }
}
