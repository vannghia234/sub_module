// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart'
//     as htmlwidget;

// class HtmlWidget extends StatelessWidget {
//   final String? data;
//   final Color? color;
//   const HtmlWidget({super.key, required this.data, this.color});

//   @override
//   Widget build(BuildContext context) {
//     return htmlwidget.HtmlWidget(
//       textStyle: AppTextStyle.bodyMedium(color: color),
//       "$data",
//       onLoadingBuilder: (context, element, loadingProgress) => const Center(
//         child: LoadingPage(),
//       ),
//       onTapUrl: (url) async {
//         if (await canLaunchUrl(Uri.parse(url))) {
//           await launchUrlFunc(
//             url,
//           );
//           return true;
//         } else {
//           throw 'Could not launch $url';
//         }
//       },
//     );
//   }
// }
