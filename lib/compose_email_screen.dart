import 'package:flutter/material.dart';
import 'package:mail_app/data.dart';
import 'package:mail_app/home_screen.dart';

class ComposeScreen extends StatefulWidget {
  const ComposeScreen({Key? key, required void onSendMessage}) : super(key: key);

  @override
  State<ComposeScreen> createState() => _ComposeScreenState();
}

class _ComposeScreenState extends State<ComposeScreen> {
  bool expandMore = false;

  bool showCcField = false;

  bool showBccField = false;

  final List<String> menuTabItems = [
    'Schedule send',
    "Confidential Mode",
    "Discard",
    "Settings",
    "help and feedback"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            iconSize: 24,
            color: Colors.black54,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text(
            'Compose',
            style: TextStyle(color: Colors.black54),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.attachment_outlined),
              iconSize: 24,
              color: Colors.black54,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.send),
              iconSize: 24,
              color: Colors.black54,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Success'),
                      content: Text('Mail has been sent.'),
                      actions: [
                        TextButton(
                          child: Text('OK'),
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            InkWell(
              child: PopupMenuButton(
                iconSize: 24,
                icon: const Icon(
                  Icons.more_vert_rounded,
                  color: Colors.black54,
                ),
                itemBuilder: (context) => menuTabItems
                    .map(
                      (itemName) => PopupMenuItem(
                        child: Text(itemName),
                        value: itemName,
                      ),
                    )
                    .toList(),
                onSelected: (value) {
                  setState(() {
                    if (value == 'Cc') {
                      showCcField = true;
                    } else if (value == 'Bcc') {
                      showBccField = true;
                    }
                  });
                },
              ),
            ),
          ],
        ),
        body: InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: kPadding),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(
                        top: kPadding - 7,
                        left: kPadding - 10,
                        right: kPadding - 10),
                    child: const Text(
                      'From',
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                    ),
                  ),
                  hintText: '+91 7993791231',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.expand_more),
                    color: Colors.black54,
                    onPressed: () {},
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: kPadding - 4),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(
                        top: kPadding - 7,
                        left: kPadding - 10,
                        right: kPadding - 10),
                    child: const Text(
                      'To',
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.expand_more),
                    color: Colors.black54,
                    onPressed: () {
                      setState(() {
                        expandMore = !expandMore;
                      });
                    },
                  ),
                ),
              ),
              if (expandMore)
                Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: kPadding - 4),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                              top: kPadding - 7,
                              left: kPadding - 10,
                              right: kPadding - 10),
                          child: const Text(
                            'Cc',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: kPadding - 4),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                              top: kPadding - 7,
                              left: kPadding - 10,
                              right: kPadding - 10),
                          child: const Text(
                            'Bcc',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                      top: kPadding - 10,
                      left: kPadding - 10,
                      right: kPadding - 10),
                  hintText: 'Subject',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                      top: kPadding - 10,
                      left: kPadding - 10,
                      right: kPadding - 10),
                  hintText: 'Compose',
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
              ),
            ],
          ),
        ));
  }
}
