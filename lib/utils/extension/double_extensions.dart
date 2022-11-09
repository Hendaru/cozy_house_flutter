import 'package:flutter/material.dart';

extension DoubleExtensions on double? {
  /// Validate given bool is not null and returns given value if null.
  double validate({double value = 0.0}) => this ?? value;

  Widget get height => SizedBox(height: this?.toDouble());

  Widget get width => SizedBox(width: this?.toDouble());
}
