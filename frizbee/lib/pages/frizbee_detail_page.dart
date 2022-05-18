import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frizbee/data/models/frisbee.dart';
import 'package:frizbee/utils/constants/asset_paths.dart';
import 'package:frizbee/utils/dummy/dummy_data.dart';
import 'package:frizbee/utils/routes/route.gr.dart';
import 'package:getwidget/getwidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FrizbeeDetailPage extends StatefulWidget {
  Frisbee frisbee;
  FrizbeeDetailPage({required this.frisbee});

  @override
  State<FrizbeeDetailPage> createState() => _FrizbeeDetailPageState();
}

class _FrizbeeDetailPageState extends State<FrizbeeDetailPage>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              inAppIcon,
              width: 60,
              height: 60,
            ),
            FloatingActionButton(
              backgroundColor: Colors.red,
              child: const Icon(
                Icons.comment,
              ),
              onPressed: () {
                AutoRouter.of(context).push(CommentRoute());
              },
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        Opacity(
                          opacity: 0.8,
                          child: Container(
                            width: double.infinity,
                            height: 220,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: Image.asset(widget.frisbee.imageUrls)
                                        .image,
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        Positioned(
                          top: 12,
                          left: 12,
                          child: Text(
                            widget.frisbee.title,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    GFTabs(
                      tabBarView: GFTabBarView(
                          controller: tabController,
                          children: [infoTab(), commentsTab()]),
                      tabBarColor: Colors.white,
                      controller: tabController,
                      isScrollable: true,
                      height: 1000,
                      labelPadding: EdgeInsets.only(left: 25),
                      indicatorColor: Color.fromRGBO(244, 67, 54, 1),
                      length: 3,
                      tabs: [
                        Tab(
                          child: Text(
                            'Yakalama (${widget.frisbee.holders})',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Yorum (${widget.frisbee.comments})',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Container commentsTab() {
    return Container(
      child: Column(
        children: [
          ...List.generate(
              kComments.length,
              (index) => ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    leading: Image.asset(kProfileIcons[index]),
                    title: Text(kComments[index].comment),
                    subtitle: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.thumbsUp),
                        Text(
                          '${kComments[index].likes}',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  )),
          ...List.generate(
              kComments.length,
              (index) => ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    leading: Image.asset(kProfileIcons[index]),
                    title: Text(kComments[index].comment),
                    subtitle: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.thumbsUp),
                        Text(
                          '${kComments[index].likes}',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ))
        ],
      ),
    );
  }

  Container photosTab() {
    return Container(
      child: Column(
        children: [
          Container(
            height: 250,
            color: Colors.red,
          ),
          SizedBox(
            height: 45,
          ),
          Container(
            height: 250,
            color: Colors.red,
          ),
          SizedBox(
            height: 45,
          ),
          Container(
            height: 250,
            color: Colors.red,
          ),
          SizedBox(
            height: 45,
          ),
          Container(
            height: 250,
            color: Colors.red,
          )
        ],
      ),
    );
  }

  Container infoTab() {
    return Container(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              widget.frisbee.title,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              widget.frisbee.explanation,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        const SizedBox(
          height: 45,
        ),
        Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Kazanılacak Frizbi',
                style: TextStyle(fontSize: 18),
              ),
              Image.asset(
                inAppIcon,
                width: 50,
                height: 50,
              ),
              const Text('Etkinlik avcısı')
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, top: 15),
          child: Column(children: [
            icon_text_row(
                const Icon(
                  Icons.location_pin,
                  color: Colors.red,
                ),
                widget.frisbee.city),
            const SizedBox(
              height: 25,
            ),
            icon_text_row(
                const Icon(
                  Icons.call,
                  color: Colors.red,
                ),
                '+90 549 876 54 32'),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                icon_text_row(
                    const Icon(
                      Icons.date_range,
                      color: Colors.red,
                    ),
                    'Başlangıç 12 mart 18.00'),
                const SizedBox(
                  width: 100,
                ),
                icon_text_row(
                    const Icon(
                      Icons.date_range,
                      color: Colors.red,
                    ),
                    'Bitiş 21.00')
              ],
            ),
            SizedBox(
              height: 25,
            ),
            icon_text_row(
                Icon(
                  Icons.map,
                  color: Colors.red,
                ),
                'Ankara/Altındağ Taceddin Veli Yurdu'),
          ]),
        ),
        SizedBox(
          height: 45,
        ),
        Container(
          height: 250,
          width: 400,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: Image.asset(kMapPick).image, fit: BoxFit.fill)),
        )
      ]),
    );
  }

  Row icon_text_row(Icon icon, String text) {
    return Row(
      children: [icon, Text(text)],
    );
  }
}
