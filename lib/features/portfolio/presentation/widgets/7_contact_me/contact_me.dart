import 'package:flutter/material.dart';

import '/core/_core.dart';
import '/config/_config.dart';

class ContactMeWidget extends StatelessWidget {
  const ContactMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final widthCondition = (TDeviceUtils.isSmallOrPhysicalDevice() || MediaQuery.of(context).size.width < 1100);
    final width = TDeviceUtils.getScreenWidth();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widthCondition ? width * 0.10 : width * 0.15),
      child: widthCondition
          ? Column(
              children: [
                const ContactMeImageWidget(),
                TSize.s48.toHeight,
                const ContactMeFormWidget(),
              ],
            )
          : Row(
              children: [
                const Expanded(child: ContactMeImageWidget()),
                TSize.s48.toWidth,
                const Expanded(child: ContactMeFormWidget()),
              ],
            ),
    );
  }
}

class ContactMeImageWidget extends StatelessWidget {
  const ContactMeImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: MediaQuery.of(context).size.width,
      child: NeumorphismContainer(
        inset: false,
        borderRadius: BorderRadius.circular(30),
        child: const PngImageWidget(
          name: 'image-removebg-preview',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class ContactMeFormWidget extends StatelessWidget {
  const ContactMeFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NeumorphismContainer(
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Name*",
                hintStyle: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
        ),
        TSize.s24.toHeight,
        NeumorphismContainer(
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Email ID*",
                hintStyle: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
        ),
        TSize.s24.toHeight,
        NeumorphismContainer(
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: TextFormField(
              minLines: 6,
              maxLines: null,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Message*",
                hintStyle: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
