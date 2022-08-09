import 'package:flutter/material.dart';
import 'package:noxplayer_demo/101/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focustnodefieldone = FocusNode();
  FocusNode focustnodefieltwo = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
              maxLength: 20,
              autofillHints: const [AutofillHints.email],
              focusNode: focustnodefieldone,
              textInputAction: TextInputAction.next,
              decoration: __DecorationInput._decoratiunexp),
          TextField(
            focusNode: focustnodefieltwo,
            minLines: 2,
            maxLines: 5,
          )
        ],
      ),
    );
  }
}

class __DecorationInput {
  static const _decoratiunexp = InputDecoration(
    fillColor: Colors.green,
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: LanguageItems.mailtite,
  );
}
