import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frizbee/widgets/primary_button.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RequestPage extends StatefulWidget {
  RequestPage({Key? key}) : super(key: key);

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Etkinlik öneriniz nedir?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.add),
              ],
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Padding(
            padding: EdgeInsets.only(top: 45),
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 280,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                        side: const BorderSide(color: Colors.black54),
                      ),
                      color: Theme.of(context).dialogTheme.backgroundColor,
                      elevation: 4,
                      child: TextFormField(
                        //enabled: !screenController.isImageClicked,
                        // onSaved: (longExp) {
                        //   screenController.longExp = longExp!;
                        // },
                        maxLines: null,
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: 'Comment'),
                      ),
                    )),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 120),
                  child: PrimaryButton(
                      text: 'Gönder',
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Yorum için teşekkürler')));
                        AutoRouter.of(context).pop();
                      }),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
