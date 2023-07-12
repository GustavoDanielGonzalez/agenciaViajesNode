import {Viaje} from '../models/Viaje.js';  
import { Testimonial } from '../models/Testimoniales.js';

const paginaInicio = async (req,res) => {
    // consultar tres viajes del modelo viaje 
    try {
        // const viajes = await Viaje.findAll({ limit:3 });
        // const testimoniales = await Testimonial.findAll({ limit:3 })
        const promiseDB = await Promise.all([Viaje.findAll({ limit:3 }), Testimonial.findAll({ limit:3 })])
        res.render('inicio', {
            pagina: 'Inicio',
            clase : 'home',
            viajes: promiseDB[0],
            testimoniales:  promiseDB[1]
        })
    } catch (error) {
        console.log(error)
    }
};

const paginaNosotros = (req,res) => {
    res.render('nosotros', {
        pagina: 'Nosotros'
    })
};

const paginaViajes = async (req,res) => {
    //consultar BD
    const viajes =  await Viaje.findAll();

    res.render('viajes', {
        pagina: 'Proximos Viajes',
        viajes
    })
};
const paginaTestimoniales = async (req,res) => {

    try {
        const testimoniales = await Testimonial.findAll();
        res.render('testimoniales',{
        pagina: 'Testimoniales',
        testimoniales
        });


    }catch (error) {
        console.log(error)
    }
};

// Muestra un viaje por su Slug
const paginaDetalleViajes = async (req,res) =>{
    const {slug} = req.params
    // console.log(req.params)

    try{
        const resultado = await Viaje.findOne({where:{slug}})
        console.log(resultado)
        res.render('viaje',{
            pagina: 'Informacion Viaje',
            resultado

        })
    }catch(err){
        console.log(err)
    }
}
export {
    paginaInicio,
    paginaNosotros,
    paginaViajes,
    paginaTestimoniales,
    paginaDetalleViajes
}