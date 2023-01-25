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
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          centerTitle: true,
          title: const Text('Send Money', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white, decoration: TextDecoration.none)),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: ListTile(
                      leading: CircleAvatar(backgroundImage: AssetImage(widget.contact.image)),
                      title: Text(
                        widget.contact.name, 
                        style: const TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      subtitle: Text(widget.contact.card)
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 100),
                NumberKeyboard(),
                const SizedBox(height: 30),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 50,
                  child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent)
                      ),
                    onPressed: () {
                      // Handle button press
                    },
                    child: const Text('Continue', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white, decoration: TextDecoration.none)),
                  ),
                ),
                const SizedBox(height: 30),
              ],
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
      height: 420,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(_enteredNumber, style: const TextStyle(fontSize: 40)),
          const SizedBox(height: 50),
          Flexible(
            child: Row(
              children: <Widget>[
                _buildKey('1'),
                _buildKey('2'),
                _buildKey('3'),
              ],
            ),
          ),
          const SizedBox(height: 9),
          Flexible(
            child: Row(
              children: <Widget>[
                _buildKey('4'),
                _buildKey('5'),
                _buildKey('6'),
              ],
            ),
          ),
          const SizedBox(height: 9),
          Flexible(
            child: Row(
              children: <Widget>[
                _buildKey('7'),
                _buildKey('8'),
                _buildKey('9'),
              ],
            ),
          ),
          const SizedBox(height: 9),
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
            style: const TextStyle(
              color: Colors.grey, 
              fontSize: 39.0,
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