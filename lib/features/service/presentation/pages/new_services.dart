import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/globalwidget/export.dart';
import '../widgets/new_services/export.dart';

class NewServices extends StatelessWidget {
  const NewServices({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return AppScaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppbackButton(),
                AppText(text: 'New service', size: 20),
                AppText(text: '')
              ],
            )),
        SizedBox(height: size.height * 0.02),
        const Divider(),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * 0.01),
                ServicePhoto(size: size),
                SizedBox(height: size.height * 0.02),
                const ApptextField(
                    label: 'Service', hinttext: 'Swedish Massage'),
                SizedBox(height: size.height * 0.03),
                const ApptextField(
                    malxLine: 3,
                    label: 'Description',
                    hinttext:
                        'Type a brief description of this service to help users know what it entails ....'),
                SizedBox(height: size.height * 0.025),
                TypeOfServices(size: size),
                const GoogleMeetLink(),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: size.width * 0.45,
                        child: const ApptextField(
                          label: 'Duration',
                          hinttext: '60',
                        )),
                    SizedBox(
                        width: size.width * 0.45,
                        child: const ApptextField(
                          label: 'Price',
                          hinttext: '120.00',
                        )),
                  ],
                ),
                SizedBox(height: size.height * 0.01),
                Row(
                  children: [
                    Icon(Icons.info_outline, size: 20.sp),
                    SizedBox(width: size.width * 0.03),
                    const AppText(
                        text: 'Should be in minutes',
                        size: 10,
                        fontStyle: FontStyle.italic,
                        fontweight: FontWeight.w300)
                  ],
                ),
                DepositPercent(size: size),
                TimeSlot(size: size),
                SizedBox(height: size.height * 0.02),
                const ApptextField(hinttext: '5', label: 'Available slots'),
                SizedBox(height: size.height * 0.05),
                const Appbutton(label: 'Save'),
                SizedBox(height: size.height * 0.03),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
