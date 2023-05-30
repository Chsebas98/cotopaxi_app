import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:transparent_image/transparent_image.dart';

class InfoBackground extends StatelessWidget {
  const InfoBackground(
      {Key? key, required this.child, required this.secondChild})
      : super(key: key);
  final Widget child;
  final Widget secondChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          const _ImgHead(),
          _Description(child: secondChild),
          child,
        ],
      ),
    );
  }
}

class _ImgHead extends StatelessWidget {
  const _ImgHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.zero,
      width: double.infinity,
      height: size.height * 0.5,
      child: FutureBuilder(
        future: precacheImage(
          const NetworkImage(
            'https://www.ambiente.gob.ec/wp-content/uploads/2020/07/COTOPAXI.jpg',
          ),
          context,
        ),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: const NetworkImage(
                'https://www.ambiente.gob.ec/wp-content/uploads/2020/07/COTOPAXI.jpg',
              ),
              fadeInDuration: const Duration(seconds: 2),
              fit: BoxFit.cover,
            );
          } else {
            return const Center(
              child: SpinKitCircle(
                color: Colors.grey,
                size: 50.0,
              ),
            );
          }
        },
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 90, horizontal: 35),
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 2,
          child: SingleChildScrollView(child: child)),
    );
  }
}
