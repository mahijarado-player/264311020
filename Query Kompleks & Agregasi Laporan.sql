SELECT 
    l.nama_lahan,
    s.jenis_sensor,
    AVG(p.nilai) AS rata_rata_nilai
FROM lahan l
JOIN sensor s ON l.id_lahan = s.id_lahan
JOIN pembacaan_sensor p ON s.id_sensor = p.id_sensor
WHERE s.status_sensor = 'AKTIF'
GROUP BY l.id_lahan, l.nama_lahan, s.jenis_sensor;
