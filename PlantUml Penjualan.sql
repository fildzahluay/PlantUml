@startuml
actor "Pelanggan" as Customer
actor "Kasir" as Cashier

rectangle "Sistem Penjualan" {
    Customer --> (Melakukan Pesanan)
    (Melakukan Pesanan) --> (Proses Pembayaran)
    (Proses Pembayaran) --> (Buat Faktur)
    (Proses Pembayaran) --> (Perbarui Stok Barang)
}

rectangle "Sistem Inventaris" {
    (Perbarui Stok Barang) --> (Cek Ketersediaan Stok)
    (Cek Ketersediaan Stok) --> (Perbarui Stok)
}

rectangle "Sistem Akuntansi" {
    (Buat Faktur) --> (Catat Transaksi)
}

Cashier --> (Proses Pembayaran)

@enduml
