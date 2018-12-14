class FormInputValue {
  dynamic value;

  FormInputValue.empty() {
    FormInputValue(null);
  }

  FormInputValue(this.value);

  FormInputValue copyWith({dynamic value}) {
    return FormInputValue(value);
  }
}
