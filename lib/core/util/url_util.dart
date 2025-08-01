import 'package:url_launcher/url_launcher.dart';

class UrlUtil {
  static const _privacy =
      "https://impartial-literature-dfb.notion.site/2b71dbec76c64d80b16baefc8fc8485b";
  static final privacyPolicyUri = Uri.parse(_privacy);
  static Future<void> toPrivacyPage() async =>
      await launchUrl(privacyPolicyUri, mode: LaunchMode.externalApplication);

  static const _eula =
      "https://www.apple.com/legal/internet-services/itunes/dev/stdeula/";
  static final eulaUri = Uri.parse(_eula);
  static Future<void> toEULAPage() async =>
      await launchUrl(eulaUri, mode: LaunchMode.externalApplication);

  static const _tos =
      "https://impartial-literature-dfb.notion.site/AI-bccd27c2976242958409537ac1cbc31b?pvs=4";
  static final tosUri = Uri.parse(_tos);
  static Future<void> toTosPage() async =>
      await launchUrl(tosUri, mode: LaunchMode.externalApplication);
}
