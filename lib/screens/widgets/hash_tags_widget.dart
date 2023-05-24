import 'package:flutter/material.dart';
import 'package:oasis_exchange/core/utils/helper.dart';

class HashTagWidget extends StatelessWidget {
  const HashTagWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: ["#2023", "#TODAYISMONDAY", "#TOP", "#POPS!", "#WOW", "#ROW"]
            .map(
              (e) => TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.grey.shade100),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 0)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0),
                      side: BorderSide(
                        color: Helper.chipBorderColor,
                      ),
                    ),
                  ),
                ),
                child: Text(
                  e,
                  style: TextStyle(
                      fontSize: 10,
                      color: Helper.chipTextColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
