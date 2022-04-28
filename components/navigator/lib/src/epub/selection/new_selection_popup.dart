import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:mno_navigator/epub.dart';
import 'package:mno_navigator/publication.dart';
import 'package:mno_navigator/src/epub/selection/selection_popup.dart';

class NewSelectionPopup extends SelectionPopup {
  NewSelectionPopup(SimpleSelectionListener selectionListener)
      : super(selectionListener);

  @override
  double get optionsWidth => 300.0;

  @override
  double get optionsHeight => 48.0;

  void displaySelectionPopup(BuildContext context, Selection selection) {
    displayPopup(context, selection,
        child: Material(
          type: MaterialType.canvas,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          elevation: 8.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildOption("Highlight", () {
                selectionListener.showHighlightPopup(
                    selection, HighlightStyle.highlight);
              }),
              buildOption("Underline", () {
                selectionListener.showHighlightPopup(
                    selection, HighlightStyle.underline);
              }),
              buildOption("Note", () {
                Fimber.d("Note");
              }),
            ],
          ),
        ));
  }

  Widget buildOption(String text, VoidCallback action) => TextButton(
        onPressed: action,
        child: Text(text),
      );
}
