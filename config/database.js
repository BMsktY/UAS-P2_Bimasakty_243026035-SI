// database milk BIMASAKTYPUTRA_
let mysql = require('mysql')

let koneksi = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'api_bimasakty_p2'
})

koneksi.connect(function(error){
    if(!!error){
        console.log(error)
    }else{
        console.log('Koneksi Berhasil')
    }
})

module.exports=koneksi