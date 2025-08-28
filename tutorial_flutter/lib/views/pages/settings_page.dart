import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem = 'e1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), //for stateful widget only use widget.title
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 5),
                      content: Text('This is a snackbar'),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                child: Text('Open Snackbar'),
              ),

              Divider(
                color: Colors.white,
                thickness: 2,
                height: 20,
                endIndent: 200,
              ),

              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Alert Title'),
                        content: Text('Alert Dialog'),
                        actions: [
                          FilledButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Open Dialog'),
              ),
              DropdownButton(
                value: menuItem,
                items: [
                  DropdownMenuItem(value: 'e1', child: Text('Item 1')),
                  DropdownMenuItem(value: 'e2', child: Text('Item 2')),
                  DropdownMenuItem(value: 'e3', child: Text('Item 3')),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),
              TextField(
                controller: controller,
                decoration: InputDecoration(border: OutlineInputBorder()),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              Text(controller.text),
              Checkbox(
                tristate: true,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              CheckboxListTile.adaptive(
                tristate: true,
                title: Text('Click Me'),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              Switch(
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              SwitchListTile.adaptive(
                title: Text('Click Me'),
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              Slider.adaptive(
                max: 10.0,
                value: sliderValue,
                divisions: 10,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                  print(value);
                },
              ),
              InkWell(
                splashColor: Colors.teal,
                highlightColor: Colors.red,
                onTap: () {
                  print('Image Clicked');
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.white12,
                ),
              ),

              ElevatedButton(onPressed: () {}, child: Text('Click Me')),
              OutlinedButton(onPressed: () {}, child: Text('Click Me')),
              TextButton(onPressed: () {}, child: Text('Click Me')),
              FilledButton(onPressed: () {}, child: Text('Click Me')),
              BackButton(),
              CloseButton(),
            ],
          ),
        ),
      ),
    );
  }
}
