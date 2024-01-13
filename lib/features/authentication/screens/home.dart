import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text('Heading',style: Theme.of(context).textTheme.headline2,),
            Text('Sub-Heading',style: Theme.of(context).textTheme.subtitle2,),
            Text('Paragraph',style: Theme.of(context).textTheme.bodyText1,),
            ElevatedButton(onPressed: (){}, child: Text('Elevated Button')),
            OutlinedButton(onPressed: (){}, child: Text('Outlined Button')),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_shopping_cart),
        onPressed: () {  },


      ),
    );
  }
}
