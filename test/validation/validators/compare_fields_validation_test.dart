import 'package:test/test.dart';

import 'package:fordev/presentation/protocols/protocols.dart';

import 'package:fordev/validation/validators/validators.dart';

void main() {
  CompareFieldsValidation sut;

  setUp(() {
    sut = CompareFieldsValidation(
      field: 'any_field',
      valueToCompare: 'any_value',
    );
  });

  test('Should return error if values is not equal', () {
    expect(sut.validate('wrong_value'), ValidationError.invalidField);
  });

  test('Should return null if values are equal', () {
    expect(sut.validate('any_value'), null);
  });
}
