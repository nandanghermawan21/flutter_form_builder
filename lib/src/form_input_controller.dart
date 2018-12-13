import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/src/form_input_value.dart';

class FormInputController extends ValueNotifier<FormInputVaue> {
  /// Creates a controller for an editable text field.
  ///
  /// This constructor treats a null [text] argument as if it were the empty
  /// string.
  FormInputController({ Map<String, dynamic> formData })
    : super(formData == null ? FormInputVaue.empty : FormInputVaue(formData: formData));

  /// Creates a controller for an editable text field from an initial [FormInputVaue].
  ///
  /// This constructor treats a null [value] argument as if it were
  /// [FormInputVaue.empty].
  FormInputController.formData(FormInputVaue formData)
    : super(formData ?? FormInputVaue.empty);

  /// The current string the user is editing.
  Map<String,dynamic> get formData => value.formData;

  /// Setting this will notify all the listeners of this [FormInputController]
  /// that they need to update (it calls [notifyListeners]). For this reason,
  /// this value should only be set between frames, e.g. in response to user
  /// actions, not during the build, layout, or paint phases.
  set formData(Map<String,dynamic> formData) {
    value = value.copyWith(formData: formData,
                           selection: const TextSelection.collapsed(offset: -1),
                           composing: TextRange.empty);
  }
  
  void clear() {
    value = FormInputVaue.empty;
  }

}


