import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '/core/_core.dart';
import '/config/_config.dart';
import '/features/_features.dart';

class ContactMeWidget extends StatelessWidget {
  const ContactMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // final widthCondition = MediaQuery.of(context).size.width < 1100;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.15).copyWith(bottom: 24),
      child: const ContactsIconsWidget(),
      // child: Column(
      //   children: [
      //     widthCondition
      //         ? Column(
      //             children: [
      //               const ProgressBarWidget(title: "Contact Me", titleEnd: false),
      //               const ContactMeImageWidget(),
      //               TSize.s48.toHeight,
      //               const ContactMeFormWidget(),
      //             ],
      //           )
      //         : Column(
      //             children: [
      //               const ProgressBarWidget(title: "Contact Me", titleEnd: false),
      //               Row(
      //                 children: [
      //                   const Expanded(child: ContactMeImageWidget()),
      //                   TSize.s48.toWidth,
      //                   const Expanded(child: ContactMeFormWidget()),
      //                 ],
      //               ),
      //             ],
      //           ),
      //     if (!widthCondition) TSize.s48.toHeight,
      //     widthCondition ? const SizedBox() : const ContactsIconsWidget()
      //   ],
      // ),
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

class ContactMeFormWidget extends StatefulWidget {
  const ContactMeFormWidget({super.key});

  @override
  State<ContactMeFormWidget> createState() => _ContactMeFormWidgetState();
}

class _ContactMeFormWidgetState extends State<ContactMeFormWidget> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _subjectController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    super.dispose();

    _emailController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          NeumorphismContainer(
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: TextFormField(
                controller: _emailController,
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
                controller: _subjectController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Subject*",
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
                controller: _messageController,
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
          TSize.s24.toHeight,
          NeumorphismContainer(
            borderRadius: BorderRadius.circular(12),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                fixedSize: Size(MediaQuery.of(context).size.width, 54),
              ),
              onPressed: () {
                // if (_formKey.currentState!.validate()) {
                sendEmail(context);
                // }
              },
              child: const Text("Send"),
            ),
          ),
        ],
      ),
    );
  }

  void sendEmail(BuildContext context) async {
    const toEmail = "naser_ebedo@icloud.com";
    final email = _emailController.text;
    final subject = _subjectController.text;
    final message = _messageController.text;

    final mailtoLink = Uri(
      scheme: 'mailto',
      path: toEmail,
      queryParameters: {
        'subject': subject,
        'body': 'From: $email\n\n$message',
      },
    );

    if (await canLaunchUrl(mailtoLink)) {
      await launchUrl(mailtoLink);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not open email client')),
      );
    }
  }
}
