import 'package:finance_app/business_logic/app_contract.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  final AppContact contact;

  PaymentScreen({super.key, required this.contact});

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String _enteredNumber = '\$';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      centerTitle: true,
        title: const Text('Send money'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }
        ),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(widget.contact.image)),
            title: Text(widget.contact.name),
            subtitle: Text(widget.contact.card)
          ),
          // Container(
          //   padding: EdgeInsets.all(16),
          //   child: TextField(
          //     decoration: InputDecoration(hintText: 'Enter Payment Amount'),
          //     keyboardType: TextInputType.number,
          //     onChanged: (value) {
          //       setState(() {
          //         _enteredNumber = value;
          //       });
          //     },
          //   ),
          // ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  NumberKeyboard(),
                  SizedBox(
                    width: 300,
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.purple)
                        ),
                      onPressed: () {
                        // Handle button press
                      },
                      child: Text('Continue', style: TextStyle(fontSize: 30)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class NumberKeyboard extends StatefulWidget {
  NumberKeyboard({super.key});

  @override
  _NumberKeyboardState createState() => _NumberKeyboardState();
}

class _NumberKeyboardState extends State<NumberKeyboard> {
  String _enteredNumber = '\$';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(_enteredNumber, style: TextStyle(fontSize: 24)),
          SizedBox(height: 16),
          Flexible(
            child: Row(
              children: <Widget>[
                _buildKey('1'),
                _buildKey('2'),
                _buildKey('3'),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: <Widget>[
                _buildKey('4'),
                _buildKey('5'),
                _buildKey('6'),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: <Widget>[
                _buildKey('7'),
                _buildKey('8'),
                _buildKey('9'),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: <Widget>[
                _buildKey('.'),
                _buildKey('0'),
                _buildKey('⇐', delete: true),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildKey(String text, {bool delete = false}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          child: Text(
            text, 
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          onPressed: () {
            if (delete && _enteredNumber.length>1) {
              setState(() {
                _enteredNumber = _enteredNumber.substring(0, _enteredNumber.length - 1);
              });
            } else if (text=='.') {
                if (_enteredNumber=='\$') {
                  setState(() {
                    _enteredNumber += '0$text';
                  });
                } else if (_enteredNumber.contains('.')) {}
                else {
                  setState(() {
                    _enteredNumber += text;
                  });
                }
                
            } else if (_enteredNumber.length>=5 && _enteredNumber[_enteredNumber.length - 3]=='.') {}
            else if (text!='⇐'){
              setState(() {
                _enteredNumber += text;
              });
            }
          },
        ),
      ),
    );
  }
}