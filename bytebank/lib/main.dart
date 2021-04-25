import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TransferForm(),
      ),
    );
  }
}

class Editor extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final IconData icon;
  final String label;

  Editor({this.controller, this.label, this.hint, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          labelText: label,
          hintText: hint,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}

class TransferList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ItemTransfer(Transfer(100.00, 12345)),
          ItemTransfer(Transfer(200, 98433)),
          ItemTransfer(Transfer(200, 98433)),
        ],
      ),
      appBar: AppBar(
        title: Text('Transfers'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemTransfer extends StatelessWidget {
  final Transfer _transfer;
  ItemTransfer(this._transfer);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(this._transfer.value.toString()),
        subtitle: Text(this._transfer.accountNumber.toString()),
      ),
    );
  }
}

class Transfer {
  final double value;
  final int accountNumber;

  Transfer(this.value, this.accountNumber);

  @override
  String toString() {
    return 'Transfer{value:$value, accountNumber: $accountNumber}';
  }
}

class TransferForm extends StatelessWidget {
  final TextEditingController _controllerFieldAccountNumber =
      TextEditingController();
  final TextEditingController _controllerFieldValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create transfer')),
      body: Column(
        children: <Widget>[
          Editor(
            controller: _controllerFieldAccountNumber,
            label: 'Account Number',
            hint: '0000',
          ),
          Editor(
            controller: _controllerFieldValue,
            label: 'Value',
            hint: '0.00',
            icon: Icons.monetization_on,
          ),
          ElevatedButton(
            child: Text('Confirm'),
            onPressed: () => _createTransfer(),
          )
        ],
      ),
    );
  }

  void _createTransfer() {
    final int accountNumber = int.tryParse(_controllerFieldAccountNumber.text);
    final double value = double.tryParse(_controllerFieldValue.text);

    if (accountNumber != null && value != null) {
      final createdTransfer = Transfer(value, accountNumber);
      debugPrint('$createdTransfer');
    }
  }
}
