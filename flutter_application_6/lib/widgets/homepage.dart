import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedSection = 'Today';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clima App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mayo 11',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Ciudad: La Ceiba',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  '',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '25°C',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              selectedSection == 'Today' ? 'Soleado' : 'Semana Soleada',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSection = 'Today';
                    });
                  },
                  child: Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 20,
                      color: selectedSection == 'Today' ? Colors.blue : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSection = 'Week';
                    });
                  },
                  child: Text(
                    'Week',
                    style: TextStyle(
                      fontSize: 20,
                      color: selectedSection == 'Week' ? Colors.blue : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            selectedSection == 'Today'
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Hora: '),
                          Text('18:00'),
                        ],
                        
                      ),
                      
                      Row(
                        children: [
                          Icon(
                            Icons.cloud,
                            color: Colors.grey,
                          ),
                          Text('25°C'),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Detalles',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Máxima:',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '30°C',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mínima:',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '20°C',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Presión:',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '1013 hPa',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Humedad:',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '60%',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                : Column(
                    children: [
                      
                      Row(
                        children: [
                          Text('Lunes: Soleado '),
                          Icon(
                            Icons.wb_sunny,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Martes: Nublado '),
                          Icon(
                            Icons.cloud,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Miércoles: Soleado '),
                          Icon(
                            Icons.wb_sunny,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Jueves: Lluvia '),
                          Icon(
                            Icons.beach_access,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Viernes: Nublado '),
                          Icon(
                            Icons.cloud,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Sábado: Lluvia '),
                          Icon(
                            Icons.beach_access,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Domingo: Soleado '),
                          Icon(
                            Icons.wb_sunny,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
