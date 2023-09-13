import 'package:flutter/cupertino.dart';

class CustomIosSwitch extends StatelessWidget {
  const CustomIosSwitch({
    Key? key,
    required this.onChanged,
    required this.value,
  }) : super(key: key);

  final void Function(bool) onChanged;
  final bool value;
  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(value: value, onChanged: onChanged);
  }
}
