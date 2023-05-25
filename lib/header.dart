import 'package:flutter/material.dart';

class HeaderTile extends StatelessWidget {
  const HeaderTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const CircleAvatar(
        backgroundColor: Color(0xffffdca9),
        backgroundImage: AssetImage('images/avatar.png'),
      ),
      title: Row(
        children: [
          const Text('안녕 나 응애 ', style: TextStyle(fontWeight: FontWeight.bold)),
          const Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 18,
          ),
          Text(
            '1일전',
            style: TextStyle(color: Theme.of(context).disabledColor),
          )
        ],
      ),
      subtitle: Text('165cm | 53Kg',
          style: TextStyle(color: Theme.of(context).disabledColor)),
      trailing: FilledButton(onPressed: () {}, child: const Text('팔로우')),
    );
  }
}
