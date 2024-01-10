import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';

enum DialogType {
  info('Info', Icons.info),
  loading('Loading', Icons.replay_outlined),
  alert('Alert', Icons.add_alert_rounded),
  confirm('Confirm', Icons.add_task_outlined);

  const DialogType(
    this.label,
    this.icon,
  );

  final String label;
  final IconData icon;

  Color get color => switch (this) {
        DialogType.info => Colors.grey,
        DialogType.loading => Colors.blue,
        DialogType.alert => Colors.red,
        DialogType.confirm => Colors.green,
      };
}

customDialogPopUp(
  BuildContext context,
  String message, [
  DialogType dialogType = DialogType.info,
  bool barrierDismissible = false,
]) =>
    showDialog(
      context: context,
      builder: (context) => CustomBasicDialog(
        description: message,
        dialogType: dialogType,
      ),
      barrierDismissible: barrierDismissible,
    );

class CustomBasicDialog extends StatelessWidget {
  const CustomBasicDialog({
    super.key,
    this.dialogType = DialogType.info,
    this.onConfirm,
    required this.description,
  });

  final String description;
  final DialogType dialogType;
  final VoidCallback? onConfirm;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 80.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              color: dialogType.color,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(dialogType.icon),
                const SizedBox(width: 8.0),
                Text(
                  dialogType.label,
                  style: context.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(description),
          ),
          const SizedBox(height: 16.0),
          switch (dialogType) {
            DialogType.info => _buildTextBtn(context, 'Ok'),
            DialogType.confirm => Row(
                children: [
                  _buildTextBtn(context, 'Cancel'),
                  _buildTextBtn(context, 'Ok', onConfirm),
                ],
              ),
            _ => _buildTextBtn(context, 'cancel'),
          },
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }

  _buildTextBtn(
    BuildContext context,
    String text, [
    VoidCallback? onPressed,
  ]) =>
      TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        onPressed: onPressed ?? Navigator.of(context).pop,
        child: Text(text),
      );
}
