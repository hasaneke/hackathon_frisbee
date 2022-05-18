import 'package:frizbee/data/models/comment.dart';
import 'package:frizbee/data/models/frisbee.dart';
import 'package:frizbee/utils/constants/asset_paths.dart';

List<Frisbee> frisbies = [
  Frisbee(
      id: '1',
      city: 'Ankara',
      title: 'Gençlik bilişim festivali',
      imageUrls: kPosters[0],
      explanation:
          'Gençlik ve Spor Bakanlığı, ‘Gençlik Haftası’ etkinlikleri kapsamında gençlerin bilişim dünyasına ilişkin geleceklerine yön verecek önemli bir festivale ev sahipliği yapıyor.Türkiye’nin dört bir yanından gelecek gençlerin katılımıyla 16-18 Mayıs tarihlerinde düzenlenecek ‘Gençlik Bilişim Festivali’nde ülkemizin önde gelen bilişim projelerinin tanıtılması, bilişim yarışmaları ve etkinlikleri ile gençlere geleceğe yönelik bilişim vizyonunun kazandırılması hedefleniyor',
      location: 'Ankara Altındağ Gençlik Spor Merkezi',
      holders: 828,
      comments: 25),
  Frisbee(
      id: '2',
      city: 'Ankara',
      title: 'Türkiye Manzara Ligi',
      imageUrls: kPosters[1],
      explanation:
          "Yarışma lise ve üniversite olmak üzere 2 kategoride gerçekleştirilecektir.Lise kategorisine, 13-17 yaş aralığında Milli Eğitim Bakanlığına bağlı ortaöğretim (lise) kurumlarında kayıtlı gençler başvuracaktır.Üniversite kategorisine, 18-25 yaş aralığında üniversitelerin önlisans, lisans ya da yüksek lisans programında kayıtlı gençler başvuracaktır.Üniversite hazırlık sürecinde olan gençler de üniversite kategorisinde yarışmaya katılabilecektir.Yarışmaya başvuran takımlar 2 kişiden oluşacaktır",
      location: 'Gençlik Merkezi',
      holders: 2282,
      comments: 18),
  Frisbee(
      id: '3',
      city: 'Ankara',
      title: 'Şiir Yarışması',
      imageUrls: kPosters[2],
      explanation:
          "Gençler Arası Şiir Okuma Yarışmalarına 13-25  (13’ünden gün almış, 25 yaşını doldurmamış) yaş aralığındaki tüm gençler başvurabilirler.Gençler Arası Şiir Okuma Yarışmaları; 13-17 ve 18-25 yaş aralıklarında kadın/erkek olmak üzere 4 farklı kategoride gerçekleştirilecektir.Başvuru tarihleri: 15 Şubat-25 Mart 2022 tarihleri arasındadır.İl yarışmasının tarihini öğrenmek için bulunduğunuz ildeki gençlik merkezi ile iletişim kurmanız gerekmektedir.Başvuru Adresi:Yarışmaya başvurmak için tıklayınız",
      location: 'Altındağ',
      holders: 628,
      comments: 22),
  Frisbee(
      id: '4',
      city: 'Ankara',
      title: 'Bilgi Yarışması',
      imageUrls: kPosters[3],
      explanation:
          'Gençler Arası Bilgi Yarışmalarına 13-25  (13’ünden gün almış, 25 yaşını doldurmamış) yaş aralığındaki tüm gençler başvurabilirler.Gençler Arası Bilgi Yarışmaları; 13-18 ve 18-25 yaş aralıklarında lise/üniversite olmak üzere 2 farklı kategoride gerçekleştirilecektir.',
      location: 'Gençlik Spor Merkezi',
      holders: 3258,
      comments: 15)
];

List<Comment> kComments = [
  Comment(
      id: '1',
      name: 'Hasan',
      surname: 'Sabbah',
      comment: 'Etkinlikte yeterli sandalye yoktu',
      imageUrl: '',
      likes: 8),
  Comment(
      id: '2',
      name: 'Mert',
      surname: 'Solmaz',
      comment: 'Oldukça eğlenceli bir etkinlikti',
      imageUrl: '',
      likes: 3),
  Comment(
      id: '3',
      name: 'Ömer',
      surname: 'Salih',
      comment: 'Etkinlik çalışanları çok ilgisizdi',
      imageUrl: '',
      likes: 4),
  Comment(
      id: '4',
      name: 'İlknur',
      surname: 'Özdemir',
      comment: 'Bulunduğum en iyi etkinliklerden biri',
      imageUrl: '',
      likes: 8),
  Comment(
      id: '5',
      name: 'Hasan',
      surname: 'Eke',
      comment: 'Merhaba',
      imageUrl: '',
      likes: 8)
];
