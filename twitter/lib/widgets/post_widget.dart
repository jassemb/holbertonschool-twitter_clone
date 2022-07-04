import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostWidget extends StatelessWidget {
  final String name;
  final String subname;
  final String post;
  final String tag;
  final String Imgurl;

  const PostWidget({
    super.key,
    required this.name,
    required this.subname,
    required this.post,
    required this.tag,
    required this.Imgurl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Row(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(Imgurl),
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "$name",
                    style: GoogleFonts.mulish(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "@$subname",
                    style: GoogleFonts.mulish(
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey.shade400),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down))
                ],
              ),
              Expanded(
                child: SizedBox(
                  width: 250,
                  height: 500,
                  child: Text(post),
                ),
              ),
              Text(
                "#$tag",
                style: GoogleFonts.mulish(
                  fontSize: 12,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
