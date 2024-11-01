import 'package:flutter/material.dart';

import '/core/_core.dart';
import '/config/_config.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: footerBody(context),
    );
  }

  bool isPhysicalDevice() => TDeviceUtils.isPhysicalDevice();

  bool isLargeScreen() => TDeviceUtils.getScreenWidth() >= TDeviceUtils.largeLayout;

  Padding footerBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isPhysicalDevice() || TDeviceUtils.isSmallLayout() ? 40 : 80),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      logo(),
                      const SizedBox(height: 12),
                      summary(context),
                    ],
                  ),
                ),
                isPhysicalDevice() ? const SizedBox(width: 16) : const Spacer(),
                Flexible(
                  child: SizedBox(
                    child: links(context),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          const Divider(),
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (isLargeScreen()) const Expanded(child: SizedBox()),
                copyWrites(),
                socialMedia(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox logo() => const SizedBox(width: 110, height: 30, child: LogoWidget());

  Text summary(BuildContext context) {
    return Text(
      'Lorem ipsum dolor sit amet, consectetuipisicing elit, ',
      style: context.bodySmall,
      maxLines: 2,
    );
  }

  Wrap links(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.end,
      spacing: 10,
      children: footerLinks
          .map(
            (link) => TextButton(
              onPressed: () {},
              child: Text(
                link,
                textAlign: TextAlign.start,
                style: context.bodySmall,
              ),
            ),
          )
          .toList(),
    );
  }

  Expanded socialMedia() {
    return const Expanded(
      child: Align(alignment: AlignmentDirectional.centerEnd, child: SocialMediaWidget()),
    );
  }

  Expanded copyWrites() {
    return Expanded(
      child: Align(
        alignment: isLargeScreen() ? Alignment.center : AlignmentDirectional.centerStart,
        child: const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '2020 Flowbase. Powered by ',
                  style: TextStyle(
                    fontSize: 12,
                  )),
              TextSpan(
                text: 'Webflow',
                style: TextStyle(
                  color: Color(0xFFFF7967),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
