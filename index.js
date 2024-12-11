// Index milik BIMASAKTYPUTRA_.

const express = require('express')
const app = express()
const port = 3000

// import body parser
const bodyParser = require('body-parser')

// insert, edit Delete 
const path = require('path');
app.use(express.static(path.join(__dirname,'public')));

app.use(bodyParser.urlencoded({extended: false}))
app.use(bodyParser.json())

//import route posts
const postsRouter = require('./routes/posts')
// menggunakan route post di express
app.use('/organisasiKeadilan/OnePiece', postsRouter) 

app.get('/',(req,res)=> {
    const filepath = path.join(__dirname,'public','index.html');
    res.send(' ONE PIECE STORY ARC MARINEFORD.\n detail organisasi Angkatan laut ( Marine ).') // menampilkan penjelasan data marineford 
    console.log(`Berhasil Update:${filepath}`);
    res.sendFile(filepath,(err) => {
        if (err) {
            console.error('Pengiriman error',err); // jika terjadi error 
            res.status(err.status).end();
        }
    })
})

//akses masuk halaman web 
app.listen(port, ()=> {
    console.log(`aplikasi berjalan di http://localhost:${port}`)
})

// melihat tampilan cek website awal dengan terdapat teks ' ONE PIECE STORY ARC MARINEFORD.\n detail organisasi Angkatan laut ( Marine ).'
// http://localhost:3000

// dapat dilihat data daftar keanggotaan yang terdapat dari posts 
// http://localhost:3000/organisasiKeadilan/onPiece