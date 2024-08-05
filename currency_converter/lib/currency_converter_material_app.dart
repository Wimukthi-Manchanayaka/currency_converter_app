import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CurrencyConverterMaterialApp extends StatelessWidget {
  const CurrencyConverterMaterialApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Currency Converter',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(60.0),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(60.0),
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ),

            //button
            ElevatedButton(
              onPressed: () {},
              child: const Text('Click me!'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: const Text('Enabled'),
              icon: const Icon(Icons.message),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.blue),
                foregroundColor: WidgetStateProperty.all(Colors.green),
                overlayColor: const WidgetStatePropertyAll(Colors.yellow),
                shadowColor: const WidgetStatePropertyAll(Colors.red),
                elevation: const WidgetStatePropertyAll(50.0),
                padding: const WidgetStatePropertyAll(EdgeInsets.all(20.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
