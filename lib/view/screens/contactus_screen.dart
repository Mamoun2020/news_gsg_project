import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactusScreen extends StatefulWidget {
  const ContactusScreen({Key? key}) : super(key: key);

  @override
  State<ContactusScreen> createState() => _ContactusScreenState();
}

class _ContactusScreenState extends State<ContactusScreen> {
  String email = 'support@smartpicktech.com';
  String subject = 'This is a test email';
  String body = 'This is a test email body';

  String telephoneNumber = '0592570714';

  Future<void> _launchBrowser() async{
    launchUrl(Uri.parse("tel:0592570714"));
  }
  sendMessageByWhatsapp(){
    String whatsapp= 'whatsapp://send?phone=972597518653&text=${Uri.encodeFull("Hello Mr.shade")}';
    launchUrl(Uri.parse(whatsapp));
  }
  sendMessageEmail(){
    String emailUrl = "mailto:$email?subject=$subject&body=$body";
    launchUrl(Uri.parse(emailUrl));
  }
  sendSMS(){
    String smsUrl = "sms:$telephoneNumber";
    launchUrl(Uri.parse(smsUrl));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contactus"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){_launchBrowser();}, child: Text('call us',style: TextStyle(fontWeight: FontWeight.bold,),)),
            ElevatedButton(onPressed: (){sendMessageByWhatsapp();}, child: Text('whatsapp',style: TextStyle(fontWeight: FontWeight.bold,),)),
            ElevatedButton(onPressed: (){sendMessageEmail();}, child: Text('email',style: TextStyle(fontWeight: FontWeight.bold,),)),
            ElevatedButton(onPressed: (){sendSMS();}, child: Text('sms',style: TextStyle(fontWeight: FontWeight.bold,),)),
          ],
        ),
      ),
    );
  }
}
