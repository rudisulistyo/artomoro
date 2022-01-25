# Inventory Management System (IMS) 
IMS bertugas mengelola keluar masuknya barang pada gudang penyimpanan. Masuknya barang mengartikan perusahaan melakukan pembelian sejumlah barang terhadap supplier, sedangkan keluarnya barang mengartikan adanya pembelian sejumlah barang dari pelanggan. IMS yang sudah dikenal di dunia internet antara lain tradegecko.com, zoho.com, unleashedsoftware.com, dsb.

## Product & Category
Produk memiliki kategori sesuai jenisnya masing-masing. Produk yang memiliki status aktif dan jumlah lebih dari 0 bisa dibeli oleh pelanggan atau tersedia di online shop site. 

## Purchase (Inventory In)
Pembelian barang dilakukan kepada supplier dimana supplier tersebut harus terdaftar dalam sistem.
Purchase Order (PO) number hanya bisa menangani pembelian kepada 1 supplier saja, artinya ketika melakukan 'create purchase', barang yang tersedia untuk dibeli adalah barang-barang yang berelasi dengan supplier yang dipilih saja.
Setelah puchase terbentuk, purchasing admin bisa merubah status purchase menjadi completed/uncompleted. Jika barang sudah dibayar, maka secara otomatis jumlah uang yang sudah dibayarkan akan masuk ke laporan pengeluaran. Sedangkan barang yang belum dibayar, tagihan akan masuk ke laporan hutang.

## Sales (Inventory Out)
Penjualan barang dilakukan kepada customer dimana customer tersebut harus terdaftar dalam sistem.
Sales Order (SO) number hanya bisa menangani pembelian kepada 1 customer saja, dimana pembeli hanya bisa membeli produk yang memiliki status aktif dengan jumlah barang yang tersedia. 
Setelah sales terbentuk, sales admin bisa merubah status sales order menjadi completed/uncompleted. Jika barang sudah dibayar, maka secara otomatis jumlah uang yang sudah dibayarkan akan masuk ke laporan pemasukan. Sedangkan barang yang belum dibayar, tagihan akan masuk ke laporan piutang.

## Order Status (Sales/Purchase)
Terdapat 4 order status.
- **Accepted**: order telah diterima oleh pihak penjual
- **Shipped**: produk yang dipesan telah dikirim kepada pembeli (belum sampai tujuan)
- **Paid**: order sudah dibayar oleh pembeli
- **Recived**: barang sudah diterima oleh pembeli
Jika semua status tersebut sudah terpenuhi, maka status order menjadi completed dan tidak bisa diubah kembali (Hanya superadmin yang bisa merubahnya).
Sedangkan jika status paid sudah terpenuhi, maka jumlah uang yang dibayarkan/diterima akan masuk ke laporan keuangan.

## Customer & Supplier
Data pelanggan dan supplier disimpan di sistem untuk kebutuhan purchase dan sales, sehingga perusahaan mengetahui membeli dari supplier mana dan menjual kepada pelanggan mana.

## Report
Menginformasikan kepada admin mengenai jumlah sales order, jumlah purchase order, beserta statusnya masing-masing.
Juga menginformasikan jumlah pengeluaran, pendapatan, hutang, piutang, gross income, dan net income. Data yang disajikan berbentuk chart dan table.

## Users Admin Roles
- superadmin: all
- purchase: create purchase, view purchase, report
- sale: create sale, view sale, report

## Online Shop (Customer Shopping Cart)
Merupakan toko online untuk para pelanggan dimana mereka bisa melakukan pembelian produk secara langsung. Setelah customer melakukan checkout dan ourder, data Sales akan terupdate di halaman admin dan mengirim notifikasi ke email admin. Selanjutnya pelanggan harus melakukan konfirmasi pembayaran untuk nomor SO. Setiap perubahan status order, sistem akan menginformasikan perubahan tersebut kepada pelanggan melalui email. Di online shop ini pelanggan bisa melakukan aktifitas melihat, membeli, dan mereview produk.

## Use case Diagram
![prism-test-usecase](https://s28.postimg.org/ikspydvjf/prism_test_use_case.png)

## ERD
![prism-test-erd](https://s28.postimg.org/u8mrsxkod/prism_test_erd.png)

## Class Diagram
![prism-test-class-diagram](https://s28.postimg.org/c4jr8amzv/prism_test_class_diagram.png)

## Environment
### Back-end
- PHP >= 5.3
- Codeigniter 3.1.2 (PHP Framework)
- IonAuth v2.5.2 (Authentication library)

### Database
- MySql Ver 14.14 Distrib 5.7.16

### Server
- Apache2 Ubuntu

### Front-end
- Twitter Bootstrap v3.3.7 (CSS Framework)
- jQuery v3.13 (JS Library)
- AngularJS v1.3.6 (JS Framework)
- Morris v0.5.0 (Chart JS Library)
- Fontawesome v4.7.0 (Font Library)
- Datatables v1.10.13 (Table JS Library)


## How to run this app?
- Install LAMP (look instruction here [here](https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu))
- Move this project to /var/www/html/

### Setting database
- create dabase in your MySql with database name: prism-test
- import `sql/prism-test.sql`
- config database setting in `application/config/database.php`:
```php
$db['default'] = array(
	'dsn'	=> '',
	'hostname' => 'localhost', // your hostname
	'username' => 'root', // mysql username
	'password' => 'root', // mysql password
	'database' => 'prism-test', // database name (prism-test)
	.
	.
	.
]
```

### Seeting Base Url
1. change this line in `application/config/config.php`.
	 from `$config['base_url'] = 'http://localhost/prism-test/';` to `$config['base_url'] = 'http://your-site-url/'`

2. Run app on your web browser `http://your-site-url/` for online shop page, `http://your-site-url/admin` for admin page.

3. Tada!! The app is ready

#### Login
- **Superadmin**

	username: admin

	password: password

- **Purchase Employee**

	username: purchase

	password: password

- **Sales Employee**

	username: sales

	password: password

## Demo
- Try IMS (admin) demo [here](http://kresna-prism-test.pe.hu/admin)
- Do you want to shopping? try this demo [here](http://kresna-prism-test.pe.hu)

## Notes
If you get error like this:
`Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated . . . this is incompatible with sql_mode=only_full_group_by`

run this code in your mysql console.
```sql
mysql> set global sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
mysql> set session sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
```# artomoro
