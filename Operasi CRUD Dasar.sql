INSERT INTO lahan (id_petani, nama_lahan, lokasi, luas_m2, komoditas) VALUES
(1, 'Lahan Jagung Utama', 'Madiun', 1500.00, 'Jagung'),
(1, 'Lahan Padi Barat', 'Madiun', 2500.00, 'Padi'),
(2, 'Greenhouse Tomat', 'Magetan', 800.00, 'Tomat');

INSERT INTO sensor (id_lahan, jenis_sensor, satuan, status_sensor) VALUES
(1, 'Kelembaban Tanah', '%', 'AKTIF'),
(1, 'Suhu Udara', 'C', 'AKTIF'),
(2, 'pH Tanah', 'pH', 'AKTIF');

INSERT INTO pembacaan_sensor (id_sensor, nilai, waktu_baca) VALUES
(1, 65.50, '2026-10-15 08:00:00'),
(2, 31.20, '2026-10-15 08:00:00'),
(3, 6.80, '2026-10-15 08:05:00');

SELECT * FROM lahan;

UPDATE pembacaan_sensor 
SET nilai = 70.00 
WHERE id_pembacaan = 1;

DELETE FROM pembacaan_sensor 
WHERE id_pembacaan = 3;
