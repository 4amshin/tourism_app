class TourismPlace {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  String heroTag;
  List<String> imageUrls;

  TourismPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.heroTag,
    required this.imageUrls,
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Alang Puyuh',
    location: 'Kambo',
    description:
        'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    ticketPrice: 'Free',
    imageAsset: 'assets/images/alang1/cafe.jpg',
    imageUrls: [
      'assets/images/alang1/list1.jpg',
      'assets/images/alang1/list2.jpg',
      'assets/images/alang1/list3.jpg',
      'assets/images/alang1/list4.jpg',
      'assets/images/alang1/list5.jpg',
    ],
    heroTag: 'dash1',
  ),
  TourismPlace(
    name: 'Mountain Cafe',
    location: 'Kambo',
    description:
        'Memiliki beberapa teleskop, antara lain, Refraktor Ganda Zeiss, Schmidt Bimasakti, Refraktor Bamberg, Cassegrain GOTO, dan Teleskop Surya. Refraktor Ganda Zeiss adalah jenis teleskop terbesar untuk meneropong bintang. Benda ini diletakkan pada atap kubah sehingga saat teropong digunakan, atap tersebut harus dibuka. Observatorium Bosscha boleh dikunjungi oleh siapa pun, tanpa tiket. Namun, bagi yang ingin menggunakan teleskop Zeiss, wajib mendaftarkan diri. Untuk instansi atau lembaga pendidikan, diberikan jadwal hari Selasa sampai Jumat. Sementara itu, kunjungan individu dibuka setiap hari Sabtu.',
    openDays: 'Open Tuesday - Saturday',
    openTime: '09:00 - 14:30',
    ticketPrice: 'Free',
    imageAsset: 'assets/images/mountain1/m1.jpg',
    imageUrls: [
      'assets/images/mountain1/m1.jpg',
      'assets/images/mountain1/m2.jpg',
      'assets/images/mountain1/m3.jpg',
    ],
    heroTag: 'dash2',
  ),
  TourismPlace(
    name: 'Warung Mifta',
    location: 'Kambo',
    description:
        'Jalan Asia Afrika di Bandung memiliki kaitan yang sangat erat dengan pendirian kota Kembang ini. Karena pada saat itu, Gubernur Jenderal Herman Willem Deaendels dari Belanda menancapkan tongkatnya saat memerintahkan pendirian kota ini, yang kemudian diabadikan menjadi tugu Bandung Nol Kilometer.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Free',
    imageAsset: 'assets/images/mifta1/mf1.JPG',
    imageUrls: [
      'assets/images/mifta1/mf1.JPG',
      'assets/images/mifta1/mf2.JPG',
      'assets/images/mifta1/mf3.JPG',
    ],
    heroTag: 'dash3',
  ),
  TourismPlace(
    name: 'Pondok Aya',
    location: 'Kambo',
    description:
        'Jalan Asia Afrika di Bandung memiliki kaitan yang sangat erat dengan pendirian kota Kembang ini. Karena pada saat itu, Gubernur Jenderal Herman Willem Deaendels dari Belanda menancapkan tongkatnya saat memerintahkan pendirian kota ini, yang kemudian diabadikan menjadi tugu Bandung Nol Kilometer.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Rp.130000',
    imageAsset: 'assets/images/pondok1/pondok1.jpg',
    imageUrls: [
      'assets/images/pondok1/pondok1.jpg',
      'assets/images/pondok1/pondok2.jpg',
      'assets/images/pondok1/pondok3.jpg',
    ],
    heroTag: 'dash4',
  ),
  TourismPlace(
    name: 'Taman Tri S',
    location: 'Kambo',
    description:
        'Jalan Asia Afrika di Bandung memiliki kaitan yang sangat erat dengan pendirian kota Kembang ini. Karena pada saat itu, Gubernur Jenderal Herman Willem Deaendels dari Belanda menancapkan tongkatnya saat memerintahkan pendirian kota ini, yang kemudian diabadikan menjadi tugu Bandung Nol Kilometer.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Rp.5000',
    imageAsset: 'assets/images/taman1/taman1.jpg',
    imageUrls: [
      'assets/images/taman1/taman2.jpg',
      'assets/images/taman1/taman3.jpg',
      'assets/images/taman1/taman4.jpg',
    ],
    heroTag: 'dash5',
  ),
];
