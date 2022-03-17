import 'package:flutter/material.dart';
import 'widgets/vedio_list_item_widget.dart';

class ScreenFastLaughPage extends StatelessWidget {
  ScreenFastLaughPage({Key? key}) : super(key: key);

  // final _posters = [
  //   'https://www.themoviedb.org/t/p/w1280/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg',
  //   'https://www.themoviedb.org/t/p/w1280/3cccEF9QZgV9bLWyupJO41HSrOV.jpg',
  //   'https://www.themoviedb.org/t/p/w1280/bcCBq9N1EMo3daNIjWJ8kYvrQm6.jpg',
  //   'https://www.themoviedb.org/t/p/w1280/lJA2RCMfsWoskqlQhXPSLFQGXEJ.jpg',
  //   'https://www.themoviedb.org/t/p/w1280/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg',
  //   'https://www.themoviedb.org/t/p/w1280/qMVUlq6rdqFo1xZ5ozQcKFCDbgj.jpg',
  //   'https://www.themoviedb.org/t/p/w1280/onGdT8sYi89drvSJyEJnft97rOq.jpg',
  //   'https://www.themoviedb.org/t/p/w1280/3cccEF9QZgV9bLWyupJO41HSrOV.jpg',
  //   'https://www.themoviedb.org/t/p/w1280/bcCBq9N1EMo3daNIjWJ8kYvrQm6.jpg',
  //   'https://www.themoviedb.org/t/p/w1280/lJA2RCMfsWoskqlQhXPSLFQGXEJ.jpg',
  //   'https://www.themoviedb.org/t/p/w1280/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg',
  //   'https://www.themoviedb.org/t/p/w1280/qMVUlq6rdqFo1xZ5ozQcKFCDbgj.jpg',
  //   'https://www.themoviedb.org/t/p/w1280/onGdT8sYi89drvSJyEJnft97rOq.jpg',
  //   'https://www.themoviedb.org/t/p/w1280/3cccEF9QZgV9bLWyupJO41HSrOV.jpg',
  //   'https://www.themoviedb.org/t/p/w1280/bcCBq9N1EMo3daNIjWJ8kYvrQm6.jpg',
  // ];
  final _vedios = [
    'https://m.media-amazon.com/images/I/81ai6zx6eXL._AC_SL1304_.jpg',
    'https://mir-s3-cdn-cf.behance.net/project_modules/fs/2baee529323171.55edda9493f77.jpg',
    'https://lumiere-a.akamaihd.net/v1/images/p_blackwidow_21043_v2_6d1b73b8.jpeg',
    'https://m.media-amazon.com/images/I/81ai6zx6eXL._AC_SL1304_.jpg',
    'https://mir-s3-cdn-cf.behance.net/project_modules/fs/2baee529323171.55edda9493f77.jpg',
    'https://lumiere-a.akamaihd.net/v1/images/p_blackwidow_21043_v2_6d1b73b8.jpeg',
    'https://m.media-amazon.com/images/I/81ai6zx6eXL._AC_SL1304_.jpg',
    'https://mir-s3-cdn-cf.behance.net/project_modules/fs/2baee529323171.55edda9493f77.jpg',
    'https://lumiere-a.akamaihd.net/v1/images/p_blackwidow_21043_v2_6d1b73b8.jpeg',
    'https://m.media-amazon.com/images/I/81ai6zx6eXL._AC_SL1304_.jpg',
    'https://mir-s3-cdn-cf.behance.net/project_modules/fs/2baee529323171.55edda9493f77.jpg',
    'https://lumiere-a.akamaihd.net/v1/images/p_blackwidow_21043_v2_6d1b73b8.jpeg',
    'https://m.media-amazon.com/images/I/81ai6zx6eXL._AC_SL1304_.jpg',
    'https://mir-s3-cdn-cf.behance.net/project_modules/fs/2baee529323171.55edda9493f77.jpg',
    'https://lumiere-a.akamaihd.net/v1/images/p_blackwidow_21043_v2_6d1b73b8.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(15, (index) {
            return VedioListItemWidget(vedio: _vedios[index]);
          }),
        ),
      ),
    );
  }
}
