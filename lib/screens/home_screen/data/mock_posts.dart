import 'package:android_dev/screens/home_screen/models/comment_model.dart';
import 'package:android_dev/screens/home_screen/models/post_model.dart';

// 20 unique posts used as fake data until the app has a real backend.
// Images: picsum.photos (a different seed = a different photo).
// Avatars: pravatar.cc (a different img number = a different face).

final List<PostModel> mockPosts = [
  PostModel(
    imageUrl: 'https://picsum.photos/seed/mountains/600/400',
    description: 'Woke up to this view in Ala-Archa. Totally worth the 5 a.m. alarm 🏔️',
    likeCount: 124,
    comments: [
      CommentModel(name: 'aibek_k', imageUrl: 'https://i.pravatar.cc/150?img=11', text: 'Wow, which trail is this?', likeCount: 3),
      CommentModel(name: 'dana.s', imageUrl: 'https://i.pravatar.cc/150?img=5', text: 'Take me with you next time!', likeCount: 1),
      CommentModel(name: 'timur_photo', imageUrl: 'https://i.pravatar.cc/150?img=12', text: 'The light here is perfect', likeCount: 7),
    ],
  ),
  PostModel(
    imageUrl: 'https://picsum.photos/seed/coffee/600/400',
    description: 'Monday fuel ☕ New café on Chui, the cappuccino is unreal.',
    likeCount: 58,
    comments: [
      CommentModel(name: 'aruuke', imageUrl: 'https://i.pravatar.cc/150?img=9', text: 'Name of the café please!', likeCount: 2),
    ],
  ),
  PostModel(
    imageUrl: 'https://picsum.photos/seed/laptop/600/400',
    description: 'Day 30 of learning Flutter. Finally understood ListView.builder 🎉',
    likeCount: 211,
    comments: [
      CommentModel(name: 'dev_nurlan', imageUrl: 'https://i.pravatar.cc/150?img=13', text: 'Next stop: state management 😄', likeCount: 12),
      CommentModel(name: 'kamila.codes', imageUrl: 'https://i.pravatar.cc/150?img=16', text: 'Proud of you!', likeCount: 4),
      CommentModel(name: 'erlan_m', imageUrl: 'https://i.pravatar.cc/150?img=14', text: 'Any course you recommend?', likeCount: 0),
      CommentModel(name: 'alina_t', imageUrl: 'https://i.pravatar.cc/150?img=20', text: 'Keep going 💪', likeCount: 2),
    ],
  ),
  PostModel(
    imageUrl: 'https://picsum.photos/seed/cat/600/400',
    description: 'He thinks the keyboard is his bed now.',
    likeCount: 342,
    comments: [
      CommentModel(name: 'meerim_b', imageUrl: 'https://i.pravatar.cc/150?img=24', text: 'So fluffy 😍', likeCount: 9),
      CommentModel(name: 'askar99', imageUrl: 'https://i.pravatar.cc/150?img=15', text: 'Mine does the same thing', likeCount: 5),
    ],
  ),
  PostModel(
    imageUrl: 'https://picsum.photos/seed/beach/600/400',
    description: 'Issyk-Kul in July never disappoints 🌊',
    likeCount: 189,
    comments: [
      CommentModel(name: 'bakyt.travel', imageUrl: 'https://i.pravatar.cc/150?img=17', text: 'Cholpon-Ata or Bosteri?', likeCount: 1),
      CommentModel(name: 'zarina_k', imageUrl: 'https://i.pravatar.cc/150?img=25', text: 'Missing summer already', likeCount: 3),
    ],
  ),
  PostModel(
    imageUrl: 'https://picsum.photos/seed/books/600/400',
    description: 'My reading list for November. What should I start with?',
    likeCount: 47,
    comments: [
      CommentModel(name: 'aida.reads', imageUrl: 'https://i.pravatar.cc/150?img=26', text: 'Start with the blue one, trust me', likeCount: 6),
      CommentModel(name: 'ruslan_n', imageUrl: 'https://i.pravatar.cc/150?img=18', text: 'I finished the third one in two days', likeCount: 2),
      CommentModel(name: 'saule', imageUrl: 'https://i.pravatar.cc/150?img=27', text: 'Great choices!', likeCount: 0),
    ],
  ),
  PostModel(
    imageUrl: 'https://picsum.photos/seed/city/600/400',
    description: 'Bishkek at night from the 12th floor ✨',
    likeCount: 276,
    comments: [],
  ),
  PostModel(
    imageUrl: 'https://picsum.photos/seed/food/600/400',
    description: 'Homemade plov, grandma\'s recipe. No, I won\'t share it 😅',
    likeCount: 403,
    comments: [
      CommentModel(name: 'nursultan_a', imageUrl: 'https://i.pravatar.cc/150?img=33', text: 'Please share it 🙏', likeCount: 21),
      CommentModel(name: 'gulnara.cook', imageUrl: 'https://i.pravatar.cc/150?img=29', text: 'Looks better than in restaurants', likeCount: 8),
      CommentModel(name: 'beka', imageUrl: 'https://i.pravatar.cc/150?img=51', text: 'I\'m coming over', likeCount: 4),
      CommentModel(name: 'asel_m', imageUrl: 'https://i.pravatar.cc/150?img=31', text: 'Is that carrot or yellow carrot?', likeCount: 1),
      CommentModel(name: 'daniyar', imageUrl: 'https://i.pravatar.cc/150?img=52', text: 'Respect to grandma', likeCount: 6),
    ],
  ),
  PostModel(
    imageUrl: 'https://picsum.photos/seed/forest/600/400',
    description: 'Autumn walk. The leaves were crunching the whole way 🍂',
    likeCount: 95,
    comments: [
      CommentModel(name: 'elnura', imageUrl: 'https://i.pravatar.cc/150?img=32', text: 'My favourite season', likeCount: 2),
    ],
  ),
  PostModel(
    imageUrl: 'https://picsum.photos/seed/guitar/600/400',
    description: 'Learned my first full song on guitar today 🎸',
    likeCount: 66,
    comments: [
      CommentModel(name: 'azamat.music', imageUrl: 'https://i.pravatar.cc/150?img=53', text: 'Which song?', likeCount: 1),
      CommentModel(name: 'jibek', imageUrl: 'https://i.pravatar.cc/150?img=35', text: 'Post a video!', likeCount: 4),
    ],
  ),
  PostModel(
    imageUrl: 'https://picsum.photos/seed/sunset/600/400',
    description: 'No filter needed tonight 🌅',
    likeCount: 512,
    comments: [
      CommentModel(name: 'temirlan', imageUrl: 'https://i.pravatar.cc/150?img=54', text: 'Unreal colours', likeCount: 11),
      CommentModel(name: 'aizada', imageUrl: 'https://i.pravatar.cc/150?img=36', text: 'Wallpaper material', likeCount: 5),
      CommentModel(name: 'kanat_p', imageUrl: 'https://i.pravatar.cc/150?img=56', text: 'Where was this taken?', likeCount: 0),
    ],
  ),
  PostModel(
    imageUrl: 'https://picsum.photos/seed/gym/600/400',
    description: 'Leg day done. Walking is now optional.',
    likeCount: 73,
    comments: [
      CommentModel(name: 'fit_bolot', imageUrl: 'https://i.pravatar.cc/150?img=57', text: 'Classic 😂', likeCount: 3),
    ],
  ),
  PostModel(
    imageUrl: 'https://picsum.photos/seed/horse/600/400',
    description: 'Weekend at the jailoo. Met this beauty 🐎',
    likeCount: 230,
    comments: [
      CommentModel(name: 'nazik', imageUrl: 'https://i.pravatar.cc/150?img=38', text: 'So majestic', likeCount: 4),
      CommentModel(name: 'ulan_s', imageUrl: 'https://i.pravatar.cc/150?img=59', text: 'Did you ride him?', likeCount: 2),
    ],
  ),
  PostModel(
    imageUrl: 'https://picsum.photos/seed/rain/600/400',
    description: 'Rainy day = coding day 🌧️💻',
    likeCount: 39,
    comments: [],
  ),
  PostModel(
    imageUrl: 'https://picsum.photos/seed/flowers/600/400',
    description: 'Got flowers for no reason. Best kind of flowers 🌷',
    likeCount: 158,
    comments: [
      CommentModel(name: 'cholpon', imageUrl: 'https://i.pravatar.cc/150?img=39', text: 'Keep them! 😍', likeCount: 6),
      CommentModel(name: 'malika_r', imageUrl: 'https://i.pravatar.cc/150?img=40', text: 'Tulips are the best', likeCount: 2),
      CommentModel(name: 'emil', imageUrl: 'https://i.pravatar.cc/150?img=60', text: 'Who\'s the lucky sender?', likeCount: 3),
    ],
  ),
  PostModel(
    imageUrl: 'https://picsum.photos/seed/snow/600/400',
    description: 'First snow of the year in Karakol ❄️',
    likeCount: 301,
    comments: [
      CommentModel(name: 'ski_ermek', imageUrl: 'https://i.pravatar.cc/150?img=61', text: 'Season is open!', likeCount: 9),
      CommentModel(name: 'tolgonai', imageUrl: 'https://i.pravatar.cc/150?img=41', text: 'Already? Wow', likeCount: 1),
    ],
  ),
  PostModel(
    imageUrl: 'https://picsum.photos/seed/bike/600/400',
    description: '40 km ride around the city. Legs: gone. Mood: great 🚴',
    likeCount: 84,
    comments: [
      CommentModel(name: 'sanjar.ride', imageUrl: 'https://i.pravatar.cc/150?img=62', text: 'Join us on Saturday!', likeCount: 2),
    ],
  ),
  PostModel(
    imageUrl: 'https://picsum.photos/seed/desk/600/400',
    description: 'New desk setup finally done. Rate it 1–10',
    likeCount: 197,
    comments: [
      CommentModel(name: 'it_adilet', imageUrl: 'https://i.pravatar.cc/150?img=63', text: '9/10, needs a plant', likeCount: 14),
      CommentModel(name: 'begimai', imageUrl: 'https://i.pravatar.cc/150?img=43', text: 'Clean! 10/10', likeCount: 3),
      CommentModel(name: 'marat_d', imageUrl: 'https://i.pravatar.cc/150?img=64', text: 'What monitor is that?', likeCount: 1),
      CommentModel(name: 'ainura', imageUrl: 'https://i.pravatar.cc/150?img=44', text: 'Cable management goals', likeCount: 5),
    ],
  ),
  PostModel(
    imageUrl: 'https://picsum.photos/seed/friends/600/400',
    description: 'Graduation day with the best people 🎓',
    likeCount: 455,
    comments: [
      CommentModel(name: 'kairat', imageUrl: 'https://i.pravatar.cc/150?img=65', text: 'Congrats everyone!!', likeCount: 18),
      CommentModel(name: 'sezim', imageUrl: 'https://i.pravatar.cc/150?img=45', text: 'We made it 🥳', likeCount: 10),
    ],
  ),
  PostModel(
    imageUrl: 'https://picsum.photos/seed/stars/600/400',
    description: 'Camped under the stars at Song-Kul. Couldn\'t sleep, too beautiful 🌌',
    likeCount: 620,
    comments: [
      CommentModel(name: 'astro_bek', imageUrl: 'https://i.pravatar.cc/150?img=66', text: 'You can see the Milky Way!', likeCount: 22),
      CommentModel(name: 'aiperi', imageUrl: 'https://i.pravatar.cc/150?img=47', text: 'Adding this to my bucket list', likeCount: 7),
      CommentModel(name: 'nurbek', imageUrl: 'https://i.pravatar.cc/150?img=67', text: 'How cold was it at night?', likeCount: 2),
    ],
  ),
];
