import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Şahinkaya Kanyonu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Samsun/Turkey',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'Ara'),
        _buildButtonColumn(color, Icons.near_me, 'Yol Tarifi'),
        _buildButtonColumn(color, Icons.share, 'Paylas'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Vezirköprü’nün 17 km. kadar kuzeybatısında bulunan Kanyon (Yarmavadi), '
            'Altınkaya barajının en dar yeri olma özelliği ile de dikkat çeker ve'
            ' yaklaşık 1500 metre uzunluğundadır. Vezirköprüde sadece Osmanlı ve'
            ' Selçuklu değil, Hititlere kadar uzanan bir medeniyet geçmişinin izleri'
            ' ve birikimleri var. Hitit Krallarının tahta çıkarken kutsandığı yer de'
            ' Vezirköprüdedir. Şu an bu bölgede Alman arkeologlar kazı çalışmaları yapıyor.'
            ' Dolayısıyla gerek Kunduz Dağı gerekse'
            ' Şahinkaya Kanyonu gelecek yıllar içinde gerçekleşecek adımlarla hatırı '
            'sayılır bir çekim yeri olma yoluna girmiştir. '

      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/kanyon.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}