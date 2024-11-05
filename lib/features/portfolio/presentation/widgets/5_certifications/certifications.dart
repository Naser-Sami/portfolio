import 'package:flutter/material.dart';

import '/core/_core.dart';
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
          padding: EdgeInsets.symmetric(horizontal: widthCondition ? width * 0.10 : width * 0.15),
          child: const ProgressBarWidget(title: "Certifications", titleEnd: false),
        ),
        const CertificateSlider(),
      ],
    );
  }
}

class CertificateSlider extends StatefulWidget {
  const CertificateSlider({super.key});

  @override
  State<CertificateSlider> createState() => _CertificateSliderState();
}

class _CertificateSliderState extends State<CertificateSlider> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: TDeviceUtils.isSmallOrPhysicalDevice() || TDeviceUtils.getScreenWidth() < 1100 ? 0.6 : 0.3,
      initialPage: 1,
    ); // Set initialPage

    // Ensure the initial page layout is correct by jumping to the initial page after the first frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _pageController.jumpToPage(1); // Jump to the initial page to avoid spacing issue
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final widthCondition = MediaQuery.of(context).size.width < 1100;
    final height = MediaQuery.of(context).size.height;

    if (widthCondition) {
      _pageController = PageController(
        viewportFraction: 0.6,
      );
    } else {
      _pageController = PageController(
        viewportFraction: 0.33,
      );
    }

    return SizedBox(
      height: widthCondition ? 190 : height * 0.30,
      child: PageView.builder(
        controller: _pageController,
        itemCount: CertificatesData.certificates.length,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: _pageController,
            builder: (context, child) {
              double scale = 1.0;
              if (_pageController.position.haveDimensions) {
                // Scale the center item to be larger
                double currentPage = _pageController.page ?? _pageController.initialPage.toDouble();
                scale = (1 - (currentPage - index).abs() * 0.3).clamp(0.7, 1.0);
              }
              return Center(
                child: Transform.scale(
                  scale: scale,
                  child: child,
                ),
              );
            },
            child: CertificateCard(index: index),
          );
        },
      ),
    );
  }
}

class CertificateCard extends StatelessWidget {
  final int index;

  const CertificateCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final widthCondition = MediaQuery.of(context).size.width < 1100;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: SizedBox(
        height: widthCondition ? 190 : height * 0.30,
        width: widthCondition ? width * 0.80 : width * 0.4, // Control width for smaller cards
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: JpgImageWidget(
            name: CertificatesData.certificates[index],
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
