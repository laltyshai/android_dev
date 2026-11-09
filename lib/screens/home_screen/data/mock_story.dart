import 'package:android_dev/screens/home_screen/models/story_model.dart';

// 12 unique stories used as fake data until the app has a real backend.
// Story images: picsum.photos (a different seed = a different photo), tall like a phone screen.
// Avatars: pravatar.cc (a different img number = a different face).

final List<StoryModel> mockStories = [
  StoryModel(
    name: 'anna',
    avatar: 'https://i.pravatar.cc/150?img=1',
    imageUrl: 'https://picsum.photos/seed/story-anna/400/700',
    likeCount: 34,
  ),
  StoryModel(
    name: 'mary',
    avatar: 'https://i.pravatar.cc/150?img=10',
    imageUrl: 'https://picsum.photos/seed/story-mary/400/700',
    likeCount: 12,
  ),
  StoryModel(
    name: 'aibek_k',
    avatar: 'https://i.pravatar.cc/150?img=11',
    imageUrl: 'https://picsum.photos/seed/story-aibek/400/700',
    likeCount: 57,
  ),
  StoryModel(
    name: 'isken',
    avatar: 'https://i.pravatar.cc/150?img=68',
    imageUrl: 'https://picsum.photos/seed/story-isken/400/700',
    likeCount: 8,
  ),
  StoryModel(
    name: 'dana.s',
    avatar: 'https://i.pravatar.cc/150?img=5',
    imageUrl: 'https://picsum.photos/seed/story-dana/400/700',
    likeCount: 91,
  ),
  StoryModel(
    name: 'timur_photo',
    avatar: 'https://i.pravatar.cc/150?img=12',
    imageUrl: 'https://picsum.photos/seed/story-timur/400/700',
    likeCount: 143,
  ),
  StoryModel(
    name: 'meerim_b',
    avatar: 'https://i.pravatar.cc/150?img=24',
    imageUrl: 'https://picsum.photos/seed/story-meerim/400/700',
    likeCount: 26,
  ),
  StoryModel(
    name: 'nursultan_a',
    avatar: 'https://i.pravatar.cc/150?img=33',
    imageUrl: 'https://picsum.photos/seed/story-nursultan/400/700',
    likeCount: 70,
  ),
  StoryModel(
    name: 'aruuke',
    avatar: 'https://i.pravatar.cc/150?img=9',
    imageUrl: 'https://picsum.photos/seed/story-aruuke/400/700',
    likeCount: 19,
  ),
  StoryModel(
    name: 'kamila.codes',
    avatar: 'https://i.pravatar.cc/150?img=16',
    imageUrl: 'https://picsum.photos/seed/story-kamila/400/700',
    likeCount: 48,
  ),
  StoryModel(
    name: 'bakyt.travel',
    avatar: 'https://i.pravatar.cc/150?img=17',
    imageUrl: 'https://picsum.photos/seed/story-bakyt/400/700',
    likeCount: 205,
  ),
  StoryModel(
    name: 'aiperi',
    avatar: 'https://i.pravatar.cc/150?img=47',
    imageUrl: 'https://picsum.photos/seed/story-aiperi/400/700',
    likeCount: 63,
  ),
];
