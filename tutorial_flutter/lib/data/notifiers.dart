//ValueNotifier: hold the data
//ValueListenableBuilder: listen to the changes of the data and rebuild the widget (dont need to use setState)

import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
ValueNotifier<bool> isDarkModeNotifier = ValueNotifier(true);
