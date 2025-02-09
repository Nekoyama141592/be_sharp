import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_markdown_latex/flutter_markdown_latex.dart';
import 'package:markdown/markdown.dart' as md;

const example = r'$\int_{0}^{\frac{\pi}{4}} 8 \sin{x} \cos{x} \,dx$';

class LatexText extends StatelessWidget {
  const LatexText({super.key, required this.data, required this.style});
  final String data;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return MarkdownBody(
      data: example,
      builders: {
        'latex': LatexElementBuilder(textStyle: style),
      },
      extensionSet: md.ExtensionSet(
        [LatexBlockSyntax()],
        [LatexInlineSyntax()],
      ),
    );
  }
}
