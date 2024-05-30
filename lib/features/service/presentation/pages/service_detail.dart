import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../globalwidget/export.dart';
import '../../data/local/service_images.dart';
import '../widgets/services_detail/export.dart';

class ServiceDetail extends StatelessWidget {
  const ServiceDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return AppScaffold(
        body: Column(children: [
      ServiceDetailAppbar(size: size),
      SizedBox(height: size.height * 0.02),
      const Divider(),
      SizedBox(height: size.height * 0.01),
      Expanded(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PreviewLinkAndShareLink(size: size),
              SizedBox(height: size.height * 0.02),
              ClipRRect(
                  borderRadius: BorderRadius.circular(size.width * 0.03),
                  child: Image.asset(ServiceImages.nail,
                      width: size.width,
                      height: size.width * 0.4,
                      fit: BoxFit.cover)),
              SizedBox(height: size.height * 0.01),
              const AppText(
                  text: 'Nail Polish & Painting',
                  size: 24,
                  fontweight: FontWeight.w500),
              const AppText(
                  color: Color(0xFF666666),
                  text:
                      'Are you a startup looking to hit the ground running with that mega idea or a junior ...',
                  size: 14),
              SizedBox(height: size.height * 0.01),
              IconwithTitleAndValue(
                  size: size,
                  title: 'Price',
                  icon: Iconsax.moneys_copy,
                  value: 'GHS 90.00'),
              IconwithTitleAndValue(
                  size: size,
                  icon: Iconsax.receipt_disscount_copy,
                  title: 'Deposit',
                  value: '40% of GHS 120 down payment'),
              IconwithTitleAndValue(
                  size: size,
                  icon: Iconsax.clock_copy,
                  title: 'Duration',
                  value: '60 minutes'),
              IconwithTitleAndValue(
                  icon: Iconsax.calendar_tick_copy,
                  size: size,
                  title: 'Service type',
                  value: 'In-person meeting'),
              SizedBox(height: size.height * 0.01),
              ServiceDetailTimeSlot(size: size),
              SizedBox(height: size.height * 0.01),
              IconwithTitleAndValue(
                  icon: Iconsax.save_2_copy,
                  size: size,
                  title: 'Available slots',
                  value: '12'),
              SizedBox(height: size.height * 0.01),
              ServiceDetailGoogleMeetLink(size: size),
              SizedBox(height: size.height * 0.04),
              const Appbutton(label: 'Collect remaining balance'),
              SizedBox(height: size.height * 0.02),
            ],
          ),
        ),
      )
    ]));
  }
}
