import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/src/form_input_value.dart';

class FormInputController extends ValueNotifier<FormInputValue> {
  /// Creates a controller for an editable text field.
  ///
  /// This constructor treats a null [text] argument as if it were the empty
  /// string.
  FormInputController({ dynamic value })
    : super(value == null ? FormInputValue.empty() : FormInputValue(value));

  /// Creates a controller for an editable text field from an initial [FormInputValue].
  ///
  /// This constructor treats a null [value] argument as if it were
  /// [FormInputValue.empty].
  FormInputController.fromValue(FormInputValue value)
    : super(value ?? FormInputValue.empty());

  /// The current string the user is editing.
  dynamic get getValue => value.value;
  /// Setting this will notify all the listeners of this [FormInputController]
  /// that they need to update (it calls [notifyListeners]). For this reason,
  /// this value should only be set between frames, e.g. in response to user
  /// actions, not during the build, layout, or paint phases.
  set setValue(dynamic newvalue) {
    value = value.copyWith(value: newvalue);                      
  }


  

  /// Set the [value] to empty.
  ///
  /// After calling this function, [text] will be the empty string and the
  /// selection will be invalid.
  ///
  /// Calling this will notify all the listeners of this [FormInputController]
  /// that they need to update (it calls [notifyListeners]). For this reason,
  /// this method should only be called between frames, e.g. in response to user
  /// actions, not during the build, layout, or paint phases.
  void clear() {
    value = FormInputValue.empty();
  }

  
}