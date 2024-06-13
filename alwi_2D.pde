// Variabel untuk menyimpan skala zoom
float scaleValue = 1.0;
// Variabel untuk menyimpan sudut rotasi
float rotationAngle = 0.0;
// Variabel untuk menentukan gambar di-mirror
boolean isMirrored = false;
// Variabel untuk menyimpan posisi X dan Y
float xPos = 0;
float yPos = 0;

void setup() {
  size(600, 400);  // Ukuran jendela
  background(255);  // Latar belakang putih
  strokeWeight(15);  // Ketebalan garis
}

void draw() {
  background(255);  // Menghapus jejak gambar sebelumnya
  
  // Terapkan transformasi
  applyTransformations();
  
  // Menggambar huruf A dan huruf L di tengah
  float centerX = width / 2;
  float centerY = height / 2;
  drawA(centerX - 100 + xPos, centerY + yPos);  // Menggambar huruf A di tengah
  drawL(centerX + 100 + xPos, centerY + yPos);  // Menggambar huruf L di tengah
}

// Fungsi untuk menggambar huruf A
void drawA(float x, float y) {
  float h = 200;  // Tinggi huruf A
  float w = 80;   // Setengah lebar huruf A

  // Garis kiri tebal
  line(x - w, y, x, y - h);

  // Garis kanan tebal
  line(x + w, y, x, y - h);

  // Garis horizontal tengah tebal
  line(x - w / 4, y - h / 4, x + w / 4, y - h / 4);
}

// Fungsi untuk menggambar huruf L
void drawL(float x, float y) {
  float h = 200;  // Tinggi huruf L
  float w = 80;   // Lebar dasar huruf L

  // Garis vertikal tebal
  line(x, y - h, x, y);

  // Garis horizontal dasar tebal
  line(x, y, x + w, y);
}

// Fungsi untuk menerapkan transformasi
void applyTransformations() {
  // Geser
  translate(width / 2, height / 2);
  // Zoom in/out
  scale(scaleValue);
  // Rotasi
  rotate(rotationAngle);
  // Mirror
  if (isMirrored)
    scale(-1, 1);
}

// Fungsi keyboard
void keyPressed() {
  // Geser ke kiri/kanan
  if (key == 'a') {
    xPos -= 10;
  } else if (key == 'd') {
    xPos += 10;
  }
  // Geser ke atas/bawah
  else if (key == 'w') {
    yPos -= 10;
  } else if (key == 's') {
    yPos += 10;
  }
  // Zoom in/out
  else if (key == 'z') {
    scaleValue *= 1.1;
  } else if (key == 'x') {
    scaleValue *= 0.9;
  }
  // Putar ke kanan/kiri
  else if (key == 'q') {
    rotationAngle += PI / 18;
  } else if (key == 'e') {
    rotationAngle -= PI / 18;
  }
  // Mirror
  else if (key == 'm') {
    isMirrored = !isMirrored;
  }
}
