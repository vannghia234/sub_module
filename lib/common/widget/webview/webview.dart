import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sub_project/common/widget/loading/loading_base.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webview_flutter/webview_flutter.dart';


const defaultUrl = 'https://google.com.vn';

class WebViewPage extends StatefulWidget {
  static const String routeName = '/webview';
  const WebViewPage({super.key});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  WebViewController? _webViewController;
  bool _showLoading = true;

  final url = Get.arguments['url'];

  @override
  void initState() {
    super.initState();

    _webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {},
          onPageFinished: (String url) {
            if (mounted) {
              setState(() {
                _showLoading = false;
              });
            }
          },
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            debugPrint('NavigationRequest: ${request.url}');
            if (request.url.startsWith("momo")) {
              launchUrlString(request.url);
              return NavigationDecision.prevent;
            }

            return NavigationDecision.navigate;
          },
        ),
      )
      ..addJavaScriptChannel(
        'Toaster',
        onMessageReceived: (JavaScriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(message.message),
              behavior: SnackBarBehavior.floating,
            ),
          );
        },
      )
      ..loadRequest(Uri.parse(url ?? defaultUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const CommonAppBar(
      //   showCartIcon: false,
      //   showElevation: true,
      //   showLeadingIcon: true,
      //   backgroundColor: AppColors.white,
      // ),
      body: Stack(
        children: [
          WebViewWidget(controller: _webViewController!),
          if (_showLoading)  LoadingBase.base(),
        ],
      ),
    );
  }
}

class NavigationControls extends StatelessWidget {
  const NavigationControls({super.key, required this.webViewController});

  final WebViewController webViewController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () async {
            if (await webViewController.canGoBack()) {
              await webViewController.goBack();
            } else {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('No back history item')),
                );
              }
            }
          },
        ),
        IconButton(
          icon: const Icon(Icons.arrow_forward),
          color: Colors.white,
          onPressed: () async {
            if (await webViewController.canGoForward()) {
              await webViewController.goForward();
            } else {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('No forward history item')),
                );
              }
            }
          },
        ),
        IconButton(
          color: Colors.white,
          icon: const Icon(Icons.replay),
          onPressed: () => webViewController.reload(),
        ),
      ],
    );
  }
}
