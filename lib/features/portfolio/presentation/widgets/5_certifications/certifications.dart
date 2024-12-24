import 'package:flutter/material.dart';

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
    final widthCondition = MediaQuery.of(context).size.width < 900;

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: widthCondition ? 350 : 500),
      child: CarouselView(
        itemExtent: widthCondition ? 400 : 750,
        padding:
            widthCondition ? null : const EdgeInsets.symmetric(horizontal: TPadding.p16),
        children: CertificatesData.certificates.map((certificate) {
          return CertificateCard(certificate: certificate);
        }).toList(),
      ),
    );
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
