import 'package:flutter/material.dart';
import 'package:whatado/widgets/appbars/default_app_bar.dart';

class Eula extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    final headingSpacing = 10.0;
    final padding = 30.0;
    final sectionSpacing = 35.0;

    return Scaffold(
        appBar: DefaultAppBar(title: 'Legal'),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: sectionSpacing),
                  Text('End-User License Agreement (EULA) of Whatado',
                      style: headingStyle),
                  SizedBox(height: headingSpacing),
                  Text(
                      'This End-User License Agreement ("EULA") is a legal agreement between you and Whatado'),
                  Text(
                      'This EULA agreement governs your acquisition and use of our Whatado software ("Software") directly from Whatado or indirectly through a Whatado authorized reseller or distributor (a "Reseller").'),
                  Text(
                      'Please read this EULA agreement carefully before completing the installation process and using the Whatado software. It provides a license to use the Whatado software and contains warranty information and liability disclaimers.'),
                  Text(
                      'If you register for a free trial of the Whatado software, this EULA agreement will also govern that trial. By clicking "accept" or installing and/or using the Whatado software, you are confirming your acceptance of the Software and agreeing to become bound by the terms of this EULA agreement.'),
                  Text(
                      'If you are entering into this EULA agreement on behalf of a company or other legal entity, you represent that you have the authority to bind such entity and its affiliates to these terms and conditions. If you do not have such authority or if you do not agree with the terms and conditions of this EULA agreement, do not install or use the Software, and you must not accept this EULA agreement.'),
                  Text(
                      'This EULA agreement shall apply only to the Software supplied by Whatado herewith regardless of whether other software is referred to or described herein. The terms also apply to any Whatado updates, supplements, Internet-based services, and support services for the Software, unless other terms accompany those items on delivery. If so, those terms apply.'),
                  SizedBox(height: headingSpacing),
                  Text('License Grant', style: headingStyle),
                  SizedBox(height: headingSpacing),
                  Text(
                      'Whatado hereby grants you a personal, non-transferable, non-exclusive licence to use the Whatado software on your devices in accordance with the terms of this EULA agreement.'),
                  Text(
                      'You are permitted to load the Whatado software (for example a PC, laptop, mobile or tablet) under your control. You are responsible for ensuring your device meets the minimum requirements of the Whatado software.'),
                  Text('You are not permitted to:'),
                  Text(
                      '  - Edit, alter, modify, adapt, translate or otherwise change the whole or any part of the Software nor permit the whole or any part of the Software to be combined with or become incorporated in any other software, nor decompile, disassemble or reverse engineer the Software or attempt to do any such things'),
                  Text(
                      '  - Reproduce, copy, distribute, resell or otherwise use the Software for any commercial purpose'),
                  Text(
                      '  - Allow any third party to use the Software on behalf of or for the benefit of any third party'),
                  Text(
                      '  - Use the Software in any way which breaches any applicable local, national or international law'),
                  Text(
                      '  - use the Software for any purpose that Whatado considers is a breach of this EULA agreement'),
                  SizedBox(height: headingSpacing),
                  Text('Intellectual Property and Ownership',
                      style: headingStyle),
                  SizedBox(height: headingSpacing),
                  Text(
                      'Whatado shall at all times retain ownership of the Software as originally downloaded by you and all subsequent downloads of the Software by you. The Software (and the copyright, and other intellectual property rights of whatever nature in the Software, including any modifications made thereto) are and shall remain the property of Whatado.'),
                  Text(
                      'Whatado reserves the right to grant licences to use the Software to third parties.'),
                  SizedBox(height: headingSpacing),
                  Text('Termination', style: headingStyle),
                  SizedBox(height: headingSpacing),
                  Text(
                      'This EULA agreement is effective from the date you first use the Software and shall continue until terminated. You may terminate it at any time upon written notice to Whatado.'),
                  Text(
                      'It will also terminate immediately if you fail to comply with any term of this EULA agreement. Upon such termination, the licenses granted by this EULA agreement will immediately terminate and you agree to stop all access and use of the Software. The provisions that by their nature continue and survive will survive any termination of this EULA agreement.'),
                  SizedBox(height: headingSpacing),
                  Text('Governing Law', style: headingStyle),
                  SizedBox(height: headingSpacing),
                  Text(
                      'This EULA agreement, and any dispute arising out of or in connection with this EULA agreement, shall be governed by and construed in accordance with the laws of the United States.'),
                  SizedBox(height: headingSpacing),
                ],
              )),
        ));
  }
}
