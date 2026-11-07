class CommentModel {
  String imageUrl;
  String name;
  String text;
  int likeCount;
  CommentModel({
    this.imageUrl='https://via.placeholder.com/150 ',
    this.name="user",
    this.text="",
    this.likeCount=0,

  });

    void addLike(int newCount) {
    // This method should ideally update the like count in a state management solution
    likeCount = newCount;
  }

}