import 'package:flutter_test/flutter_test.dart';
import 'package:be_sharp/core/util/url_util.dart';

void main() {
  group('UrlUtil', () {
    group('URI constants', () {
      test('should have valid privacy policy URI', () {
        expect(UrlUtil.privacyPolicyUri, isA<Uri>());
        expect(UrlUtil.privacyPolicyUri.scheme, 'https');
        expect(UrlUtil.privacyPolicyUri.host, 'impartial-literature-dfb.notion.site');
        expect(UrlUtil.privacyPolicyUri.path, '/2b71dbec76c64d80b16baefc8fc8485b');
      });

      test('should have valid EULA URI', () {
        expect(UrlUtil.eulaUri, isA<Uri>());
        expect(UrlUtil.eulaUri.scheme, 'https');
        expect(UrlUtil.eulaUri.host, 'www.apple.com');
        expect(UrlUtil.eulaUri.path, '/legal/internet-services/itunes/dev/stdeula/');
      });

      test('should have valid Terms of Service URI', () {
        expect(UrlUtil.tosUri, isA<Uri>());
        expect(UrlUtil.tosUri.scheme, 'https');
        expect(UrlUtil.tosUri.host, 'impartial-literature-dfb.notion.site');
        expect(UrlUtil.tosUri.path, '/AI-bccd27c2976242958409537ac1cbc31b');
        expect(UrlUtil.tosUri.query, 'pvs=4');
      });

      test('should have consistent URI structure', () {
        final uris = [
          UrlUtil.privacyPolicyUri,
          UrlUtil.eulaUri,
          UrlUtil.tosUri
        ];
        
        for (final uri in uris) {
          expect(uri.scheme, 'https');
          expect(uri.host, isNotEmpty);
          expect(uri.toString(), startsWith('https://'));
        }
      });
    });

    group('URL validation', () {
      test('should have accessible URLs', () {
        final urls = [
          UrlUtil.privacyPolicyUri.toString(),
          UrlUtil.eulaUri.toString(),
          UrlUtil.tosUri.toString()
        ];

        for (final url in urls) {
          expect(url, matches(RegExp(r'^https://[\w\-\.]+[\w\-\./]*')));
        }
      });

      test('should not contain sensitive information in URLs', () {
        final urls = [
          UrlUtil.privacyPolicyUri.toString(),
          UrlUtil.eulaUri.toString(),
          UrlUtil.tosUri.toString()
        ];

        for (final url in urls) {
          expect(url, isNot(contains('password')));
          expect(url, isNot(contains('token')));
          expect(url, isNot(contains('secret')));
          expect(url, isNot(contains('key')));
        }
      });

      test('should have valid URI format', () {
        expect(UrlUtil.privacyPolicyUri.toString(), contains('notion.site'));
        expect(UrlUtil.eulaUri.toString(), contains('apple.com'));
        expect(UrlUtil.tosUri.toString(), contains('notion.site'));
      });

      test('should be properly encoded URIs', () {
        final uris = [
          UrlUtil.privacyPolicyUri,
          UrlUtil.eulaUri,
          UrlUtil.tosUri
        ];

        for (final uri in uris) {
          expect(uri.isAbsolute, isTrue);
          expect(uri.hasScheme, isTrue);
          expect(uri.hasAuthority, isTrue);
        }
      });
    });
  });
}