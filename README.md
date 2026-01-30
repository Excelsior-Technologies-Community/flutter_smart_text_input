# Flutter Smart Text Input

Flutter Smart Text Input is a reusable widget that provides smart text fields with built-in validations and clean UI.

It helps you avoid writing repetitive validation logic for common inputs like email, phone, and password.

---

## Feature Preview

- Email validation
- Phone number validation
- Password field with show/hide toggle
- Required field validation
- Minimum length validation
- Clean Material UI

---
## Preview 
// upload a screen record and drop here 
---
## 📦 Installation
Add this to your pubspec.yaml:
```
dependencies:
  flutter_image_compression:
    git:
      url: https://github.com/Excelsior-Technologies-Communitye/flutter_smart_text_field.git
```
then run:
```
flutter pub get
```
---
## File Structure
```
smart_text_input/
│
├─ lib/
│   ├─ smart_text_input.dart        # Main library file
│   │
│   └─ src/
│       ├─ smart_text_field.dart    # SmartTextInput widget
│       ├─ validators.dart          # SmartValidators class
│       └─ input_types.dart         # SmartInputType enum
│
├─ example/
│   └─ main.dart                    # Example usage
│
├─ pubspec.yaml
├─ README.md
└─ LICENSE

```
---
## Usage
```
import 'package:flutter/material.dart';
import 'package:smart_text_input/smart_text_input.dart';

class MyForm extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SmartTextInput(
            controller: emailController,
            label: "Email",
            type: SmartInputType.email,
            isRequired: true,
          ),

          SizedBox(height: 16),

          SmartTextInput(
            controller: passwordController,
            label: "Password",
            type: SmartInputType.password,
            minLength: 6,
            isRequired: true,
          ),
        ],
      ),
    );
  }
}

```
---
## SmartTextInput Properties

| Property     | Type                  | Required | Description |
|-------------|------------------------|----------|-------------|
| controller  | TextEditingController | Yes      | Controls the input text |
| label       | String                | Yes      | Label text shown above field |
| type        | SmartInputType        | No       | Input type (default: `text`) |
| isRequired  | bool                  | No       | Enables required validation |
| minLength   | int?                  | No       | Minimum length (for password/text) |

---
## MIT License

```
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this Flutter Image Compression library and associated documentation files
(the “Software”), to deal in the Software without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES, OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT, OR OTHERWISE, ARISING FROM,
OUT OF, OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
