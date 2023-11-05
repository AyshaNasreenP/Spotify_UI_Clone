
class recent{
  String ? image;
  String ? text;

  recent(this.image,this.text);
}
List recentimage = recentimages.map((a) => recent(a["image"], a["text"])).toList();

var recentimages=[

  {"image":"assets/img.png","text":"In love with"},
  {"image":"assets/img_1.png","text":"Back in time"},
  {"image":"assets/img_2.png","text":"Late night songs"},
  {"image":"assets/img_3.png","text":"Feel lonely"},
  {"image":"assets/img_4.png","text":"Sad songs"},
  {"image":"assets/img.png","text":"In love with"},
  {"image":"assets/img_1.png","text":"Back in time"},
  {"image":"assets/img_2.png","text":"Late night songs"},
  {"image":"assets/img_3.png","text":"Feel lonely"},
  {"image":"assets/img_4.png","text":"Sad songs"},


];

///

class topmix{
  String? image;
  String?text;

  topmix(this.image,this.text);
}

List Topmix= topmiximage.map((b)=> topmix(b["image"],b["text"])).toList();

var topmiximage=[
  {"image":"assets/img_5.png","text":"Arijit Singh, Mohit Chauhan"},
  {"image":"assets/img_6.png","text":"Palak Muchhal, Jubin Nautiyal and Neha Kakkar"},
  {"image":"assets/img_2.png","text":"Neha Kakkar, Jubin Nautiyal and Sreya joshal"},
  {"image":"assets/img_3.png","text":"Arijit Singh, Mohit Chauhan"},
  {"image":"assets/img_4.png","text":"Neha Kakkar, Jubin Nautiyal and Mohit Chauhan"},
];


class Browse{
  String ? image;
  String ? text;

  Browse(this.image,this.text);
}
List browse = browseimages.map((c) => Browse(c["image"], c["text"])).toList();

var browseimages=[

  {"image":"assets/br1.png","text":"In love with"},
  {"image":"assets/br2.png","text":"Back in time"},
  {"image":"assets/br3.png","text":"Late night songs"},
  {"image":"assets/br4.png","text":"Feel lonely"},
  {"image":"assets/br5.png","text":"In love with"},
  {"image":"assets/br6.png","text":"Back in time"},
  {"image":"assets/br7.png","text":"Late night songs"},
  {"image":"assets/br8.png","text":"Feel lonely"},
  {"image":"assets/br9.png","text":"Back in time"},
  {"image":"assets/br10.png","text":"Late night songs"},
  {"image":"assets/br11.png","text":"Feel lonely"},
  {"image":"assets/br8.png","text":"Feel lonely"},



];