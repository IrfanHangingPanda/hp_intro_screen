class SliderModel {
  late String image;
  late String title;
  late String description_1;
  late String description_2;
  late String description_3;

// Constructor for variables
  SliderModel(
      {this.title = ' ',
      this.image = '',
      this.description_1 = '',
      this.description_2 = '',
      this.description_3 = ''});

  void setImage(String getImage) {
    image = getImage;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDescriptionOne(String getDescription) {
    description_1 = getDescription;
  }

  void setDescriptionTwo(String getDescription) {
    description_2 = getDescription;
  }

  void setDescriptionThree(String getDescription) {
    description_3 = getDescription;
  }

  String getImage() {
    return image;
  }

  String getTitle() {
    return title;
  }

  String getDescriptionOne() {
    return description_1;
  }

  String getDescriptionTwo() {
    return description_2;
  }

  String getDescriptionThree() {
    return description_3;
  }
}

// List created
List<SliderModel> getSlides({required itemCount}) {
  List<SliderModel> slides = [];
  SliderModel sliderModel = SliderModel();

  for (var i = 0; i < itemCount.length; i++) {
    sliderModel.setImage(itemCount[i]['image'].toString());
    sliderModel.setTitle(itemCount[i]['title'].toString());
    sliderModel.setDescriptionOne(itemCount[i]['description1'].toString());
    sliderModel.setDescriptionTwo(itemCount[i]['description2'].toString());
    sliderModel.setDescriptionThree(itemCount[i]['description3'].toString());
    slides.add(sliderModel);
    sliderModel = SliderModel();
  }
  return slides;
}
