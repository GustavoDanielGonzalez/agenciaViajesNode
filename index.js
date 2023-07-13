// const express = require('express');
import express from 'express';
import router from './routes/index.js';
import db from './config/db.js';


const app = express();

//conectar la base de dadtos
db.authenticate()
    .then(() => console.log('Base de datos conectada'))
    .catch(error => console.log(error))


// Definir puerto
const port = process.env.DB_PORT || 4000 ;

//Habilitar pug
 app.set('view engine','pug')

// Obtener el ano actual
app.use( (req,res,next) =>{
    const year = new Date();
    res.locals.actualYear = year.getFullYear();
    res.locals.nombreSitio = "Agencia de Viajes";
    
    next()
})

// agregar bodyParcer para leer los datos de l formulario
app.use(express.urlencoded({extended: true}));
// definir la carpeta publica
app.use(express.static('public'));

//Agregar router
app.use('/',router);

app.listen(port,() =>{
    console.log(`El Servidor esta funcionando en el puerto ${port}`)
})

