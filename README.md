# Knight's Tour 5×5 — Clustered Generator & Viewer

Aplikasi web interaktif untuk menghasilkan dan menampilkan formasi Knight's Tour pada papan 5×5 menggunakan algoritma Warnsdorff dengan canonicalisasi D8.

## Fitur

-   **Generator berbasis Browser**: Menggunakan backtracking dengan Warnsdorff-ordered algorithm
-   **Canonicalisasi D8**: Menghilangkan symmetri dengan 8 transformasi dihedral
-   **Pengelompokan**: 4 kelompok formasi (corner, mid-edge, mid-corner, center)
-   **UI Interaktif**: Viewer dengan Bootstrap 5
-   **Download JSON**: Export hasil formasi untuk penggunaan lain

## Instalasi & Menjalankan

### Dengan Docker Compose (Recommended)

```bash
docker-compose up -d
```

Aplikasi akan tersedia di: http://localhost

### Dengan Docker Manual

```bash
# Build image
docker build -t knight-tour-app .

# Jalankan container
docker run -d -p 80:80 --name knight-tour knight-tour-app

# Lihat logs
docker logs -f knight-tour

# Stop container
docker stop knight-tour
```

### Lokasi di Docker

Ketika sudah online:

-   Aplikasi web: `http://your-domain-or-ip/`
-   Health check: `http://your-domain-or-ip/health`

## Penggunaan

1. **Buka aplikasi** di browser
2. **Klik "Generate Semua Formasi"** untuk menjalankan algoritma di browser
3. **Pilih kelompok** dari dropdown
4. **Navigate rute** dengan tombol Prev/Next
5. **Download JSON** untuk menyimpan hasil

## Development

Untuk development dengan live reload:

```bash
# Edit docker-compose.yml dan uncomment bagian volumes
docker-compose up
```

## Struktur Project

```
formasi-jalur-kuda/
├── index.html          # Aplikasi utama (HTML + JS + CSS)
├── Dockerfile          # Docker image definition
├── docker-compose.yml  # Docker Compose configuration
├── nginx.conf          # Nginx web server config
├── .dockerignore        # Docker ignore patterns
└── README.md           # File ini
```

## Requirements

-   Docker Engine 20.10+
-   Docker Compose 1.29+ (untuk menjalankan docker-compose)

## Performance

-   Generator berjalan di client-side (browser)
-   Menghasilkan ~480 unique canonical tours
-   Memory: minimal (~256MB container)
-   CPU: auto-scaling sesuai worker processes

## Browser Compatibility

-   Chrome/Chromium 90+
-   Firefox 88+
-   Safari 14+
-   Edge 90+

## License

Gratis untuk penggunaan umum.

## Support

Untuk issue atau pertanyaan, silakan buat issue di repository.
