import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationCodeSection extends StatelessWidget {
  const VerificationCodeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 64,
              height: 68,
              child: TextFormField(
                onSaved: (pin1) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: '0',
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.3))),
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
                onTapOutside: (_) {
                  FocusScope.of(context).unfocus();
                },
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            SizedBox(
              width: 64,
              height: 68,
              child: TextFormField(
                cursorColor: Colors.grey,
                onSaved: (pin1) {},
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: '1',
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.3)),
                ),
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
                onTapOutside: (_) {
                  FocusScope.of(context).unfocus();
                },
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            SizedBox(
              width: 64,
              height: 68,
              child: TextFormField(
                onSaved: (pin1) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: '2',
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.3))),
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
                onTapOutside: (_) {
                  FocusScope.of(context).unfocus();
                },
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            SizedBox(
              width: 64,
              height: 68,
              child: TextFormField(
                onSaved: (pin1) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: '3',
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.3))),
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
                onTapOutside: (_) {
                  FocusScope.of(context).unfocus();
                },
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
