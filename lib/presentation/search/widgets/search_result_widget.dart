import 'package:flutter/material.dart';
import 'package:netflixclone/presentation/search/widgets/search_title_widget.dart';

class SearchResulWidget extends StatelessWidget {
  SearchResulWidget({Key? key}) : super(key: key);

  // final _posters = [
  //   'https://www.themoviedb.org/t/p/w1280/onGdT8sYi89drvSJyEJnft97rOq.jpg',
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
  final _posters = [
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
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchTitleWidget(title: 'Movies & TV'),
          Expanded(
              child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1.1 / 1.8,
            children: List.generate(15, (index) {
              return MainMoviePosterCard(poster: _posters[index]);
            }),
          ))
        ],
      ),
    );
  }
}

class MainMoviePosterCard extends StatelessWidget {
  const MainMoviePosterCard({
    Key? key,
    required String poster,
  })  : _poster = poster,
        super(key: key);

  final String _poster;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
              image: NetworkImage(
                _poster,
              ),
              fit: BoxFit.fill)),
    );
  }
}
