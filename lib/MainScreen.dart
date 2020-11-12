import 'package:dicoding/detail_list.dart';
import 'package:dicoding/model/pondok_place.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Pondok Di Solo'),
      ),
      body: ListView(
        children: tourismPlaceList.map((place) {
          return FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(
                  place : place,
                );
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(place.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            place.name,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(place.location),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

var tourismPlaceList = [
  TourismPlace(
    name: 'PPMI ASSALAAM',
    location: 'Solo',
    description:
        'adalah sebuah pondok pesantren Islam yang berlokasi di desa Pabelan kecamatan Kartasura Kabupaten Sukoharjo, Jawa Tengah. Pondok Pesantren Modern Islam Assalaam, biasa disingkat dengan PPMI Assalaam, adalah lembaga pendidikan swasta Islam yang berada di bawah naungan Yayasan Majelis Pengajian Islam Surakarta (YMPIS).',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    nohp: '(0271) 718741',
    imageAsset: 'images/assalaam.jpg',
    imageUrls: [
      'https://upload.wikimedia.org/wikipedia/id/f/f7/Assalaam_mosque.jpg',
      'https://pakarfisika.files.wordpress.com/2013/12/kalender_meja_2014-ppmi-assalaam-pakarfisika-12_des_b.jpg',
      'https://pakarfisika.files.wordpress.com/2014/01/lokakarya_nasional_ilmu_falak_2013-casa-ppmi-assalaam-pakarfisika-014.jpg'
    ],
  ),
  TourismPlace(
    name: 'ponpes ta mirul islam',
    location: 'Surakarta',
    description:
        'Cita-cita mendirikan Pondok Pesantren, mulai dirintis pada tahun 1968.  Dengan  membentuk Yayasan Ta’mirul Masjid Tegalsari dan dilanjutkan dengan mendirikan SD Ta’mirul Islam. Kemudian pada tahun 1979, didirikanlah SMP Ta’mirul Islam.Walaupun telah berdiri dua lembaga diatas, masih dirasa kurang dalam menjawab tantangan zaman dan harapan masyarakat sekitar. Diawali kegiatan berupa Pesantren Kilat atau populer disebut Pesantren Syawwal, Pondok Pesantren Ta’mirul Islam resmi didirikan. Pendirian ini dilakukan pada tanggal 14 Juni 1986.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:30',
    nohp: '(0271) 728536',
    imageAsset: 'images/takmirul.JPG',
    imageUrls: [
      'https://fastly.4sqi.net/img/general/600x600/8SHjkj91MOrH_yT5u6l5nn9Rb9EERec2UzyQM-YkvuE.jpg',
      'https://timlo.net/wp-content/uploads/2019/01/20190111_133651.jpg',
      'https://santri.laduni.id/panel/themes/default/uploads/post/400x250/ppalhdyt.jpg',
    ],
  ),
  TourismPlace(
    name: 'Pondok Pesantren Al-Muayyad Mangkuyudan',
    location:
        'Jl. K.H Samanhudi No.64, Purwosari, Kec. Laweyan, Kota Surakarta, Jawa Tengah 57142',
    description:
        'Al-Muayyad merupakan pondok pesantren Al-Quran, yang dirintis tahun 1930 olen K.H. Abdul Mannan bersama K.H. Ahmad Shofawi dan Prof. K.H. Moh Adnan dan ditata sistemnya ke arah sistem madrasah tahun 1937 oleh KH. Ahmad Umar Abdul Mannan. Pembelajaran Al-Quran itu kemudian sistem madrasah dilengkapi dengan Madrasah Diniyyah (1939), MTs dan SMP (1970), MA (1974), dan SMA (1992) dalam lingkungan pondok pesantren.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    nohp: '(0271) 714821',
    imageAsset: 'images/almu.jpg',
    imageUrls: [
      'https://2.bp.blogspot.com/-QgOYkyQB7eo/W-rDMhrnTQI/AAAAAAAADok/nxJlfva09x8ibbYszdaBLwazKDHVEDlVwCK4BGAYYCw/s1600/unnamed.jpg',
      'https://nahdlatululama.id/wp-content/uploads/2018/05/10544411_774021532654289_6265342314627444323_n.jpg',
      'https://www.laduni.id/panel/themes/default/uploads/4Pesantren%20Muayyad.jpg',
    ],
  ),
  TourismPlace(
    name: 'PPTQ Al Kahfi Hidayatullah Surakarta',
    location:
        'Jl. Lingkar Utara No.KM 5, Mojosongo, Kec. Jebres, Kota Surakarta, Jawa Tengah 57127',
    description:
        'Al-Kahfi Hidayatullah adalah sebuah yayasan yang konsisten menangani Pendidikan, Dakwah, Sosial dan peningkatan ekonomi umat. Lembaga ini berdiri sejak 1991 dan mulai memiliki Kampus Peradaban Islam pada tahun 1996.',
    openDays: 'Open Everyday',
    openTime: '24 jam',
    nohp: '(0271) 7087089',
    imageAsset: 'images/alkaf.jpg',
    imageUrls: [
      'https://3.bp.blogspot.com/-IO5Kyizd7VA/WgvmW7ontfI/AAAAAAAABTA/2gtfp24ktzQWwVOrQVxNCg8i3ufJMAARACLcBGAs/s1600/Juara%2BUmum%2BOlimpiade%2BPelajar%2BHidayatullah%2B2015.jpg',
      'https://4.bp.blogspot.com/-JjPboBWeu5c/W-MAZtIAKMI/AAAAAAAAAEw/2_lRay9dmbkoyObytkbRhxd3VdArmIUIQCEwYBhgL/w1200-h630-p-k-no-nu/info%2B1.jpg',
      'https://3.bp.blogspot.com/-lsh8DXi3BlE/T35Vf4EyeLI/AAAAAAAAAAM/rdomgwzGo64/s1600/alkahfi-3.jpg',
    ],
  ),
  TourismPlace(
    name: 'Pondok Pesantren Modern IMAM SYUHODO',
    location:
        'Jl. KH. Ahmad Dahlan No. 154, Wonorejo, Polokarto, Blimbing, Wonorejo, Kec. Polokarto, Kabupaten Sukoharjo, Jawa Tengah 57555',
    description:
        'Pondok Pesantren Modern Imam Syuhodo (selanjutnya di singkat PPMIS) adalah salah satu pesantren dengan system pendidikan modern yang didirikan oleh Pimpinan Cabang Muhammadiyah Blimbing daerah Sukoharjo pada tahun 1994. Dengan No. SK. PCM : 194/SK.PC/I.A/1.a/1994. Pesantren ini terletak di desa Wonorejo, kecamatan Polokarto, kabupaten Sukoharjo, Jawa Tengah.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    nohp: '(0271) 611556',
    imageAsset: 'images/im.jpg',
    imageUrls: [
      'https://4.bp.blogspot.com/-y1WT3f69VDw/V6PtnZ8wdxI/AAAAAAAAAdo/WmNybyuG9RUs5M0ht7H1v-kBmbkuvVGlACLcB/s1600/imsyud%2B%25282%2529.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTZhmXpJpqFYyKYQqA7zjneu8Vl9ZEnLBolpw&usqp=CAU',
      'https://photos.wikimapia.org/p/00/06/49/35/72_big.jpg',
    ],
  ),
  TourismPlace(
    name: 'Pondok Pesantren Al Mukmin',
    location:
        'Jalan Ngruki, Cemani, Ngruki, Cemani, Kec. Grogol, Kabupaten Sukoharjo, Jawa Tengah 57552',
    description:
        'Berdirinya Pondok Pesantren Islam Al-Mukmin bermula dari adanya kegiatan pengajian selepas zuhur di masjid Agung Surakarta. Selanjutnya para da’i dan mubaligh mengembangkan bentuk pengajian tersebut dengan mendirikan Madrasah Diniyah di jalan Gading Kidul 72 A Solo.  Perkembangan Madrasah ini cukup pesat karena diantaranya didukung oleh media massa yaitu Radio Dakwah Islam (RADIS) Surakarta pada saat itu.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    nohp: '(0271) 719171',
    imageAsset: 'images/ngruki.jpg',
    imageUrls: [
      'https://cdn2.tstatic.net/jateng/foto/bank/images/pondok-pesantren-al-mukmin-atau-terkenal-dengan-ponpes-ngruki-sukoharjo_20180227_180205.jpg',
      'https://cdn2.tstatic.net/tribunnews/foto/bank/images/spanduk-penyambutan-abu-bakar-baasyir.jpg',
      'https://www.harianmerapi.com/wp-content/uploads/2017/12/Pondok-Pesantren-Islam-Al-Mukmin-Ngruki-Cemani-Grogol-Sukoharjo.png',
    ],
  ),
  TourismPlace(
    name: 'Pondok Pesantren Jamsaren ',
    location:
        ' Jl. Veteran No.263, Serengan, Kec. Serengan, Kota Surakarta, Jawa Tengah 57155',
    description:
        'Pondok Pesantren Jamsaren yang berada di Jl. Veteran No. 263 Serengan Surakarta merupakan pondok tertua dan terbaik kedua. Pondok ini pertama kali berdiri sekitar tahun 1750.Dalam sejarahnya, pondok ini melewati dua periode, setelah mengalami kevakuman hampir 50 tahun, antara 1830 - 1878. Semula, pondok pesantren yang didirikan pada masa pemerintahan Pakubuwono IV ini hanya berupa surau keci',
    openDays: 'Open Everyday',
    openTime: '09:00 - 17:00',
    nohp: '(0271) 7512043',
    imageAsset: 'images/jams.jpg',
    imageUrls: [
      'https://nahdlatululama.id/wp-content/uploads/2018/05/majmsren.jpg',
      'https://2.bp.blogspot.com/-e3sVz8Jn0Zg/TnckBE8A7FI/AAAAAAAAA8E/ljI275G3v0c/s400/jamsaren%2Bpondok.png',
      'https://www.laduni.id/panel/themes/default/uploads/post/400x250/Pondok-Pesantren-Jamsaren-Solo.jpg',
    ],
  ),
  TourismPlace(
    name: 'Pondok Pesantren Imam Bukhari',
    location:
        ' Jl. Raya Solo -Purwodadi KM.8 Selokaton, Gondangrejo Karanganyar-Solo ',
    description:
        'Pondok Pesantren Imam Bukhari menerapkan pola pendidikan Islam yang bertitik tekan pada tasfiyah dan tarbiyah. Tasfiyah berarti memurnikan ajaran Islam dari segala noda syirik, bid’ah, khurafat, gerakan-gerakan dan pemikiran-pemikiran yang merusak Islam. Tarbiyah berarti mendidik kaum muslimin menjadi terbiasa mengamalkan ajaran Islam yang sudah dipahami secara benar.',
    openDays: 'Open Everyday',
    openTime: '08:00 - 20:00',
    nohp: ' (0271) 858199',
    imageAsset: 'images/ima.jpg',
    imageUrls: [
      'https://bukhari.or.id/wp-content/uploads/2019/08/DSC_0579-1-1024x681.jpg',
      'https://bukhari.or.id/wp-content/uploads/2019/08/IMG_20181112_123928_HDR-300x200.jpg',
      'https://sekolah-sunnah.s3.ap-southeast-1.amazonaws.com/photos/1571361364_imam%20bukhoir%202.jpg',
    ],
  ),
  TourismPlace(
    name: 'Pondok Pesantren Al Ukhuwah',
    location:
        ' Mranggen RT. 03 / RW. 03, Joho, Sukoharjo, Sawah, Joho, Kec. Sukoharjo, Kabupaten Sukoharjo, Jawa Tengah 57513',
    description:
        'Pondok Pesantren Al Ukhuwah Sukoharjo diselenggarakan oleh Yayasan Pendidikan Al Ukhuwah Sukoharjo sejak tahun 2002 di atas tanah wakaf yang berlokasi di Joho Sukoharjo dan dibangun dengan bantuan dari Idaaroh Al Masaajid wal Masyaari’il Khoiriyyah, Saudi Arabia.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    nohp: '',
    imageAsset: 'images/msw2.jpg',
    imageUrls: [
      'https://i0.wp.com/alukhuwah.com/wp-content/uploads/2016/10/IMG_1254.jpg',
      'https://mswalukhuwah.sch.id/wp-content/uploads/2018/04/asrama-putra.jpg',
      'https://i1.wp.com/alukhuwah.com/wp-content/uploads/2016/10/IMG_1253.jpg',
    ],
  ),
];
