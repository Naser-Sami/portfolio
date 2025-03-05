import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

import '/config/_config.dart';
import '/features/_features.dart';

class CertificationsWidget extends StatelessWidget {
  const CertificationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final widthCondition = MediaQuery.of(context).size.width < 1100;
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: widthCondition ? width * 0.10 : width * 0.15),
          child: const ProgressBarWidget(title: "Certifications", titleEnd: false),
        ),
        const CertificateSlider(),
      ],
    );
  }
}

class CertificateSlider extends StatelessWidget {
  const CertificateSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final widthCondition = MediaQuery.of(context).size.width < 760;

    if (widthCondition) {
      return SizedBox(
        height: 700,
        child: VerticalCardPager(
          width: MediaQuery.of(context).size.width * 0.70,
          titles: CertificatesData.certificatesTitles,
          images: CertificatesData.certificates.map((certificate) {
            return CertificateCard(certificate: certificate);
          }).toList(), // required
          onPageChanged: (page) {
            // optional
          },
          onSelectedItem: (index) {
            // optional
          },
          initialPage: 8,
          align: ALIGN.CENTER,
          physics: const ClampingScrollPhysics(),
        ),
      );
    } else {
      return CarouselSlider(
        items: CertificatesData.certificates.map((certificate) {
          return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CertificateCard(certificate: certificate));
        }).toList(),
        options: CarouselOptions(
          height: MediaQuery.of(context).size.width > 1100 ? 540 : 400,
          enlargeCenterPage: true,
          initialPage: 8,
        ),
      );
    }
  }
}

class CertificateCard extends StatelessWidget {
  final String certificate;

  const CertificateCard({super.key, required this.certificate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: JpgImageWidget(
          name: certificate,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
