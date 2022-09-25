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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Trần Ngọc Tiến",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              ClipOval(
                child: Image.asset(
                  "assets/Nam.jpg",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "@ngoctienTNT",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 10,
                width: double.infinity,
              ),
              SizedBox(
                width: 150,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    "Chỉnh sửa",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Mày phải giỏi đến mức không ai dám ngó lơ mày!\n Bởi vì chỉ có thành công mới định nghĩa mày là ai!",
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 10),
              const Divider(
                height: 2,
                color: Colors.black,
                endIndent: 30,
                indent: 30,
              ),
              const SizedBox(height: 20),
              const Text(
                "Kỹ năng",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Spacer(),
                  Image.network(
                    "https://play-lh.googleusercontent.com/5e7z5YCt7fplN4qndpYzpJjYmuzM2WSrfs35KxnEw-Ku1sClHRWHoIDSw3a3YS5WpGcI",
                    width: 150,
                  ),
                  const Spacer(),
                  Image.network(
                    "https://avatars.githubusercontent.com/u/1609975?s=280&v=4",
                    width: 120,
                  ),
                  const Spacer(),
                ],
              ),
              const Divider(
                height: 2,
                color: Colors.black,
                endIndent: 30,
                indent: 30,
              ),
              Row(
                children: [
                  const Spacer(),
                  Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/ISO_C%2B%2B_Logo.svg/150px-ISO_C%2B%2B_Logo.svg.png",
                    width: 110,
                  ),
                  Image.network(
                    "https://plpsoft.vn/ckfinder/connector?command=Proxy&lang=vi&type=Files&currentFolder=%2FBaivietIT%2FCS_CB%2F&hash=c245c263ce0eced480effe66bbede6b4d46c15ae&fileName=3.png",
                    width: 200,
                  ),
                  const Spacer(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
