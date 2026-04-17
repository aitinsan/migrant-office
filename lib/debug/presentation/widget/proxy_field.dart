import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProxyField extends StatefulWidget {
  const ProxyField({
    super.key,
    required this.proxyIp,
    required this.onSet,
    this.enabled = true,
  });

  final bool enabled;

  final String proxyIp;

  final ValueChanged<String> onSet;

  @override
  State<ProxyField> createState() => _ProxyFieldState();
}

class _ProxyFieldState extends State<ProxyField> {
  late final TextEditingController _controller = TextEditingController(
    text: widget.proxyIp,
  );

  @override
  void didUpdateWidget(ProxyField oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (_controller.text != widget.proxyIp) {
      _controller.text = widget.proxyIp;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  /* #endregion */

  @override
  Widget build(BuildContext context) => TextField(
    enabled: widget.enabled,
    decoration: InputDecoration(
      hintText: '192.168.1.1:0000',
      labelText: 'Proxy',
      suffixIcon: CupertinoButton(
        onPressed: widget.enabled ? () => widget.onSet(_controller.text) : null,
        child: const Text('Set'),
      ),
    ),
    controller: _controller,
  );
}
