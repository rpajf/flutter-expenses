import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class PopupDialog extends StatelessWidget {
  _onBasicAlertPressed(context) {
    Alert(
      context: context,
      title: "Erro no cadastro de transação",
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Basic Alert'),
              onPressed: () => _onBasicAlertPressed(context),
            ),
          ],
        ),
      ),
    );
  }
}
