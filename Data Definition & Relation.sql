CREATE TABLE lahan (
    id_lahan INT AUTO_INCREMENT,
    id_petani INT NOT NULL,
    nama_lahan VARCHAR(100) NOT NULL,
    lokasi VARCHAR(150) DEFAULT NULL,
    luas_m2 DECIMAL(12, 2) NOT NULL CHECK (luas_m2 > 0),
    komoditas VARCHAR(50) NOT NULL,
    CONSTRAINT pk_lahan PRIMARY KEY (id_lahan)
);

CREATE TABLE sensor (
    id_sensor INT AUTO_INCREMENT,
    id_lahan INT NOT NULL,
    jenis_sensor VARCHAR(50) NOT NULL,
    satuan VARCHAR(20) NOT NULL,
    status_sensor ENUM('AKTIF', 'NONAKTIF', 'RUSAK') NOT NULL DEFAULT 'AKTIF',
    
    CONSTRAINT pk_sensor PRIMARY KEY (id_sensor),
    
    CONSTRAINT fk_sensor_lahan 
        FOREIGN KEY (id_lahan) 
        REFERENCES lahan (id_lahan)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

CREATE TABLE pembacaan_sensor (
    id_pembacaan BIGINT AUTO_INCREMENT,
    id_sensor INT NOT NULL,
    nilai DECIMAL(10, 2) NOT NULL,
    waktu_baca DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT pk_pembacaan PRIMARY KEY (id_pembacaan),
    
    CONSTRAINT fk_pembacaan_sensor 
        FOREIGN KEY (id_sensor) 
        REFERENCES sensor (id_sensor)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);
