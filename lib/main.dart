import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Sederhana',
      // Menerapkan tema global untuk aplikasi
      theme: ThemeData(
        // Menentukan warna utama aplikasi
        primarySwatch: Colors.blue,
        // Menentukan tema teks secara global
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
              fontFamily: 'Poppins', fontSize: 16, color: Colors.black87),
          bodyMedium: TextStyle(
              fontFamily: 'Poppins', fontSize: 14, color: Colors.black54),
          headlineSmall: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue),
        ),
      ),
      home: const SimpleProfileScreen(),
    );
  }
}

class SimpleProfileScreen extends StatelessWidget {
  const SimpleProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil Pengguna',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          // Mengatur margin untuk seluruh konten
          margin: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Widget Card untuk menampilkan informasi utama profil
              Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  // Mengatur padding di dalam Card
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      // Widget Image untuk menampilkan foto profil
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/profile.png'),
                      ),
                      const SizedBox(width: 16.0),
                      // Widget Column untuk menyusun nama dan status
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Widget Text untuk nama
                          Text(
                            'Zaelani Mursid',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          const SizedBox(height: 8.0),
                          // Widget Text untuk status
                          Text(
                            '23552011345',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Informasi Kontak',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              // Widget Card yang berisi ListTile untuk informasi kontak
              Card(
                child: Column(
                  children: [
                    // Widget ListTile untuk email
                    ListTile(
                      // Widget Icon sebagai awalan
                      leading: const Icon(Icons.email, color: Colors.blue),
                      title: Text(
                        'Email',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      subtitle: Text(
                        'zae@itenas.ac.id',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    const Divider(),
                    // Widget ListTile untuk telepon
                    ListTile(
                      leading: const Icon(Icons.phone, color: Colors.blue),
                      title: Text(
                        'Telepon',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      subtitle: Text(
                        '+62 896 369 568 26',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    const Divider(),
                    // Widget ListTile untuk lokasi
                    ListTile(
                      leading:
                          const Icon(Icons.location_on, color: Colors.blue),
                      title: Text(
                        'Lokasi',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      subtitle: Text(
                        'Bandung, Indonesia',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
