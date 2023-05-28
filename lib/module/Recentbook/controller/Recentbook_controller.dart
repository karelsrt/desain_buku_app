import 'package:flutter/material.dart';
import 'package:desain_buku_app/state_util.dart';
import '../view/Recentbook_view.dart';

class RecentbookController extends State<RecentbookView>
    implements MvcController {
  static late RecentbookController instance;
  late RecentbookView view;

  @override
  void initState() {
    instance = this;
    super.initState();
    bacaBuku();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  List buku = [
    {
      'id': 1,
      'percen': 0.5,
      'gambar':
          'https://deepublishstore.com/wp-content/uploads/2018/01/Wujud-Tanpa-Suara-Nurul-depan1.jpg',
      'judul': 'Buku Novel  Wujud Tanpa Suara',
      'sinopsis': '''Suaraku seakan hilang
Menyembunyikan kenyataan yang menyakitkan
Menyisahkan tubuhku yang sudah tak memiliki raga
Menjalani hidup dalam kehampaan
Ingin kembali kemasa indahku
Menutup kedua mataku berharap aku tak berada didunia
yang kejam ini
Merindukan adalah hal yang paling menyakitkan
Waktu yang seakan berjalan dengan lambat
Menyisahkan sebuah kenangan…
PIIMMMM……….
BRUKKHHH……..
Kegelapan mulai menyelimuti gadis berambut
panjang, tubuh yang kehilangan kesadaran, samar-samar
melihat kejadian disekilingnnya dan kembali tertutup
membuat kegelapan itu secara sepenuhnya mengambil alih
tempat cahaya yang ia lihat'''
    },
    {
      'id': 2,
      'percen': 0.9,
      'gambar':
          'https://deepublishstore.com/wp-content/uploads/2021/08/Senandung-Kunang-kunang_Widiayati_Senandung_70gr_Convert_Depan.jpg',
      'judul': 'Kumpulan Cerpen Senandung  Kunang kunang',
      'sinopsis':
          '''Buku kumpulan cerpen ini ditulis oleh seorang guru bernama Widiayati, S.Pd.SD. 
          Bu Guru yang cantik ini berusaha menuangkan ide dan curahan hatinya dari pengalamannya 
          sebagai pendidik, melalui cerpen yang terdiri dari 12 kisah yang bisa mengetuk hati 
          dan perasaan pembacanya ini. Dengan mengusung beberapa judul yang menarik,
           penulis berharap buku ini bisa memberikan pengalaman baru, amal jariah dan inspirasi guru-guru lain untuk terus berkarya untuk kemajuan anak bangsa ini.'''
    },
  ];

  bacaBuku() {
    buku;
    setState(() {});
  }
}
