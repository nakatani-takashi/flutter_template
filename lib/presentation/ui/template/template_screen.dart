import 'package:flutter/material.dart';
import 'package:flutter_template/domain/ui/template/template_screen_entity.dart';

class TemplateScreen extends StatelessWidget {
  const TemplateScreen({
    super.key,
    required this.templateScreenEntity,
  });
  final TemplateScreenEntity templateScreenEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(templateScreenEntity.pageName),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(templateScreenEntity.pageName),
            ElevatedButton(
              onPressed: templateScreenEntity.goNext,
              child: const Text('go next'),
            ),
          ],
        ),
      ),
    );
  }
}
