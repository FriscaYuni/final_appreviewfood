import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.views,
    required this.createdAt,
  });

  static List<Article> articles = [
    Article(
      id: '1',
      title: 'Soto Lamongan',
      subtitle: 'Cicipi Kelezatan Tradisi: Soto Lamongan',
      body:
          'Soto Lamongan adalah hidangan tradisional khas Indonesia, berasal dari kota Lamongan, Jawa Timur. Hidangan ini terkenal karena kuah kaldu ayamnya yang kaya rasa, disajikan dengan mie, potongan daging ayam, telur rebus, tauge (kecambah), seledri, bawang goreng, dan irisan bawang merah. Soto Lamongan memiliki cita rasa yang gurih dan sedikit pedas, diberi sentuhan harum dari rempah-rempah seperti daun jeruk, serai, dan ketumbar. Hidangan ini sering disantap dengan tambahan sambal dan perasan jeruk nipis untuk meningkatkan kelezatannya. Soto Lamongan merupakan favorit bagi banyak orang di Indonesia dan dikenal sebagai salah satu varian soto yang paling lezat dan menggugah selera.',
      author: 'Frisca Yuni Adilia Putri',
      authorImageUrl:
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fid.pinterest.com%2Fstrawberryblushing%2Faesthetic-blank-profile-picture%2F&psig=AOvVaw0CARyUkGAA20Zl8cDek0Li&ust=1696897195227000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOi3pOnY54EDFQAAAAAdAAAAABAE',
      category: 'Jawa Timur',
      views: 298,
      imageUrl:
          'https://cdn-cas.orami.co.id/parenting/images/soto_lamongan_OwbnKdt.width-800.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '2',
      title: 'Kepiting Saus Padang',
      subtitle: 'Kepiting Saus Padang: Kelezatan Laut Berpadu Pedas Gurih',
      body:
          'Kepiting Saus Padang adalah sebuah mahakarya kuliner yang memadukan kelezatan laut dengan cita rasa pedas gurih khas Padang. Dengan cangkang yang keras dan daging yang lembut, kepiting dihidangkan dalam saus padang yang kaya rempah, menciptakan ledakan rasa di lidah setiap kali Anda menggigitnya. Saus padang yang pedas, manis, dan gurih ini menyelimuti setiap inci daging kepiting, menghadirkan sensasi kuliner yang memikat bagi pecinta pedas sejati. Disajikan dengan nasi hangat, hidangan ini adalah persembahan terbaik dari laut yang menggoda selera dan keahlian kuliner Padang yang mengagumkan. Rasakan sensasi nikmatnya kepiting saus Padang, di mana kelezatan laut bertemu dengan kehangatan rempah, menciptakan pengalaman kuliner yang tak terlupakan.',
      author: 'Frisca Yuni Adilia Putri',
      authorImageUrl:
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fid.pinterest.com%2Fstrawberryblushing%2Faesthetic-blank-profile-picture%2F&psig=AOvVaw0CARyUkGAA20Zl8cDek0Li&ust=1696897195227000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOi3pOnY54EDFQAAAAAdAAAAABAE=80',
      category: 'Sumatra Barat',
      views: 547,
      imageUrl:
          'http://2.bp.blogspot.com/-2tkSZvxoi68/U06YXmQy3rI/AAAAAAAAFq4/CvQNynA-_yg/s1600/kepiting.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    Article(
      id: '3',
      title: 'Gudeg',
      subtitle: 'Pergelaran Rasa: Gudeg, Kelezatan Tradisional Yogyakarta',
      body:
          'Gudeg adalah hidangan tradisional Indonesia yang berasal dari Yogyakarta, sebuah kota budaya yang mempesona di pulau Jawa. Hidangan ini merupakan perpaduan sempurna antara nangka muda yang dimasak dengan santan, gula merah, dan rempah-rempah pilihan. Gudeg memiliki warna kecoklatan yang lezat dan cita rasa manis yang menggoda selera. Hidangan ini biasanya disajikan dengan nasi, ayam suwir, telur rebus, tahu, dan tempe, menciptakan kombinasi tekstur yang memukau dan harmoni rasa yang tak terlupakan. Setiap suapan Gudeg membawa Anda ke dalam warisan budaya Indonesia, menyuguhkan cita rasa autentik yang melebur dalam kehangatan dan kelezatan. Nikmati pengalaman kuliner yang kaya dengan mencicipi Gudeg, sebuah perjalanan rasa yang memeluk tradisi dengan cinta dan keindahan yang memikat',
      author: 'Frisca Yuni Adilia Putri',
      authorImageUrl:
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fid.pinterest.com%2Fstrawberryblushing%2Faesthetic-blank-profile-picture%2F&psig=AOvVaw0CARyUkGAA20Zl8cDek0Li&ust=1696897195227000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOi3pOnY54EDFQAAAAAdAAAAABAE',
      category: 'Yogyakarta',
      views: 868,
      imageUrl:
          'https://tse3.mm.bing.net/th?id=OIP.bSzRgsMTVqTIMktJcwee7AHaE8&pid=Api&P=0&h=180',
      createdAt: DateTime.now().subtract(const Duration(hours: 8)),
    ),
    Article(
      id: '4',
      title: 'Mie Aceh',
      subtitle: 'Mie Aceh: Kelezatan Pedas Berpadu Budaya',
      body:
          'Mie Aceh adalah hidangan ikonik dari wilayah Aceh di Indonesia, dikenal dengan kelezatan pedasnya yang memukau. Mie kuning tebal ini direbus hingga kenyal, lalu disajikan dalam kuah khas Aceh yang kaya rempah. Daging sapi, udang, dan potongan sayuran segar melengkapi hidangan ini, menciptakan paduan cita rasa yang luar biasa. Keunikan Mie Aceh tidak hanya terletak pada rasa pedasnya yang membangkitkan selera, tetapi juga dalam keberagaman budaya yang terasa dalam setiap suapannya. Setiap gigitan adalah perjalanan melalui tradisi dan kehangatan Aceh, menyatukan kelezatan rasa dengan kisah lama yang menghangatkan hati. Sajikan dalam mangkuk, Mie Aceh adalah undangan lezat untuk menjelajahi dunia kuliner Indonesia yang kaya dan memikat.',
      author: 'Frisca Yuni Adilia Putri',
      authorImageUrl:
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fid.pinterest.com%2Fstrawberryblushing%2Faesthetic-blank-profile-picture%2F&psig=AOvVaw0CARyUkGAA20Zl8cDek0Li&ust=1696897195227000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOi3pOnY54EDFQAAAAAdAAAAABAE=80',
      category: 'Aceh',
      views: 124,
      imageUrl:
          'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/11/02/3111261266.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 19)),
    ),
    Article(
      id: '5',
      title: 'Rendang',
      subtitle: 'Rendang: Kelezatan Daging Mendalam dari Tanah Minang',
      body:
          'Rendang, sebuah warisan kuliner dari Minangkabau, Indonesia, adalah perpaduan sempurna dari rasa, tekstur, dan tradisi. Daging sapi yang dimasak dalam santan kental dan rempah-rempah pilihan ini membutuhkan jam-jam perhatian dan cinta, hasilnya adalah hidangan yang lembut dan meleleh di mulut. Rendang memiliki cita rasa pedas yang mendalam, dicampur dengan sentuhan manis dan gurih, menciptakan ledakan rasa yang memanjakan lidah. Hidangan ini disajikan dalam kuah kental yang kaya, yang meresap ke dalam daging dengan sempurna. Rendang bukan sekadar makanan, ia adalah sebuah seni yang membutuhkan ketelatenan dan dedikasi. Setiap suapan adalah perjalanan ke dalam sejarah dan kekayaan budaya Indonesia, membawa Anda ke pedalaman tradisi Minang yang memikat. Rendang adalah pengalaman rasa yang mendalam, mengundang Anda untuk menikmati kelezatan tanah Minangkabau dengan setiap gigitan yang mengesankan.',
      author: 'Frisca Yuni Adilia Putri',
      authorImageUrl:
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fid.pinterest.com%2Fstrawberryblushing%2Faesthetic-blank-profile-picture%2F&psig=AOvVaw0CARyUkGAA20Zl8cDek0Li&ust=1696897195227000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOi3pOnY54EDFQAAAAAdAAAAABAE=80',
      category: 'Padang',
      views: 789,
      imageUrl:
          'http://3.bp.blogspot.com/-tW1z0G9VRZU/UchnHfLk9TI/AAAAAAAABUw/VKbvFugcp8g/s1600/Beef+Rendang.JPG',
      createdAt: DateTime.now().subtract(const Duration(hours: 20)),
    ),
    Article(
      id: '6',
      title: 'Sate Maranggi',
      subtitle: 'Sate Maranggi: Sensasi Pedas & Aromatik yang Memikat',
      body:
          'Sate Maranggi adalah kelezatan kuliner Indonesia yang menawarkan pengalaman rasa yang unik dan memukau. Terkenal di daerah Priangan, sate ini terbuat dari potongan daging sapi muda yang dimarinasi dengan campuran rempah-rempah khas, kemudian dipanggang hingga kecoklatan dan beraroma menggoda. Kelembutan daging yang dipadu dengan sentuhan pedas dan bumbu rempah menjadikan Sate Maranggi sebuah perjalanan rasa yang luar biasa. Disajikan dengan lontong atau nasi, sate-sate ini ditusuk dalam tusukan bambu sebelum dipanggang, menambah aroma alami yang khas. Setiap gigitan adalah penyatuan cita rasa daging yang lezat dengan kehangatan rempah yang meresap, menciptakan harmoni rasa yang menggoda selera. Sate Maranggi bukan sekadar hidangan, melainkan sebuah seni kuliner yang menggabungkan keahlian, tradisi, dan kelezatan dalam satu sajian yang memuaskan.',
      author: 'Frisca Yuni Adilia Putri',
      authorImageUrl:
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fid.pinterest.com%2Fstrawberryblushing%2Faesthetic-blank-profile-picture%2F&psig=AOvVaw0CARyUkGAA20Zl8cDek0Li&ust=1696897195227000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOi3pOnY54EDFQAAAAAdAAAAABAE=80',
      category: 'Purwakarta',
      views: 129,
      imageUrl:
          'https://tse3.mm.bing.net/th?id=OIP.WGPIpaV9kJWmYFmLr65QSwHaE8&pid=Api&P=0&h=220',
      createdAt: DateTime.now().subtract(const Duration(hours: 20)),
    ),
    Article(
      id: '7',
      title: 'Bubur Manado',
      subtitle:
          'Kelezatan Bubur Manado: Sentuhan Tradisi Indonesia dalam Sebatang Sendok',
      body:
          'Bubur Manado adalah keajaiban rasa yang berasal dari harta kuliner Indonesia. Terinspirasi oleh kekayaan laut dan alam Sulawesi Utara, bubur ini menggabungkan cita rasa yang kaya dengan bahan-bahan segar. Dibuat dari beras, ikan, udang, dan rempah-rempah seperti serai dan daun jeruk, setiap suapan bubur memukau dengan kompleksitas rasanya. Tekstur lembut beras bertemu dengan kegurihan daging laut, menciptakan harmoni yang memanjakan lidah. Ditambah dengan sentuhan pedas dari cabai, bubur ini benar-benar menggoda selera. Bubur Manado bukan sekadar hidangan, tapi sebuah pengalaman gastronomi yang mengajak Anda merasakan kekayaan budaya dan keindahan alam Indonesia melalui cita rasa yang tak terlupakan.',
      author: 'Frisca Yuni Adilia Putri',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Manado',
      views: 100,
      imageUrl:
          'https://asset.kompas.com/crops/OW8rRJecUkSu5PK-Zg7cEHPejgk=/2x0:700x465/750x500/data/photo/2022/05/31/6295c8b093cfa.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 20)),
    ),
    Article(
      id: '8',
      title: 'Papeda',
      subtitle:
          'Menyusuri Kelezatan Tradisional Papua: Papeda, Sentuhan Unik Rasa dan Tekstur Dalam Kuliner Papua',
      body:
          'Papeda, hidangan khas Papua, adalah keajaiban kuliner yang memperkenalkan Anda pada keunikan rasa dan tekstur. Dibuat dari sagu yang diolah hingga menghasilkan adonan kenyal dan kental, papeda adalah pengantar sempurna untuk berbagai hidangan laut khas Papua. Tekstur yang unik ini, bersama dengan kelembutan sagu, menciptakan pengalaman makan yang memikat. Disajikan dengan beragam saus tradisional, papeda mengajak Anda dalam petualangan rasa yang tak terlupakan, dari manis hingga pedas. Meskipun mungkin membutuhkan sedikit kesabaran untuk terbiasa dengan teksturnya, tetapi setelah Anda terbiasa, kelezatan papeda menjadi sangat memuaskan dan memuji cita rasa khas Indonesia. Sebuah jendela autentik ke dalam kekayaan kuliner Papua yang patut dicoba oleh pencinta makanan petualang.',
      author: 'Frisca Yuni Adilia Putri',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Papua',
      views: 500,
      imageUrl:
          'https://tse1.mm.bing.net/th?id=OIP.w5JcNq1rz-IKVd564uTg9wHaE7&pid=Api&P=0&h=220',
      createdAt: DateTime.now().subtract(const Duration(hours: 20)),
    ),
    Article(
      id: '9',
      title: 'Rawon',
      subtitle: 'Rawon: Kelezatan Jawa Timur dalam Setiap Sendokannya',
      body:
          'Rawon, hidangan khas Jawa Timur, adalah sajian yang memukau dengan citarasa yang kaya dan unik. Terbuat dari daging sapi, kuah rawon memiliki warna hitam pekat yang berasal dari kluwek, sebuah biji hitam khas. Setiap sendok rawon mempersembahkan paduan cita rasa gurih, manis, pedas, dan sedikit pahit, memberikan pengalaman kuliner yang tak terlupakan. Daging sapi yang empuk, emping sebagai pelengkap, dan irisan bawang merah hijau menciptakan harmoni rasa yang lezat. Hidangan ini tidak hanya memanjakan lidah, tetapi juga membawa Anda merasakan sejarah dan kebudayaan Jawa Timur dalam setiap suapan. Rawon adalah perwujudan sempurna dari keahlian kuliner tradisional yang patut dinikmati oleh para pecinta masakan Indonesia.',
      author: 'Frisca Yuni Adilia Putri',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Surabaya',
      views: 200,
      imageUrl:
          'https://awsimages.detik.net.id/community/media/visual/2021/10/14/resep-rawon-daging-surabaya-1.jpeg?w=650&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 20)),
    ),
    Article(
      id: '10',
      title: 'Bebek Betutu',
      subtitle:
          'Bebek Betutu: Kelezatan Tradisional Bali yang Melebur di Lidah Anda',
      body:
          'Bebek Betutu, hidangan ikonik dari Bali, mempersembahkan sebuah pengalaman kuliner yang memukau. Di balik setiap gigitan, terdapat sentuhan rahasia tradisional Bali yang membuatnya begitu istimewa. Daging bebek yang lembut dan beraroma, dipadu dengan rempah-rempah khas seperti kemiri, kunyit, dan serai, menghasilkan cita rasa yang menggoda selera. Proses memasak yang lambat dan cermat, di dalam daun pisang yang rapat, memberikan tekstur yang lembut namun bernutrisi. Bebek Betutu adalah pernikmat kuliner yang membangkitkan selera dan mengajak Anda untuk merasakan kekayaan budaya Bali melalui sensasi lidah yang tak terlupakan. Sebuah perjalanan lezat ke dalam keberagaman rasa Bali yang kaya dan berkesan.',
      author: 'Frisca Yuni Adilia Putri',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Bali',
      views: 126,
      imageUrl:
          'https://asset.kompas.com/crops/C2TRlHko0AtAdthA0R_HbXG4L-s=/0x0:1000x667/750x500/data/photo/2022/03/16/62317090c4323.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 20)),
    ),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        createdAt,
      ];
}
