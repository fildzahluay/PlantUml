@startuml
actor "Pelanggan" as Customer
actor "Admin" as Admin

rectangle "Sistem Pemesanan Online" {
    Customer --> (Lihat Produk)
    Customer --> (Lakukan Pesanan)
    (Lakukan Pesanan) --> (Konfirmasi Pesanan)
    (Konfirmasi Pesanan) --> (Proses Pembayaran)
    (Proses Pembayaran) --> (Kirim Email Konfirmasi)
    (Proses Pembayaran) --> (Perbarui Status Pesanan)
}

rectangle "Sistem Inventaris" {
    (Lakukan Pesanan) --> (Cek Ketersediaan Stok)
    (Cek Ketersediaan Stok) --> (Perbarui Inventaris)
}

rectangle "Sistem Pengiriman" {
    (Perbarui Status Pesanan) --> (Jadwalkan Pengiriman)
    (Jadwalkan Pengiriman) --> (Lacak Pengiriman)
}

rectangle "Panel Admin" {
    Admin --> (Kelola Produk)
    Admin --> (Lihat Detail Pesanan)
    Admin --> (Perbarui Status Pesanan)
}

@enduml

