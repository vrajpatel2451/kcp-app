import 'package:kcp_app/domain/core/failures.dart';

class UnExpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnExpectedValueError(this.valueFailure);

  @override
  String toString() {
    return 'Encountered some failure at an unrecoverable point. Terminatting. Failure: $valueFailure';
  }
}
