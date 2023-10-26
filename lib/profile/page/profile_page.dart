import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gaming_shop_ui/auth/root_page/cubit/root_page_cubit.dart';
import 'package:gaming_shop_ui/const/const.dart';
import 'package:gaming_shop_ui/home_page/page/home_page.dart';
import 'package:gaming_shop_ui/profile/personal_details_page/personal_details_page.dart';
import 'package:gaming_shop_ui/profile/user_opinion_page/opinion_page_content.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (error) {
      Text('Filed to pick image: $error');
    }
  }

  Widget chooseUploadPhoto() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 100,
        width: 420,
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            const Text(
              'Choose upload photo',
              style: TextStyle(
                fontSize: 18,
                color: colorFont,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                    ),
                    onPressed: () => pickImage(ImageSource.camera),
                    icon: const Icon(
                      Icons.camera,
                      color: colorFont,
                    ),
                    label: const Text(
                      'Camera',
                      style: TextStyle(
                        color: colorFont,
                      ),
                    ),
                  ),
                  const SizedBox(width: 50),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                    ),
                    onPressed: () => pickImage(ImageSource.gallery),
                    icon: const Icon(
                      Icons.insert_photo,
                      color: colorFont,
                    ),
                    label: const Text(
                      'Gallery',
                      style: TextStyle(
                        color: colorFont,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RootPageCubit()..start(),
      child: BlocBuilder<RootPageCubit, RootPageState>(
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                              );
                            },
                            child: const Text(
                              ' ↩ Back to Shop',
                              style: TextStyle(
                                color: Colors.transparent,
                                fontSize: 14,
                                shadows: [
                                  Shadow(
                                      offset: Offset(0, -5), color: colorFont)
                                ],
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.yellow,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: colorFont,
                                backgroundColor: Colors.yellow,
                              ),
                              onPressed: () {
                                context.read<RootPageCubit>().signOut();
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const HomePage(),
                                  ),
                                );
                              },
                              child: const Text('Log out'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        right: 20,
                        left: 20,
                      ),
                      child: Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              children: [
                                image != null
                                    ? CircleAvatar(
                                        backgroundImage: FileImage(image!),
                                        maxRadius: 40,
                                      )
                                    : const CircleAvatar(
                                        backgroundImage:
                                            AssetImage('images/avatar.jpg'),
                                        maxRadius: 40,
                                      ),
                                Positioned(
                                  bottom: -10,
                                  left: 48,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(100.0),
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: ((builder) =>
                                            chooseUploadPhoto()),
                                      );
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Icon(
                                        Icons.add_circle,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 40),
                            Column(
                              children: [
                                const Text(
                                  'Account E-mail :',
                                  style: TextStyle(
                                    color: Colors.transparent,
                                    fontSize: 15,
                                    shadows: [
                                      Shadow(
                                          offset: Offset(0, -5),
                                          color: colorFont)
                                    ],
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.yellow,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  '${state.user?.email}',
                                  style: const TextStyle(
                                    color: colorFont,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const Divider(
                            color: Colors.yellow,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => PersonalDetailsPage(),
                                ),
                              );
                            },
                            child: const Text(
                              'My personal details',
                              style: TextStyle(
                                color: colorFont,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const Divider(
                            color: Colors.yellow,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'My orders',
                              style: TextStyle(
                                color: colorFont,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const Divider(
                            color: Colors.yellow,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const UserOpinionPage(),
                                ),
                              );
                            },
                            child: const Text(
                              'My opinions',
                              style: TextStyle(
                                color: colorFont,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const Divider(
                            color: Colors.yellow,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'My returns',
                              style: TextStyle(
                                color: colorFont,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const Divider(
                            color: Colors.yellow,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Help center',
                              style: TextStyle(
                                color: colorFont,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const Divider(
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
