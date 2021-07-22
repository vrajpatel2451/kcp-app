import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kcp_app/domain/core/failures.dart';
import 'package:kcp_app/domain/core/value_objects.dart';
import 'package:kcp_app/domain/core/value_validator.dart';

class EmailAddress extends ValueObjects<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value) : assert(value != null);
}

class Password extends ValueObjects<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(validatePassword(input));
  }

  const Password._(this.value) : assert(value != null);
}
