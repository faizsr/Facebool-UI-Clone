import 'package:facebook_ui_clone/sections/header_button_section.dart';
import 'package:facebook_ui_clone/widgets/avatar.dart';
import 'package:facebook_ui_clone/widgets/blue_tick.dart';
import 'package:facebook_ui_clone/widgets/buttons.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String profileName;
  final String postTime;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  PostCard({
    required this.avatar,
    required this.profileName,
    required this.postTime,
    required this.postTitle,
    required this.postImage,
    this.showBlueTick = false,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            thickness: 1,
            color: Colors.grey.shade300,
          ),
          SectionButton(
            buttonOne: Buttons(
              buttonText: 'Like',
              buttonIcon: Icons.thumb_up_alt_outlined,
              buttonAction: () => debugPrint('Like this post'),
              buttonColor: Colors.grey,
            ),
            buttonTwo: Buttons(
              buttonText: 'Comment',
              buttonIcon: Icons.message_outlined,
              buttonAction: () => debugPrint('Comment on this post'),
              buttonColor: Colors.grey,
            ),
            buttonThree: Buttons(
              buttonText: 'Share',
              buttonIcon: Icons.share_outlined,
              buttonAction: () => debugPrint('Share this post'),
              buttonColor: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 30,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 18,
                height: 18,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.thumb_up,
                  color: Colors.white,
                  size: 10,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              displayText(label: likeCount),
            ],
          ),
          Row(
            children: [
              displayText(label: commentCount),
              const SizedBox(width: 3),
              displayText(label: "Comments"),
              const SizedBox(width: 10),
              displayText(label: shareCount),
              const SizedBox(width: 3),
              displayText(label: "Shares"),
              const SizedBox(width: 10),
              Avatar(
                avatarHeight: 17,
                avatarWidth: 17,
                displayImage: avatar,
                displayStatus: false,
              ),
              InkWell(
                onTap: () => debugPrint('Go the dropdown menu'),
                child: const Icon(Icons.arrow_drop_down),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label,
      style: TextStyle(
        color: Colors.grey[700],
        fontSize: 13,
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: Image.asset(postImage),
    );
  }

  Widget titleSection() {
    return postTitle != ""
        ? Container(
            padding: const EdgeInsets.only(
              bottom: 5,
            ),
            child: Text(
              postTitle,
              style: const TextStyle(
                  color: Color.fromARGB(221, 50, 41, 41),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          )
        : const SizedBox();
  }

  Widget postCardHeader() {
    return ListTile(
      leading: SizedBox(
        width: 55,
        height: 45,
        child: Avatar(
          displayImage: avatar,
          displayStatus: false,
        ),
      ),
      title: Row(
        children: [
          Text(
            profileName,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          showBlueTick ? const BlueTick() : const SizedBox()
        ],
      ),
      subtitle: Row(
        children: [
          Text(postTime),
          const SizedBox(
            width: 8,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[500],
            size: 14,
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          debugPrint('Go to more screen');
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[500],
        ),
      ),
    );
  }
}
