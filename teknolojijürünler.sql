-- Products Tablosu

-- 1. Laptop
INSERT INTO Products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES
('Dell XPS 13', NULL, 1, '1 adet', 25000, 15, 0, 5, 0),
('MacBook Air M2', NULL, 1, '1 adet', 38000, 10, 0, 5, 0),
('Lenovo ThinkPad X1 Carbon', NULL, 1, '1 adet', 29000, 8, 0, 5, 0),
('HP Spectre x360', NULL, 1, '1 adet', 27000, 12, 0, 5, 0),
('Asus ROG Zephyrus G14', NULL, 1, '1 adet', 32000, 9, 0, 5, 0),
('MSI Katana GF66', NULL, 1, '1 adet', 21000, 14, 0, 5, 0),
('Acer Swift 3', NULL, 1, '1 adet', 18000, 20, 0, 5, 0);

-- 2. Telefon
INSERT INTO Products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES
('iPhone 15 Pro', NULL, 2, '1 adet', 52000, 20, 0, 5, 0),
('Samsung Galaxy S24', NULL, 2, '1 adet', 42000, 18, 0, 5, 0),
('Xiaomi 13 Pro', NULL, 2, '1 adet', 32000, 22, 0, 5, 0),
('Google Pixel 8 Pro', NULL, 2, '1 adet', 35000, 12, 0, 5, 0),
('OnePlus 11', NULL, 2, '1 adet', 30000, 15, 0, 5, 0),
('Huawei P60 Pro', NULL, 2, '1 adet', 31000, 10, 0, 5, 0),
('Oppo Find X6', NULL, 2, '1 adet', 29500, 13, 0, 5, 0);

-- 3. Tablet
INSERT INTO Products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES
('iPad Air 2024', NULL, 3, '1 adet', 18000, 25, 0, 5, 0),
('iPad Pro 12.9', NULL, 3, '1 adet', 30000, 12, 0, 5, 0),
('Samsung Galaxy Tab S9', NULL, 3, '1 adet', 21000, 14, 0, 5, 0),
('Xiaomi Pad 6', NULL, 3, '1 adet', 12000, 18, 0, 5, 0),
('Huawei MatePad 11', NULL, 3, '1 adet', 14000, 16, 0, 5, 0),
('Lenovo Tab P12 Pro', NULL, 3, '1 adet', 16000, 10, 0, 5, 0),
('Amazon Fire HD 10', NULL, 3, '1 adet', 6000, 20, 0, 5, 0);

-- 4. Monitör
INSERT INTO Products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES
('Samsung 27" Odyssey', NULL, 4, '1 adet', 6000, 12, 0, 5, 0),
('LG UltraGear 32"', NULL, 4, '1 adet', 8500, 8, 0, 5, 0),
('Asus TUF Gaming 27"', NULL, 4, '1 adet', 7500, 10, 0, 5, 0),
('BenQ EX3501R', NULL, 4, '1 adet', 12000, 6, 0, 5, 0),
('Acer Predator X34', NULL, 4, '1 adet', 14000, 5, 0, 5, 0),
('Dell UltraSharp 27"', NULL, 4, '1 adet', 10000, 7, 0, 5, 0),
('MSI Optix 24"', NULL, 4, '1 adet', 4500, 15, 0, 5, 0);

-- 5. Aksesuar
INSERT INTO Products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES
('Logitech G Pro Mouse', NULL, 5, '1 adet', 2500, 40, 0, 5, 0),
('Razer BlackWidow Klavye', NULL, 5, '1 adet', 3200, 18, 0, 5, 0),
('SteelSeries Arctis 7', NULL, 5, '1 adet', 4000, 14, 0, 5, 0),
('Corsair K95 RGB Klavye', NULL, 5, '1 adet', 3500, 12, 0, 5, 0),
('HyperX Cloud II Kulaklık', NULL, 5, '1 adet', 2800, 20, 0, 5, 0),
('Logitech MX Master 3', NULL, 5, '1 adet', 2200, 15, 0, 5, 0),
('Sony WH-1000XM5', NULL, 5, '1 adet', 12000, 8, 0, 5, 0);

-- 6. Yazıcı
INSERT INTO Products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES
('HP LaserJet Pro M404dn', NULL, 6, '1 adet', 7000, 10, 0, 5, 0),
('Canon Pixma G640', NULL, 6, '1 adet', 5000, 12, 0, 5, 0),
('Epson EcoTank L3250', NULL, 6, '1 adet', 6000, 14, 0, 5, 0),
('Brother HL-L2350DW', NULL, 6, '1 adet', 4500, 18, 0, 5, 0),
('Xerox Phaser 3020', NULL, 6, '1 adet', 4000, 20, 0, 5, 0),
('Samsung Xpress M2020', NULL, 6, '1 adet', 4800, 15, 0, 5, 0),
('HP DeskJet 2720', NULL, 6, '1 adet', 3500, 22, 0, 5, 0);

-- 7. Oyun Konsolu
INSERT INTO Products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES
('PlayStation 5', NULL, 7, '1 adet', 25000, 10, 0, 5, 0),
('Xbox Series X', NULL, 7, '1 adet', 23000, 9, 0, 5, 0),
('Nintendo Switch OLED', NULL, 7, '1 adet', 12000, 15, 0, 5, 0),
('Steam Deck 512GB', NULL, 7, '1 adet', 18000, 12, 0, 5, 0),
('PlayStation VR2', NULL, 7, '1 adet', 15000, 8, 0, 5, 0),
('Xbox Series S', NULL, 7, '1 adet', 12000, 20, 0, 5, 0),
('Logitech G Cloud', NULL, 7, '1 adet', 9000, 14, 0, 5, 0);

-- 8. Kamera
INSERT INTO Products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES
('Canon EOS R6', NULL, 8, '1 adet', 42000, 6, 0, 5, 0),
('Sony A7 IV', NULL, 8, '1 adet', 45000, 8, 0, 5, 0),
('Nikon Z6 II', NULL, 8, '1 adet', 40000, 7, 0, 5, 0),
('Fujifilm X-T5', NULL, 8, '1 adet', 35000, 10, 0, 5, 0),
('Panasonic Lumix S5II', NULL, 8, '1 adet', 38000, 9, 0, 5, 0),
('Canon EOS 90D', NULL, 8, '1 adet', 28000, 12, 0, 5, 0),
('Sony ZV-E10', NULL, 8, '1 adet', 22000, 15, 0, 5, 0);

-- 9. Akıllı Saat
INSERT INTO Products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES
('Apple Watch Series 9', NULL, 9, '1 adet', 15000, 20, 0, 5, 0),
('Samsung Galaxy Watch 6', NULL, 9, '1 adet', 10000, 18, 0, 5, 0),
('Huawei Watch GT 4', NULL, 9, '1 adet', 8000, 15, 0, 5, 0),
('Xiaomi Watch S1 Pro', NULL, 9, '1 adet', 7000, 12, 0, 5, 0),
('Garmin Forerunner 265', NULL, 9, '1 adet', 12000, 10, 0, 5, 0),
('Amazfit GTR 4', NULL, 9, '1 adet', 6000, 16, 0, 5, 0),
('Fitbit Sense 2', NULL, 9, '1 adet', 9000, 14, 0, 5, 0);

-- 10. Depolama
INSERT INTO Products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES
('Samsung 1TB SSD 980 Pro', NULL, 10, '1 adet', 5000, 25, 0, 5, 0),
('WD Black SN850X 2TB', NULL, 10, '1 adet', 8500, 18, 0, 5, 0),
('Seagate Barracuda 4TB HDD', NULL, 10, '1 adet', 4500, 20, 0, 5, 0),
('Kingston NV2 1TB NVMe', NULL, 10, '1 adet', 3500, 30, 0, 5, 0),
('Crucial MX500 500GB SSD', NULL, 10, '1 adet', 2500, 22, 0, 5, 0),
('Toshiba Canvio Basics 2TB', NULL, 10, '1 adet', 3000, 16, 0, 5, 0),
('SanDisk Extreme 1TB Taşınabilir SSD', NULL, 10, '1 adet', 6000, 12, 0, 5, 0);
