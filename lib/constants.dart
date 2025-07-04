import 'package:flutter/material.dart';

const InputDecoration kTaskTextFieldDecoration = InputDecoration(
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 4.0),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.lightBlueAccent,
      width: 4.5,
    ), // Make it thicker when focused
  ),
  // Color of the line when there's an error
  errorBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 4.0),
  ),
  // Color of the line when there's an error and it's focused
  focusedErrorBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 4.5),
  ),
);

const kFillButtonStyle = ButtonStyle(
  backgroundColor: WidgetStatePropertyAll<Color?>(Colors.lightBlueAccent),
  foregroundColor: WidgetStatePropertyAll<Color?>(Colors.white),
  shape: WidgetStatePropertyAll<OutlinedBorder?>(
    RoundedRectangleBorder(borderRadius: BorderRadius.zero),
  ),
);

// FilledButton.styleFrom(
//   backgroundColor: Colors.lightBlueAccent,
//   foregroundColor: Colors.white,
//   shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
// );
