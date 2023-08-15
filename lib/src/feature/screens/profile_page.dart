import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/feature/post/model/photo_model.dart';
import 'package:instagram/src/feature/post/widget/custom_tabbar.dart';

import '../../common/service/api_service.dart';
import '../post/data/repository.dart';
import '../post/widget/custom_circle_avatar.dart';
import '../post/widget/custom_filled_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<PhotoModel> photos = [];
  late final IPostRepository photoRepository;

  @override
  void initState() {
    super.initState();
    photoRepository = PostRepositoryImpl(APIService());
    getAllPhotos();
  }

  Future<void> getAllPhotos() async {
    photos = await photoRepository.getPhotos();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Text(photos.isNotEmpty?
              photos[1].user!.username.toString():"",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            Container(
              height: 24,
              width: 32,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Center(
                child: Text(
                  "10+",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          const Icon(
            CupertinoIcons.plus_app,
            color: Colors.black,
            size: 30,
          ),
          const SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.density_medium_sharp,
            color: Colors.black,
            size: 28,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCircleAvatar(
                        image: NetworkImage(photos.isNotEmpty?
                            "${photos[1].user?.profileImage?.medium}":""),
                        radius: 40,
                      ),
                      Column(
                        children: [
                          Text(
                            "1,234",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "5,678",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "9,101",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                   Text(photos.isNotEmpty?
                    "${photos[1].user?.firstName}":"",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "Category/Genre text",
                    style: TextStyle(
                      color: Color(
                        0xFF6E6E6E,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 14.5),
                        children: [
                          TextSpan(
                              text:
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
                                  "\nsed do eiusmod tempor incididunt"),
                          TextSpan(
                              text: "#hashtag",
                              style: TextStyle(color: Colors.blue)),
                        ]),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    "Link goes here",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 85,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: CustomCircleAvatar(
                                isBorder: false,
                                image: AssetImage("images/Avatar (2).png"),
                                radius: 20,
                              ),
                            ),
                            Positioned(
                              left: 20,
                              child: CustomCircleAvatar(
                                isBorder: false,
                                image: AssetImage("images/Avatar (2).png"),
                                radius: 20,
                              ),
                            ),
                            Positioned(
                              left: 0,
                              child: CustomCircleAvatar(
                                isBorder: false,
                                image: AssetImage("images/Avatar (2).png"),
                                radius: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 17),
                          children: [
                            TextSpan(text: "Followed by "),
                            TextSpan(
                              text: "username, username\n",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: "and ",
                            ),
                            TextSpan(
                              text: "100 others",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const CustomButton(),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 85,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                      itemCount: photos.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CustomCircleAvatar(
                        image: NetworkImage(photos.isNotEmpty?
                            "${photos[index].user?.profileImage?.large}":""),
                        radius: 35,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
               CustomTabBar(),
                SizedBox(
                  height: 630,
                  child: TabBarView(
                    children: [
                      GridView.count(
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 2,
                        crossAxisCount: 3,
                        children:List.generate(
                            photos.length,
                                (e) => Image(
                              image: NetworkImage(photos.isNotEmpty?
                                  "${photos[e].user?.profileImage?.large}":""),
                            ),),
                      ),
                      GridView.count(
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 2,
                        childAspectRatio: 1 / 1.5,
                        crossAxisCount: 3,
                        children: List.generate(
                            photos.length,
                                (e) => Image(
                                  fit: BoxFit.cover,
                              image: NetworkImage(photos.isNotEmpty?
                                  "${photos[e].user?.profileImage?.large}":""),
                            ),),
                      ),
                      GridView.count(
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 2,
                        crossAxisCount: 3,
                        children: List.generate(
                            photos.length,
                            (e) => Image(
                                  image: NetworkImage(photos.isNotEmpty?
                                      "${photos[e].user?.profileImage?.large}":""),
                                ),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
