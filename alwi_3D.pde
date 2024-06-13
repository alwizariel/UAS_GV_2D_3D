float angleX = 0;
float angleY = 0;
float angleZ = 0;

void setup() {
  size(600, 600, P3D);  // tampilan
  background(255);       // Latar belakang putih
  strokeWeight(35);       // Ketebalan garis
}

void draw() {
  background(255);  // 
  
  // Menggeser titik pusat koordinat ke tengah window
  translate(width/2, height/2);

  // Rotasi objek
  rotateX(angleX);
  rotateY(angleY);
  rotateZ(angleZ);

  // huruf A dan huruf L di tengah
  drawA(-100, 0);  // Menggambar huruf A di tengah
  drawL(100, 0);   // Menggambar huruf L di tengah
  
 // Mengupdate sudut untuk animasi rotasi
  angleX += 0.01;
  angleY += 0.01;
  angleZ += 0.01;
}

// Fungsi untuk menggambar huruf A
void drawA(float x, float y) {
  float h = 200;  // Tinggi huruf A
  float w = 80;   // Setengah lebar huruf A

  // Garis kiri 
  line(x - w, y, x, y - h);

  // Garis kanan 
  line(x + w, y, x, y - h);

  // Garis horizontal tengah 
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
