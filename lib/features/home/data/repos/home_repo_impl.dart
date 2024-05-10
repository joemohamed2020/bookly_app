import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerListView() {
    // TODO: implement fetchBestSellerListView
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBooksListViewWidget() {
    // TODO: implement fetchBooksListViewWidget
    throw UnimplementedError();
  }

}