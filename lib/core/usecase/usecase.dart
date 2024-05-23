import 'package:fpdart/fpdart.dart';
import '../error/failure.dart';

/// [UseCase] is an abstract class that defines a contract for a use case.
/// A use case is a class that contains the business logic of an application.
/// It is responsible for executing a single task or operation.
///
/// They follow ***Open-Closed Single Responsiblity***, which means they are `open for extension but closed for modification`. And they have a single responsibility.
///
///
/// [UseCase] class has two type parameters: [SuccessType] and [Params].
/// [SuccessType] is the type of the result that the use case will return.
/// [Params] is the type of the parameters that the use case will take.
///
/// UseCase class has a single method called call.
/// The call method takes a single parameter of type [Params] and returns a Future of Either<[Failure], [SuccessType]>.
/// The call method is responsible for executing the business logic of the use case.
///
/// It should return a Right<[SuccessType]> if the operation is successful, or a Left<[Failure]> if the operation fails.
/// The UseCase class is a generic class that can be extended to create concrete use cases.
abstract interface class UseCase<SuccessType, Params> {
  /// Executes the business logic of the use case.
  ///
  /// The [params] parameter represents the input parameters for the use case.
  /// Returns a [Future] that resolves to an [Either] object, which can be either a [Failure] or a [SuccessType].
  Future<Either<Failure, SuccessType>> call(Params params);
}

/// [NoParams] is a class that represents no parameters for a use case.
class NoParams {}
