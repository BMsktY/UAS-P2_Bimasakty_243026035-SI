const express = require('express')
const router = express.Router()

// untuk import database
const koneksi = require('../config/database')

// import express validator
const {body, validationResult} = require('express-validator')


// view
router.get('/',function (req,res){
    //isi data (query)
    koneksi.query('SELECT * FROM posts ORDER BY id desc',function(err,rows){
        if(err){
            return res.status(500).json({
                status:false,
                message: 'server Data tidak bisa tersambung dikarenakan serangan Pirate'
            })
        }else{
            return res.status(200).json({
                status: true,
                message: 'melihat masuk dalam data detail dari Organisasi keadilan laut Marineford',
                data: rows
            })
        }
    })
})

// INSERT 
router.post('/dataMarine',[
    // membuat daftar partisipasi keanggotaan baru pada angkatan laut
    // http://localhost:5656/organisasiKeadilan/onPiece/dataMarine
    // untuk valdasi anggota dan melihat data dari para marine
    body('nama').notEmpty(),
    body('gender').notEmpty(),
    body('tinggi').notEmpty(),
    body('umur').notEmpty(),
    body('pangkat').notEmpty(),
    body('julukan').notEmpty(),
    body('kepribadian').notEmpty(),
    body('devil_fruit').notEmpty(),
    body('haki_user').notEmpty(),
    body('debut_char').notEmpty(),
], (req,res)=> {
    const errors = validationResult(req)
    if(!errors.isEmpty()){
        return res.status(422).json({
            errors:errors.array()
        })
    }

    //definisi form data anggota
    let formData = {
        nama: req.body.nama,
        gender: req.body.gender,
        tinggi: req.body.tinggi,
        umur: req.body.umur,
        pangkat: req.body.pangkat,
        julukan: req.body.julukan,
        kepribadian: req.body.kepribadian,
        devil_fruit: req.body.devil_fruit,
        haki_user: req.body.haki_user,
        debut_char: req.body.debut_char,
    }
    
    //memasukan query / data
    koneksi.query('INSERT INTO posts SET ?',formData, function(err,rows){
        //untuk menampilkan error jika web sedang mengalami kendala internal maupun eksternal maka 
        if(err){
            return res.status(500).json({
                status:false,
                message:'terdapat serangan pirate yang mengalai server angkatan laut error',
            })
        }else{
            return res.status(201).json({
                status:true,
                message:'berhasil masukkan data daftar anggota',
                data: formData
            })
        }
    })
})

//detail data
    // melihat daftar isi keanggotaan secara cepat dan detail dari salah satu daftar nama 
    // http://localhost:5656/organisasiKeadilan/onPiece/dataMarine/
    // id : berupa urutan angka dari 1 hingga seterusnya 
router.get('/:id',function(req,res){
    let id = req.params.id

    koneksi.query(`SELECT * FROM posts WHERE ID=${id}`,
        function(error,rows){
            if(error){
                return res.status(500).json({
                    status:false,
                    message: 'server error',
                })
            }

            //kalau posts id masih kosong / belum terdapat data pengguna 
            if(rows.length <= 0){
                return res.status(404).json({
                    status:false,
                    message:'data anggota belum terdapat pada daftar marine'
                })
            } else {
                return res.status(200).json({
                    status:true,
                    message:'menampilkan data posts daftar anggota',
                    data:rows[0]
                })
            }
        }
    )
})

// update penambahan data daftar anggota marine 
    // memperbaharui / memperbaiki salah satu detail data dari beberapa keanggotaan aktif
    // http://localhost:5656/organisasiKeadilan/onPiece/updateKeanggotaan/id
    // id : berupa urutan angka dari 1 hingga seterusnya yang akan diperbaharui datanya sesuai id yang diterapkan 
router.patch('/updateKeanggotaan/:id',[
    body('nama').notEmpty(),
    body('gender').notEmpty(),
    body('tinggi').notEmpty(),
    body('umur').notEmpty(),
    body('pangkat').notEmpty(),
    body('julukan').notEmpty(),
    body('kepribadian').notEmpty(),
    body('devil_fruit').notEmpty(),
    body('haki_user').notEmpty(),
    body('debut_char').notEmpty(),
],(req,res)=>{
    const errors = validationResult(req)
    if(!errors.isEmpty()){
        return res.status(422).json({
            errors:errors.array()
        })
    }

    let id = req.params.id //untuk mengambil data id dari setiap anggota marines

    let formData={
        nama: req.body.nama,
        gender: req.body.gender,
        tinggi: req.body.tinggi,
        umur: req.body.umur,
        pangkat: req.body.pangkat,
        julukan: req.body.julukan,
        kepribadian: req.body.kepribadian,
        devil_fruit: req.body.devil_fruit,
        haki_user: req.body.haki_user,
        debut_char: req.body.debut_char,
    }

    //update query data 
    koneksi.query(`UPDATE posts set ? WHERE id=${id}`,formData,
        function(err,rows){
            if(err){
                console.error(err);
                return res.status(500).json({
                    status:false,
                    message:'internal server error something happen'
                })
            }else{
                return res.status(200).json({
                    status: true,
                    message: 'pengupdatean data marine berhasil',
                    data: formData
                })
            }
        }
    )
})
  
// Delete informasi dari keanggotaan data marine
    // menghapus data jejak data keanggotaan yang sudah keluar paksa dalam organisasi  
    // http://localhost:5656/organisasiKeadilan/onPiece/deletePenghapusan/id
    // id : berupa urutan angka dari 1 hingga seterusnya yang akan dihilangkan datanya sesuai id yang diterapkan 
router.delete('/deletePenghapusan/(:id)',
    function(req,res){
        let id = req.params.id

        koneksi.query(`DELETE FROM posts WHERE id = ${id}`,
            function(error,rows){
                if(error){
                    return res.status(500).json({
                        status: false,
                        message: 'internal server error something happen',
                    })
                }else{
                    return res.status(200).json({
                        status: true,
                        message: 'telah berhasil dihapus data keanggotaan marine',
                    })
                }
            }
        )
    }
)

module.exports = router