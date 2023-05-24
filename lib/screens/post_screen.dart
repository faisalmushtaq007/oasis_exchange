import 'package:flutter/material.dart';
import 'package:oasis_exchange/core/utils/helper.dart';
import 'package:oasis_exchange/screens/widgets/hash_tags_widget.dart';
import 'package:oasis_exchange/screens/widgets/image_slider_widget.dart';
import 'package:oasis_exchange/screens/widgets/post_user_header_widget.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({
    super.key,
  });

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 30,
          color: Colors.grey,
        ),
        title: const Text("자유톡"),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.notifications_none_rounded,
            size: 30,
            color: Colors.grey,
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              color: Colors.white,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PostHeaderWidget(),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        '지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?',
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        '후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이제일 재밌었다던데 맞아???\n'
                        '\n'
                        '올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가아닌 사람들도 잘\n'
                        '\n'
                        ' 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const HashTagWidget(),
                    const ImageSliderWidget(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  color: Helper.subtitleColor,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '5',
                                  style: TextStyle(color: Helper.subtitleColor),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.message_outlined,
                                  color: Helper.subtitleColor,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '5',
                                  style: TextStyle(color: Helper.subtitleColor),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.bookmark_border_rounded,
                              color: Helper.subtitleColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.more_horiz,
                              color: Helper.subtitleColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.orange.shade100,
                            child: InkWell(
                                child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Image.network(
                                  "https://thumb.ac-illust.com/5a/5a0b9f1ca516896ae015342d6248e35c_w.png"),
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
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
                                  style: TextStyle(
                                      color: Helper.subtitleColor,
                                      fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.more_horiz,
                              color: Helper.subtitleColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 40.0),
                      child: Text(
                        '어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니꼭 봐주세용~!',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  color: Helper.subtitleColor,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '5',
                                  style: TextStyle(color: Helper.subtitleColor),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.message_outlined,
                                  color: Helper.subtitleColor,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '5',
                                  style: TextStyle(color: Helper.subtitleColor),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.pink.shade100,
                                child: InkWell(
                                    child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Image.network(
                                      "https://thumb.ac-illust.com/5a/5a0b9f1ca516896ae015342d6248e35c_w.png"),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "ㅇㅅㅇ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          color: Helper.titleColor),
                                    ),
                                    Text(
                                      '1 스와미',
                                      style: TextStyle(
                                          color: Helper.subtitleColor,
                                          fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.more_horiz,
                                  color: Helper.subtitleColor,
                                ),
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 45.0),
                            child: Text(
                              '오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.favorite_border,
                                        color: Helper.subtitleColor,
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '5',
                                        style: TextStyle(
                                            color: Helper.subtitleColor),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/img.png',
                            height: 20,
                            width: 20,
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: TextField(
                                decoration: InputDecoration.collapsed(
                                  hintText: '댓글을 남겨주세요.',
                                  hintStyle: TextStyle(
                                      fontSize: 12,
                                      color: Helper.subtitleColor),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '등록',
                            style: TextStyle(
                                fontSize: 12, color: Helper.subtitleColor),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
