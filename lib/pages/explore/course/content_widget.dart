import 'package:cobanacademy/graphql/model/objetos.dart';
import 'package:cobanacademy/provider/data_provider.dart';
import 'package:cobanacademy/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContentWidget extends StatelessWidget {
  final List<Video> videos;

  const ContentWidget({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    return GestureDetector(
      onTap: (){

      },
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(5.0),
            decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: AppColor.purpleBlue800, width: 1)),
            ),
            child: ListTile(
              onTap: (){
                dataProvider.videoSelector=index;
                dataProvider.changeVideo(videos[dataProvider.videoSelector].url);
              },
              leading: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: AppColor.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: dataProvider.videoSelector == index?AppColor.white:AppColor.primaryPurple,
                    width: 2.5,
                  ),
                ),
              ),
              title: Text(
                videos[index].titulo,
                style: TextStyle(
                    color: dataProvider.videoSelector == index
                        ? AppColor.white
                        : AppColor.purpleBlue300,
                    fontSize: 16,
                    fontWeight: dataProvider.videoSelector == index
                        ?FontWeight.w600:FontWeight.w400
                ),
              ),
              trailing: Text(
                videos[index].duracion,
                style: TextStyle(
                    color: dataProvider.videoSelector == index
                        ? AppColor.white
                        : AppColor.purpleBlue300,
                    fontSize: 14,
                    fontWeight: dataProvider.videoSelector == index
                        ?FontWeight.w600:FontWeight.w400
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
