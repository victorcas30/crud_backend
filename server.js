import express from 'express';
import dotenv from 'dotenv';
import { alumnosRouter } from './api/alumnos/alumnosroutes.js';
import { empleadosRouter } from './api/empleados/empleadosroutes.js';
import { errorHandler } from './config/errorHandler.js';
import cors from 'cors';
const app = express();
dotenv.config();
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({extended:false}));
const port = process.env.SERVER_PORT;

app.use('/api',alumnosRouter);
app.use('/api', empleadosRouter);

//app.use(errorHandler);

app.listen(port,()=>{
    console.log('server running on port '+port);
});



