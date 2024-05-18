import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'islamic_books_list_state.dart';

class IslamicBooksListCubit extends Cubit<IslamicBooksListState> {
  IslamicBooksListCubit(this.homeRepo) : super(IslamicBooksListInitial());
  final HomeRepo homeRepo;
  Future<void> fetchIslamicBooks() async {
    emit(IslamicBooksListLoading());
    var output = await homeRepo.fetchIslamicBooksListView();
    output.fold(
        (failure) =>
            emit(IslamicBooksListFailure(message: failure.errorMessage)),
        (booksList) => booksList);
  }
}
