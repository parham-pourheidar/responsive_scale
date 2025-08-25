# ContextSizeExtensions

A lightweight Flutter extension on `BuildContext` that helps you build responsive UIs effortlessly.  
With `ContextSizeExtensions`, you can scale width, height, font size, icons, and padding proportionally based on the current screen size – without writing repetitive `MediaQuery` logic.

---

## ✨ Features

- 🔹 Scale width relative to screen width (`context.w()`)
- 🔹 Scale height relative to screen height (`context.h()`)
- 🔹 Scale font size & icons with balanced screen scaling (`context.s()`)
- 🔹 Responsive symmetric padding (`context.symmetric()`)
- 🔹 Clean and intuitive API
- 🔹 No external dependencies

---

## 🚀 Usage

```dart
import 'package:flutter/material.dart';
import 'package:context_size_extensions/context_size_extensions.dart';

class DemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: context.w(50),
        height: context.h(50),
        child: Padding(
          padding: context.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'Responsive Text',
            style: TextStyle(fontSize: context.s(16)),
          ),
        ),
      ),
    );
  }
}
```

---

## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  context_size_extensions: ^1.0.0
