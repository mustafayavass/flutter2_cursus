import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Container",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Container(
        color: Colors.grey,
        height: 420,
        width: 300,
        margin: EdgeInsets.fromLTRB(50, 50, 0, 0),
        padding: EdgeInsets.all(20),
        child: Text(
            textAlign: TextAlign.justify,
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nunc ipsum, rutrum at mattis vel, fermentum sit amet turpis. Curabitur vel justo odio. Maecenas arcu ante, elementum et tellus vitae, ultricies dapibus neque. Quisque a tempus purus, at ultrices sem. Etiam consectetur est vitae ornare molestie. Maecenas ut lorem quam. Aliquam accumsan tellus at laoreet imperdiet. Proin risus leo, auctor eget semper vitae, auctor vel dolor. Praesent ac rhoncus libero. Aliquam sodales tellus ornare dolor varius dignissim. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris venenatis tincidunt ipsum, et gravida justo porttitor at. Vivamus."),
      ),
    );
  }
}
