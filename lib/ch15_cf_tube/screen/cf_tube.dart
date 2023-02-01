import 'package:flutter/material.dart';

import '../components/custom_youtube_player.dart';
import '../models/video_model.dart';
import '../repositories/youtube_repository.dart';


class CfTube extends StatefulWidget {
  const CfTube({Key? key}) : super(key: key);

  @override
  State<CfTube> createState() => _CfTubeState();
}

class _CfTubeState extends State<CfTube> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true, // 제목 가운데 정렬
        title: Text(
          '코팩튜브',
        ),
        backgroundColor: Colors.black,
      ),
      body: FutureBuilder<List<VideoModel>>(
        future: YoutubeRepository.getVideos(), // 유튜브 영상 가져오기
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            // 에러가 있을 경우 에러 화면에 표시하기
            return Center(
              child: Text(
                snapshot.error.toString(),
              ),
            );
          }

          if (!snapshot.hasData) {
            // 로딩 중일 때 로딩위젯 보여주기
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return RefreshIndicator(
            // ➊ 새로고침 기능이 있는 위젯
            onRefresh: () async {
              setState(() {});
            },
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: snapshot.data!
                  .map((e) => CustomYoutubePlayer(videoModel: e))
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}
