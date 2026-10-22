SELECT 
    l.nama_lahan,
    l.komoditas,
    COUNT(r.id_rekomendasi) AS total_rekomendasi_diterapkan
FROM lahan l
JOIN rekomendasi r ON l.id_lahan = r.id_lahan
WHERE r.status_rekomendasi = 'DITERAPKAN'
GROUP BY l.id_lahan, l.nama_lahan, l.komoditas;
