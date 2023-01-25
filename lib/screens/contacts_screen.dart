import 'package:finance_app/business_logic/app_contract.dart';
import 'package:finance_app/screens/payment_screen.dart';
import 'package:finance_app/screens/test_screen.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatefulWidget {
  ContactsScreen({super.key});

  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {

  TextEditingController editingController = TextEditingController();

  final List<AppContact> contacts = [
    AppContact(0, "Mister Дядько", "4441 1144 2365 0272", "assets/images/photo1.png"),
    AppContact(1, "Miss Тітка", "4444 1111 1234 0372", "assets/images/photo2.png"),
    AppContact(2, "Viktoria Secret", "4444 1111 1234 0372", "assets/images/photo3.png")
  ];

  var contactList = <AppContact>[];

  @override
  void initState() {
    contactList.addAll(contacts);
    super.initState();
  }

  void filterSearchResults(String query) {
  List<AppContact> searchList = <AppContact>[];
  searchList.addAll(contacts);
  if(query.isNotEmpty) {
    List<AppContact> listData = <AppContact>[];
    for (var item in searchList) {
      if(item.contains(query)) {
        listData.add(item);
      }
    }
    setState(() {
      contactList.clear();
      contactList.addAll(listData);
    });
    return;
  } else {
      setState(() {
      contactList.clear();
      contactList.addAll(contacts);
      });
  }
}

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: const Text("Contact"),
      //backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        }
      ),
    ),
    body: Center(
      child: Column(
        children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                controller: editingController,
                decoration: const InputDecoration(
                    hintText: "Search contact",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: contactList.length,
                itemBuilder: (context, index) {
                  return Container(
                    //padding: const EdgeInsets.only(left: 16, right: 16),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                        child: ListTile(
                            leading: CircleAvatar(backgroundImage: AssetImage(contactList[index].image)),
                            title: Text(
                              contactList[index].name,
                              style: const TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                            subtitle: Text(contactList[index].card)
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaymentScreen(contact: contactList[index]),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
  );
}