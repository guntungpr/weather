import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';
import 'package:weather/domain/core/failures.dart';
import 'package:weather/domain/core/value_objects.dart';

// disini logic/inputan
class KelvinToCelcius extends ValueObjects<double> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory KelvinToCelcius(double input) {
    final celcius = (input - 273.15).toStringAsFixed(1);
    return KelvinToCelcius._(right(celcius));
  }

  const KelvinToCelcius._(this.value);
}

class GetDateTimeNow extends ValueObjects<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory GetDateTimeNow() {
    return GetDateTimeNow._(
      right(
        DateFormat('yyyy-MM-dd – HH:mm:ss').format(DateTime.now()),
      ),
    );
  }

  const GetDateTimeNow._(this.value);
}
