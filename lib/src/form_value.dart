import 'package:flutter/cupertino.dart';

class FormValue {
  /// Creates information for editing a run of text.
  ///
  /// The selection and composing range must be within the data.
  ///
  /// The [text], [selection], and [composing] arguments must not be null but
  /// each have default values.
  FormValue(
      {this.formData,
      this.selection = const TextSelection.collapsed(offset: -1),
      this.composing = TextRange.empty});

    /// The current data being edited.
  Map<String, dynamic> formData;

  /// The range of text that is currently selected.
  final TextSelection selection;

  /// The range of text that is still being composed.
  final TextRange composing;

  /// A value that corresponds to the empty string with no selection and no composing range.
  static FormValue empty = FormValue(
    formData: {}
  );

  /// Creates a copy of this value but with the given fields replaced with the new values.
  FormValue copyWith(
      {Map<String,dynamic> formData, TextSelection selection, TextRange composing}) {
    return FormValue(
        formData: formData ?? this.formData,
        selection: selection ?? this.selection,
        composing: composing ?? this.composing);
  }

  @override
  bool operator == (dynamic other) {
    if (identical(this, other)) return true;
    if (other is! FormValue) return false;
    final FormValue typedOther = other;
    return typedOther.formData == formData &&
        typedOther.selection == selection &&
        typedOther.composing == composing;
  }

  @override
  int get hashCode =>
      hashValues(formData.hashCode, selection.hashCode, composing.hashCode);
}

class _toTextAffinity {
  _toTextAffinity(encoded);
}
