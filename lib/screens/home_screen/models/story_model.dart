class StoryModel {
  String imageUrl;
  String name;
  String avatar;
  int likeCount;
  StoryModel({
    this.imageUrl='https://via.placeholder.com/150 ',
    this.name="user",
    this.avatar="",
    this.likeCount=0,

  });

    void addLike(int newCount) {
    // This method should ideally update the like count in a state management solution
    likeCount = newCount;
  }

}