
import 'package:flutter/material.dart';

void main() {
  runApp(const ReviewPage());
}

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.west, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text("Ulasan Makanan"),
          backgroundColor: Colors.green,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            buildReview(
              context: context,
              username: "user312",
              date: "2-9-2024",
              review: "Makanannya enak, porsinya juga bikin kenyang, makasih ya seller",
              adminReply: "Terimakasih sudah membeli di toko kami",
            ),
            buildReview(
              context: context,
              username: "user312",
              date: "2-9-2024",
              review: "Rasanya agak hambar, tp gapapa ttp enak",
            ),
          ],
        ),
      ),
    );
  }

  Widget buildReview({
    required BuildContext context,
    required String username,
    required String date,
    required String review,
    String? adminReply,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.green[100],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(username[0].toUpperCase()),
              ),
              const SizedBox(width: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(date, style: TextStyle(color: Colors.grey[600])),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Text(review),
          if (adminReply != null) ...[
            const Divider(color: Colors.grey),
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white, size: 18.0),
                ),
                const SizedBox(width: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "adminwarung",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(date, style: TextStyle(color: Colors.grey[600])),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Text(adminReply),
          ],
          if (adminReply == null) // Tombol "Balas" hanya muncul jika belum ada balasan
            const SizedBox(height: 8.0),
          if (adminReply == null)
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton.icon(
                onPressed: () {
                  _showReplyDialog(context, username);
                },
                icon: const Icon(
                  Icons.chat_bubble_outline,
                  size: 20.0,
                  color: Colors.black,
                ),
                label: const Text(
                  "Balas",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _showReplyDialog(BuildContext context, String username) {
    final TextEditingController _controller = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Balas Komentar"),
          content: TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: "Tulis balasan Anda...",
              border: OutlineInputBorder(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Batal"),
            ),
            TextButton(
              onPressed: () {
                // Aksi ketika balasan diberikan
                print("Balasan untuk $username: ${_controller.text}");
                Navigator.pop(context);
              },
              child: const Text("Kirim"),
            ),
          ],
        );
     },
);
}
}