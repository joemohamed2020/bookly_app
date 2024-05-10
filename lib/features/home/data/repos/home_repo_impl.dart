import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/book_api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  BookApiService bookApiService;
  HomeRepoImpl(this.bookApiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchIslamicBooksListView() async {
    try {
      var data = await bookApiService.fetchBooks(
          endPoint: "volumes?q=Mohamed The Messanger");
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBooksListViewWidget() {
    // TODO: implement fetchBooksListViewWidget
    throw UnimplementedError();
  }
}
