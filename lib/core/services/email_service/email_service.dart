import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class EmailService {
  static Future<void> sendEmail(String name, String email, String message) async {
    const String emailJsUrl = 'https://api.emailjs.com/api/v1.0/email/send';
    const String serviceId = 'service_sowfi1j';
    const String templateId = 'template_vwq65z8';
    const String userId = 'nmrVSY1og9QZvwbll';

    final response = await http.post(
      Uri.parse(emailJsUrl),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'name': name,
          'email': email,
          'message': message,
        },
      }),
    );

    if (response.statusCode == 200) {
      log('Email sent successfully');
    } else {
      log('Failed to send email: ${response.body}');
    }
  }
  // static void sendEmail(String name, String email, String message) async {
  //   final smtpServer = gmail('naser_ebedo@icloud.com', 'helloMeJSPythonJ_1.618'); // Use your email and app password.

  //   final emailMessage = Message()
  //     ..from = const Address('naser_ebedo@icloud.com', 'Naser Ebedo')
  //     ..recipients.add('naser_ebedo@icloud.com') // Your receiving email
  //     ..subject = 'New Contact Message from $name'
  //     ..text = 'Name: $name\nEmail: $email\nMessage: $message';

  //   try {
  //     final sendReport = await send(emailMessage, smtpServer);
  //     print('Message sent: ${sendReport.toString()}');
  //   } catch (e) {
  //     print('Message not sent. Error: $e');
  //   }
  // }
}
