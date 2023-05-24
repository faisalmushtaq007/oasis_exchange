import 'package:flutter/material.dart';
import 'package:oasis_exchange/core/utils/helper.dart';

class PostHeaderWidget extends StatelessWidget {
  const PostHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundColor: Colors.orange.shade100,
              child: InkWell(
                  child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.network(
                    "https://thumb.ac-illust.com/5a/5a0b9f1ca516896ae015342d6248e35c_w.png"),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "안녕 나 응애",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Helper.titleColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Helper.primary,
                        child: const Icon(
                          Icons.check,
                          size: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      '1 스와미',
                      style:
                          TextStyle(color: Helper.subtitleColor, fontSize: 10),
                    )
                  ],
                ),
                Text(
                  "163cm . 56kg",
                  style: TextStyle(color: Helper.subtitleColor, fontSize: 12),
                ),
              ],
            ),
          ),
          const Spacer(),
          MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              color: Helper.primary,
              child: const Text(
                "스와미",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
