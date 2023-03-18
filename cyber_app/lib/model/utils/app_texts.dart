import 'package:cyber_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';


/// All the Application Texts, Image Addresses and... placed here
/// if you want, you can change it
class DynamicTexts {
  DynamicTexts._();
  static const String appBarTitle = "Threat Intel";
  static const String searchBoxTexts = "Search for categories...";
  static const String importantLinks = "Important Links";
  static const String cyberHelpLine = "Cyber Helpline";
  static const String cyberHelpLineNum = "800-123-4569";
  static const String username = "Rahul Saini";
  static const String userEvent = "70 Event";
  static const String categoryTopText =
      "Stay vigilant, stay informed and stay safe online.";
  static const List<String> categoryListTexts = [
    "Reporting category",
    "Resources",
    "Stay informed",
  ];
  static const List<String> categoryGridTexts = [
    "Complaint",
    "Ransomware",
    "Email Scam",
    "Cyber Bullying",
    "Identity Theft",
    "Phone Scam",
  ];
  static const List<String> importantLinksTexts = [
    "Federal Bureau of Investigation",
    "New York Police Department",
    "Health Consultancy",
    "Report a Crime",
  ];
  static List<String> categoryGridImagesAddress = [
    Assets.images.complaint.path,
    Assets.images.ransomware.path,
    Assets.images.emialScam.path,
    Assets.images.cyberBulling.path,
    Assets.images.identitytheftlawUK.path,
    Assets.images.commonPhoneScams.path,
  ];
  static List<String> importantLinksImagesAddress = [
    Assets.images.fbi.path,
    Assets.images.newyotk.path,
    Assets.images.cimhs.path,
    Assets.images.cybersecurity.path,
  ];

  /// ... Icons for using in Drawer
  static const List<IconData> drawerIcons = [
    Icons.home,
    Icons.search,
    Icons.event,
    Icons.task,
    Icons.contact_mail_rounded,
    Icons.settings,
    Icons.info,
    Icons.light_mode,
  ];

  /// ... Texts for using in Drawer
  static const List<String> drawerTitles = [
    "Home",
    "Explore",
    "My Events",
    "Tasks",
    "Invite Friends",
    "Settings",
    "About",
    "Theme",
  ];

  static const List<String> formHeaders = [
    "A complaint is an expression of dissatisfaction or criticism about a particular situation, person, product, or service. It can be communicated verbally or in writing and may be formal or informal. Complaints are often made when someone feels that they have been treated unfairly, have received poor service or quality, or when their expectations have not been met. Complaints can be an important feedback mechanism for businesses, organizations, and individuals, as they provide an opportunity to identify and address areas for improvement.",
    "Ransomware is a malicious software that can encrypt your files and hold them hostage until a ransom is paid. If you suspect that you have fallen victim to a ransomware attack, we encourage you to complete the form provided to report the incident and seek assistance. However, if you are not a victim of this attack, please go back to homepage.",
    "An email scam is a type of fraud that involves sending deceptive emails with the goal of obtaining personal information or money from the recipient. If you suspect that you have received an email scam, we advise you not to respond or provide any personal information. Instead, we recommend reporting the scam to the appropriate authorities. To report a email scam please complete this form.",
    "Cyberbullying is a type of harassment that occurs through electronic means, such as social media, text messages, or online forums. It involves using technology to intentionally harm, humiliate, or intimidate someone. If you are experiencing cyberbullying, we recommend seeking support and assistance from a trusted individual or organization. It is important to report the behavior to the appropriate authorities and take steps to protect yourself from further harm. To Report cyberbullying. Complete this form",
    "Identity theft is a type of crime that involves stealing personal information, such as social security numbers, credit card numbers, or login credentials, to impersonate the victim and commit fraudulent activities. If you suspect that your identity has been stolen, it is important to take immediate action to prevent further harm. We recommend contacting your financial institution and credit reporting agencies, reporting the incident to the appropriate authorities, and seeking assistance from a trusted organization. Fill out this form to report identity theft",
    "A phone scam is a type of fraud that involves unsolicited phone calls from scammers who attempt to obtain personal information or money from the recipient. The caller may pretend to be a representative of a legitimate organization, such as a bank or government agency, to gain the victim's trust. If you receive a suspicious phone call, it is important to not disclose any personal information or send money. Instead, we recommend reporting the phone scam to the appropriate authorities. To Report a phone scam, complete this form",
  ];
}
