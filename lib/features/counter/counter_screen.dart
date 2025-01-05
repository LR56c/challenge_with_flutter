import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';

// class CounterScreen extends StatefulWidget {
//   @override
//   _CounterScreenState createState() => _CounterScreenState();
// }
//
// class _CounterScreenState extends State<CounterScreen> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print('CounterScreen build');
//
//     return Scaffold(
//       appBar: AppBar(title: Text('StatefulWidget Example')),
//       body: Center(
//         child: Text(
//           'Counter: $_counter',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

@RoutePage()
class CounterScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final counter = useState(0);

    print('CounterScreen build');
    return Scaffold(
      appBar: AppBar(title: Text('flutter_hooks Example')),
      body: Center(
        child: Text(
          'Counter: ${counter.value}',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counter.value++,
        child: Icon(Icons.add),
      ),
    );
  }
}
