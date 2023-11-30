import processing.video.*;

PImage mainHallImg;
PImage room1Img, room2Img, room3Img, room4Img;
PImage poster1_room1, poster2_room1, poster1_room2, poster2_room2, poster1_room3, poster2_room3, poster1_room4, poster2_room4;
Movie PKMTeaser, room1Video, room2Video, room3Video, room4Video;
String state = "mainHall";
String prevState = "mainHall";

void setup() {
  size(1280, 720);
  mainHallImg = loadImage("Main Hall.jpg");
  PKMTeaser = new Movie(this, "B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/PKM Teaser.mp4");
  PKMTeaser.loop();
  
  //Room 1
  room1Img = loadImage("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/1/ExpoRoom.png");
  poster1_room1 = loadImage("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/1/Poster.png");
  poster1_room1.resize(83, 117);
  poster2_room1 = loadImage("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/1/Poster2.png");
  poster2_room1.resize(83, 117);
  room1Video = new Movie(this, "B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/1/1. PKM_VGK_2023-SmartPowerBUMDES.mp4");
  room1Video.loop();

  // Room 2
  room2Img = loadImage("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/2/ExpoRoom.png");
  poster1_room2 = loadImage("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/2/Poster.png");
  poster1_room2.resize(83, 117);
  poster2_room2 = loadImage("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/2/Poster2.png");
  poster2_room2.resize(83, 117);
  room2Video = new Movie(this, "B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/2/2. PKM_KC_2023-Smart Glove Translator.mp4");
  room2Video.loop();
  
  // Room 3
  room3Img = loadImage("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/3/ExpoRoom.png");
  poster1_room3 = loadImage("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/3/Poster.png");
  poster1_room3.resize(83, 117);
  poster2_room3 = loadImage("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/3/Poster2.png");
  poster2_room3.resize(83, 117);
  room3Video = new Movie(this, "B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/3/3. PKM_KC_2021-Parkir Otomatis.mp4");
  room3Video.loop();
  
  //Room 4
  room4Img = loadImage("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/4/ExpoRoom.png");
  poster1_room4 = loadImage("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/4/Poster.png");
  poster1_room4.resize(83, 117);
  poster2_room4 = loadImage("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/4/Poster2.png");
  poster2_room4.resize(83, 117);
  room4Video = new Movie(this, "B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/4/PKM-VGK 2022 _ SMART-AGRODOME _ Universitas Brawijaya.mp4");
  room4Video.loop();
}

void draw() {
  if (state.equals("mainHall")) {
    image(mainHallImg, 0, 0);
    image(PKMTeaser, 455, 147, 400, 246);
    // Play the video only when the state is activated
    if (!prevState.equals(state)) {
      PKMTeaser.play();
    // Pause all videos when in main hall
    room1Video.pause();
    room2Video.pause();
    room3Video.pause();
    room4Video.pause();
    }
  } 
  
  else if (state.equals("room1")) {
  image(room1Img, 0, 0);
  image(poster1_room1, 396, 207);
  image(poster2_room1, 775, 207);
  image(room1Video, 526, 208, 200, 113);
  // Play the video only when the state is activated
  if (!prevState.equals(state)) {
    room1Video.play();
  }
  // Pause the other videos
  PKMTeaser.pause();
  room2Video.pause();
  room3Video.pause();
  room4Video.pause();
  }
  else if (state.equals("room2")) {
    image(room2Img, 0, 0);
    image(poster1_room2, 396, 207);
    image(poster2_room2, 775, 207);
    image(room2Video, 526, 208, 200, 113);
    // Play the video only when the state is activated
    if (!prevState.equals(state)) {
      room2Video.play();
    }
    // Pause the other videos
    PKMTeaser.pause();
    room1Video.pause();
    room3Video.pause();
    room4Video.pause();
  }
  else if (state.equals("room3")) {
    image(room3Img, 0, 0);
    image(poster1_room3, 396, 207);
    image(poster2_room3, 775, 207);
    image(room3Video, 526, 208, 200, 113);
    // Play the video only when the state is activated
    if (!prevState.equals(state)) {
      room3Video.play();
    }
    // Pause the other videos
    PKMTeaser.pause();
    room1Video.pause();
    room2Video.pause();
    room4Video.pause();
  }
  else if (state.equals("room4")) {
    image(room4Img, 0, 0);
    image(poster1_room4, 396, 207);
    image(poster2_room4, 775, 207);
    image(room4Video, 526, 208, 200, 113);
    // Play the video only when the state is activated
    if (!prevState.equals(state)) {
      room4Video.play();
    }
    // Pause the other videos
    PKMTeaser.pause();
    room1Video.pause();
    room2Video.pause();
    room3Video.pause();
  }
  // Update the previous state
  prevState = state;
}

void movieEvent(Movie m) {
  m.read();
}

void mouseClicked() {
  if (state.equals("mainHall")) {
    if (mouseX > 12 && mouseX < 291 && mouseY > 509 && mouseY < 660) {
      state = "room1";
    }
    else if (mouseX > 361 && mouseX < 552 && mouseY > 509 && mouseY < 660) {
      state = "room2";
    }
    else if (mouseX > 706 && mouseX < 919 && mouseY > 509 && mouseY < 660) {
      state = "room3";
    }
    else if (mouseX > 980 && mouseX < 1238 && mouseY > 509 && mouseY < 660) {
      state = "room4";
    }
  }
  
  if (state.equals("room1")) {
    if (mouseX > 1126 && mouseX < 1243 && mouseY > 597 && mouseY < 667) {
      state = "mainHall";
    }
    else if (mouseX > 397 && mouseX < 479 && mouseY > 208 && mouseY < 324) {
      launch("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/1/Poster.png");
    }
    else if (mouseX > 776 && mouseX < 859 && mouseY > 208 && mouseY < 324) {
      launch("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/1/Poster2.png");
    }  
    else if (mouseX > 526 && mouseX < 728 && mouseY > 208 && mouseY < 324) {
      launch("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/1/1. PKM_VGK_2023-SmartPowerBUMDES.mp4");
      room1Video.pause();
    }
  }
  
  if (state.equals("room2")) {
    if (mouseX > 1126 && mouseX < 1243 && mouseY > 597 && mouseY < 667) {
      state = "mainHall";
    }
    else if (mouseX > 397 && mouseX < 479 && mouseY > 208 && mouseY < 324) {
      launch("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/2/Poster.png");
    }
    else if (mouseX > 776 && mouseX < 859 && mouseY > 208 && mouseY < 324) {
      launch("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/2/Poster2.png");
    }  
    else if (mouseX > 526 && mouseX < 728 && mouseY > 208 && mouseY < 324) {
      launch("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/2/2. PKM_KC_2023-Smart Glove Translator.mp4");
      room2Video.pause();
    }
  }
  
  if (state.equals("room3")) {
    if (mouseX > 1126 && mouseX < 1243 && mouseY > 597 && mouseY < 667) {
      state = "mainHall";
    }
    else if (mouseX > 397 && mouseX < 479 && mouseY > 208 && mouseY < 324) {
      launch("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/3/Poster.png");
    }
    else if (mouseX > 776 && mouseX < 859 && mouseY > 208 && mouseY < 324) {
      launch("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/3/Poster2.png");
    }  
    else if (mouseX > 526 && mouseX < 728 && mouseY > 208 && mouseY < 324) {
      launch("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/3/3. PKM_KC_2021-Parkir Otomatis.mp4");
      room3Video.pause();
    }
  }
  
  if (state.equals("room4")) {
    if (mouseX > 1126 && mouseX < 1243 && mouseY > 597 && mouseY < 667) {
      state = "mainHall";
    }
    else if (mouseX > 397 && mouseX < 479 && mouseY > 208 && mouseY < 324) {
      launch("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/4/Poster.png");
    }
    else if (mouseX > 776 && mouseX < 859 && mouseY > 208 && mouseY < 324) {
      launch("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/4/Poster2.png");
    }  
    else if (mouseX > 526 && mouseX < 728 && mouseY > 208 && mouseY < 324) {
      launch("B:/Kuliah/SEM 5/Multimedia/Project Akhir/MainHall/Video/4/PKM-VGK 2022 _ SMART-AGRODOME _ Universitas Brawijaya.mp4");
      room4Video.pause();
    }
  }
}
