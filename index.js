// Index milik BIMASAKTYPUTRA_.

const express = require('express')
const app = express()
const port = 5656

// import body parser
const bodyParser = require('body-parser')

// untuk cek website 
app.get('/', (req,res) =>{
    res.send(' ONE PIECE STORY ARC MARINEFORD.\n detail organisasi Angkatan laut ( Marine ).') // menampilkan penjelasan data marineford 
})

// insert, edit Delete 
    app.use(bodyParser.urlencoded({extended: false}))
    app.use(bodyParser.json())

//import route posts
const postsRouter = require('./routes/posts')
// menggunakan route post di express
app.use('/organisasiKeadilan/OnePiece', postsRouter) 

//akses halaman web 
app.listen(port, ()=> {
    console.log(`aplikasi berjalan di http://localhost:${port}`)
})

// melihat tampilan cek website awal dengan terdapat teks ' ONE PIECE STORY ARC MARINEFORD.\n detail organisasi Angkatan laut ( Marine ).'
// http://localhost:5656 

// dapat dilihat data daftar keanggotaan yang terdapat dari posts 
// http://localhost:5656/organisasiKeadilan/onPiece