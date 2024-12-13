const koneksi = require('../config/database'); // Pastikan jalur ini benar

const getMarineData = (callback) => {
    const query = 'SELECT * FROM posts ORDER BY id DESC';
    koneksi.query(query, (err, results) => {
        if (err) {
            console.error('Error fetching data:', err);
            callback(err, null);
        } else {
            callback(null, results);
        }
    });
};

module.exports = {
    getMarineData,
};
