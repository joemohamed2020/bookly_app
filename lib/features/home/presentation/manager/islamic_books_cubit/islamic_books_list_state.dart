part of 'islamic_books_list_cubit.dart';

sealed class IslamicBooksListState extends Equatable {
  const IslamicBooksListState();

  @override
  List<Object> get props => [];
}

final class IslamicBooksListInitial extends IslamicBooksListState {}

final class IslamicBooksListLoading extends IslamicBooksListState {}

final class IslamicBooksListSuccess extends IslamicBooksListState {
  final List<BookModel> books;
  const IslamicBooksListSuccess({required this.books});
}

final class IslamicBooksListFailure extends IslamicBooksListState {
  final String message;
  const IslamicBooksListFailure({required this.message});
}
