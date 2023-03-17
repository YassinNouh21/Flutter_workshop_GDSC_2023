import 'package:flutter/material.dart';

//& extension + nameOfExtension + on + the entity you want

extension MediaQueryData on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  Size get sizeOfScreen => MediaQuery.of(this).size;
}

//^ used example : context.height
