
import 'package:dashboard/components/referal_info_detail.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class TopReferals extends StatelessWidget {
  const TopReferals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: const EdgeInsets.all(appPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'TopReferals',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: textColor,
                ),
              ),
              Text(
                'View All',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: textColor.withOpacity(0.5),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: appPadding,
          ),
          Expanded(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: referalData.length,
              itemBuilder: (context, index) => ReferalInfoDetail(
                info: referalData[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}



List referalData = [
  ReferalInfoModel(
    title: "Facebook",
    count: 234,
    svgSrc: "assets/icons/media.svg",
    color: primaryColor,
  ),
  ReferalInfoModel(
    title: "Twitter",
    count: 234,
    svgSrc: "assets/icons/home.svg",
    color: primaryColor,
  ),
  ReferalInfoModel(
    title: "Linkedin",
    count: 234,
    svgSrc: "assets/icons/media.svg",
    color: primaryColor,
  ),

  ReferalInfoModel(
    title: "Dribble",
    count: 234,
    svgSrc: "assets/icons/media.svg",
    color: red,
  ),
];