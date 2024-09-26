import 'package:cobanacademy/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../env.dart';
import '../../provider/data_provider.dart';
import '../../theme/colors.dart';

class SearchMyCourseWidget extends StatelessWidget {
  BuildContext contexto;
  SearchMyCourseWidget({super.key, required this.contexto});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: TextFormField(
                  onChanged: (value) {
                    dataProvider.searchMyCourses = value;
                  },

                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  cursorColor: AppColor.purpleBlue100,
                  style: const TextStyle(color: AppColor.purpleBlue100),
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 2.h),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: AppColor.purpleBlue100,
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.purpleBlue100,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.purpleBlue100,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.purpleBlue100,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    hintText: Environment.homePageSearchHintMyCourse,
                    hintStyle: const TextStyle(color: AppColor.purpleBlue100),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            CircleAvatar(
              radius: 6.5.w,
              backgroundColor: AppColor.primaryPurple,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            alignment: Alignment.center,
                            duration: const Duration(milliseconds: 100),
                            child: ProfilePage(contexto: contexto)));
                },
                icon: Icon(
                  Icons.person_outline,
                  color: AppColor.purpleBlue50,
                  size: 8.5.w,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
