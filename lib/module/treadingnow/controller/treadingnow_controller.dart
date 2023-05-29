import 'package:flutter/material.dart';
import 'package:desain_buku_app/state_util.dart';
import '../view/treadingnow_view.dart';

class TreadingnowController extends State<TreadingnowView>
    implements MvcController {
  static late TreadingnowController instance;
  late TreadingnowView view;

  @override
  void initState() {
    bacatreading();
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  List itembuku = [];

  bacatreading() {
    List listtreadingnow = [
      {
        "id": 1,
        "cover":
            "https://deepublishstore.com/wp-content/uploads/2021/08/Kabut-Di-Teras-Senja_Sutini_Netprom-Evi-Sulistyaningsih_Rev-1.0_70gr_Convert_Depan.jpg",
        "penulis": "Sutini, S.Pd.",
        "jenis": "Novel",
        "sinposis":
            """ Kumpulan Cerpen Kabut di Teras Senja, merupakan buku antologi yang berisi contoh cerpen tentang senja yang sangat lengkap terdiri dari beberapa kisah menarik.
Buku kumpulan contoh cerpen dengan judul Kabut di Teras Senja ini ditulis oleh seorang guru bernama Sutini, S.Pd. Bu guru yang cantik ini berusaha menuangkan keresahan hatinya dari pengalamannya sebagai pendidik. Cerpen yang terdiri atas 12 kisah yang bisa mengetuk hati dan perasaan pembacanya ini.
Cerpen berjudul Kabut di Teras Senja ini mengisahkan seorang guru honorer SD swasta dengan status janda ditinggalkan suaminya dengan sepuluh tahun berjuang keras sendirian membesarkan ketiga anaknya. Bagaimana kelanjutan ceritanya? Mari kita simak bersama. Dengan mengusung beberapa judul lainnya, harapan penulis buku ini bisa memberikan pengalaman baru, pesan moral, pendidikan karakter, amal jariah, dan inspirasi guru-guru lain untuk terus berkarya untuk kemajuan anak bangsa ini.""",
      },
      {
        "id": 2,
        "cover":
            "https://deepublishstore.com/wp-content/uploads/2022/06/Gugurnya-Bunga-bunga-Pertama_M.-Nur-Hasib_Rev-3.0_BP_CONVERT_DEPAN.jpg",
        "penulis": "M. Nur Hasib",
        "jenis": "Novel",
        "sinposis": """
Merenda cinta pertama di masa remaja, suatu episode romantis yang tak terlupakan sepanjang masa. Bagaikan bunga pertama yang mekar menabur aroma di taman sepanjang hari. Cinta dan cita-cita yang dirajut seiring sejalan akan menuai sukses dan kebahagiaan yang diidamkan karena keduanya memiliki power bernilai plus bagi pelakunya. Namun, cita-cita setinggi bintang di langit terkadang kandas di tengah jalan. Sebagaimana cinta tak selamanya berakhir dengan suatu ikatan pernikahan dan perkawinan. Pernikahan atau perkawinan yang tidak dilandasi dengan cinta, merupakan tradisi kaku yang dapat mengorbankan suatu episode hidup dan kehidupan. Cinta dan cita yang berawal dengan senyum nan romantis, adakalanya berakhir dengan tetesan air mata. Ibarat bunga yang sedang mekar jatuh diterpa badai, berserakan di taman yang gersang sebelum kumbang yang berkelana datang untuk menyuntingnya. Penulis mengajak menyusuri alur cerita lewat novel ini. Barangkali di sana terdapat semangat untuk perenungan dalam mengarungi setiap episode kehidupan.
""",
      },
      {
        "id": 3,
        "cover":
            "https://deepublishstore.com/wp-content/uploads/2021/12/Secangkir-Kopi-Buat-Ayah_Tyas-N_depan.jpg",
        "penulis": "Tyas Nurhayati, M.Pd.",
        "jenis": "Novel",
        "sinposis": """
Buku kumpulan cerpen dengan judul SECANGKIR KOPI BUAT AYAH ini ditulis oleh seorang guru bernama Tyas Nurhayati. Bu Guru ini berusaha menuangkan keresahan hatinya dari pengalamannya sebagai pendidik melalui cerpen yang terdiri dari 12 kisah yang bisa mengetuk hati dan perasaan pembacanya ini.

Ide-ide baru yang tercurah dalam rentetan rangkaian membentuk cerita yang unik dalam buku ini, tentu memberikan pengalaman baru dalam dunia sastra. Mungkin semua orang pasti mempunyai pengalaman apa saja yang dialaminya dalam kehidupan nyata, namun tak semua bisa menuangkan itu dalam bentuk tulisan yang menarik untuk dibaca.

Dengan mengusung beberapa judul lainnya, harapan penulis buku ini bisa memberikan pengalaman baru, pesan moral, pendidikan karakter, amal jariah dan inspirasi guru-guru lain untuk terus berkarya untuk kemajuan anak bangsa ini.
""",
      },
      {
        "id": 4,
        "cover":
            "https://deepublishstore.com/wp-content/uploads/2018/12/157-Hari-Mencari-Makna-Hidup-Dis-rev-3.0-Convert-depan.jpg",
        "penulis": "Dian Inda Sari",
        "jenis": "Novel",
        "sinposis": """
Pada suatu saat ada seorang mahasiswa saya meminta kepada saya, agar nilai perbaikannya A. Saya tahu kemampuan dia, kemudian saya bertanya:

“Untuk apa nilai A itu?”

“Agar saya bisa bekerja (melamar kerja) Bu… “

“Apa kau bisa kerja?”

Dia terdiam, tidak bisa menjawab.

Begitu juga ketika kita berdoa untuk sesuatu kepada Allah Sang Pemilik kita. Mengapa doa itu tidak menjadi kenyataan? Itu karena kita hanya melihat dari sisi keinginan kita! Bisa meminta, tapi tidak bisa mendeskripsikan apa yang kita minta? untuk apa dia? Apakah kita pantas? Yang pasti Allah akan memberikan suatu kepantasan dan juga ada rahasia kemashalatan di masa yang akan datang untuk apa sebenarnya kita diciptakan Nya. Kita semua mempunyai masa, dan terikat pada masa itu untuk beribadat kepada Nya yaitu segala usaha lahir dan batin sesuai dengan perintah Nya untuk mendapatkan kebahagiaan dan keseimbangan hidup, baik untuk diri sendiri, keluarga, masyarakat maupun terhadap alam semesta.

Bagaimana agar kita bisa mencapai itu semua? peganglah keyakinan ini: langkah, rezeki, pertemuan dan maut itu semua ada di tangan Allah, namun itu ada unsur aksi dan reaksi yang bermula dari diri kita sendiri. Hasil tidak akan mengingkari usaha dan usaha yang benar adalah berdasarkan ilmu dan ilmu yang benar adalah yang berasal dari keimanan yang kokoh sehingga tidak ada dusta di dalamnya dan pada akhirnya kita akan sampai kepada janji Nya:

“Niscaya Allah akan meninggikan orang-orang yang beriman di antaramu dan orang-orang yang diberi ilmu pengetahuan beberapa derajat.” (QS. Al Mujadilah: 11)
""",
      },
    ];

    itembuku = listtreadingnow;
    print(itembuku);
    setState(() {});
  }
}
