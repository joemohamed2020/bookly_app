part of 'books_list_cubit.dart';

sealed class BooksListState extends Equatable {
  const BooksListState();

  @override
  List<Object> get props => [];
}

final class BooksListInitial extends BooksListState {}

final class BooksListLoading extends BooksListState {}

final class BooksListSuccess extends BooksListState {
  final List<BookModel> books;
  const BooksListSuccess({required this.books});
}

final class BooksListFailure extends BooksListState {
  final String message;
  const BooksListFailure({required this.message});
}
