import 'package:flutter/material.dart';
import 'package:grid_view_app/detail_view.dart';

class HomeView extends StatelessWidget {
  List<String> Nama = [
    'IR.Soekarno',
    'Ahmad Yani',
    'Ki Hajar Dewantara',
    'Jendral Soedirman',
    'Cut Nya Dhien',
    'Pangeran Antasari',
    'Pangeran Diponegoro',
    'Mohammad Hatta',
  ];

  List<String> asal = [
    'Surabaya',
    'Jawa Tengah',
    'Yogyakarta',
    'Purbalingga',
    'Aceh',
    'Banjar',
    'Yogyakarta',
    'Jakarta',
  ];

  List<String> image = [
    'https://qubiz.net/wp-content/uploads/2019/10/presiden-soekarno-400x266@2x.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/3/3f/Ahmad_Yani.jpg',
    'https://i0.wp.com/www.akupaham.com/wp-content/uploads/2020/01/biografi-ki-hajar-dewantara-jejak-sejarah-e1578304956920.jpg?resize=302%2C365&ssl=1',
    'https://i0.wp.com/sejarahlengkap.com/wp-content/uploads/2019/08/Biografi-Jenderal-Sudirman-300x272.jpg?resize=354%2C322&ssl=1',
    'https://i1.wp.com/www.minews.id/wp-content/uploads/2019/11/Cut-Nyak-Dien-1200x720.jpg?resize=1200%2C720&ssl=1',
    'https://img-z.okeinfo.net/okz/500/library/images/2020/10/11/zzrk8k4yqv4j0sser6mw_13297.jpg',
    'https://i0.wp.com/news.detik.com/x/detail/investigasi/20200309/Kembalinya-Keris-Pangeran-Diponegoro/images/paneran-diponegoro--rikq9.png?resize=544%2C306&ssl=1',
    'https://i1.wp.com/beritabaik.id/cms/static/upload/content/images/20181026/1540526849928-bung%20hatta.png?resize=564%2C318&ssl=1',
  ];

  List<String> About = [
    'Soekarno lahir pada tanggal 6 Juni 1901 di Surabaya dan meninggal di dunia pada tanggal 14 Maret 1980 pada usia 77 tahun.',
    'Pahlawan nasional yang pertama kita bahas adalah Jendral Ahmad Yani. Beliau lahir pada tanggal 19 Juni 1922 di Jenar, Purworejo, Jawa Tengah. Beliau mengawali karir militernya dengan pangkat Sersan dengan mengikuti pendidikan militer pada Dinas Topografi Militer di Malang dan secara lebih intensif di Bogor.',
    'Ki Hajar Dewantara atau nama sebelumnya Raden Mas Soewardi Soerjaningrat diganti sejak tahun 1922. Beliau adalah pahlawan nasional Indonesia sekaligus sebagai seorang aktivis pergerakan kemerdekaan Indonesia',
    'Jendral Soedirman tercatat sebagai Panglima tentara sekaligus Jendral Republik Indonesia pertama termuda yang ada dalam sejarah. Menginjak usia yang ke 31, dia sudah bergabung dengan para pahlawan kemerdekaan untuk berjuang melawan para penjajah Belanda dan Jepang.',
    'Cut Nyak Dhien lahir di Lampadag, kerajaan Aceh pada tahun 1984 dan merupakan pahlawan wanita yang memiliki semangat juang tinggi dalam melawan penjajah.',
    'Salah satu Pahlawan nasional Indonesia yang berjuang untuk melawan penjajahan Belanda di daerah Banjar, Kalimantan Selatan. Pangeran Antasari lahir pada tahun 1797 di Banjar.',
    'Pangeran Diponegoro lahir pada tanggal 25 November 1785 di Yogyakarta dan wafat tanggal 8 Januari 1855. Beliau bersama rakyat Indonesia berjuang melawan pemerintahan Belanda dalam kurun waktu lima tahun, yaitu pada tahun 1825 hingga 1830.',
    'Mohammad Hatta atau dikenal dengan nama Bung Hatta adalah salah satu seorang pahlawan nasional yang berperan besar dalam proklamasi kemerdekaan Indonesia.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pahlawan Indonesia",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(Nama.length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailView(
                            nama: Nama[index], about: About[index])));
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0.0, vertical: 23.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.network(
                          image[index],
                          height: 70,
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(Nama[index],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text(asal[index],
                        style: TextStyle(
                          fontSize: 16,
                        )),
                  ],
                ),
              ),
            );
          })),
    );
  }
}
