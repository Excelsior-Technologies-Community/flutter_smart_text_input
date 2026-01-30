class SmartValidators {
  static String? required(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "This field is required";
    }
    return null;
  }

  static String? email(String? value) {
    if (value == null || value.isEmpty) return null;
    final regex = RegExp(r'^[\w\.-]+@[\w\.-]+\.\w+$');
    if (!regex.hasMatch(value)) {
      return "Invalid email address";
    }
    return null;
  }

  static String? phone(String? value) {
    if (value == null || value.isEmpty) return null;
    if (value.length != 10) {
      return "Invalid phone number";
    }
    return null;
  }

  static String? minLength(String? value, int min) {
    if (value != null && value.length < min) {
      return "Minimum $min characters required";
    }
    return null;
  }
}
