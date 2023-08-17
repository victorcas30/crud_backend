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
app.use(express.urlencoded({ extended: false }));

// Utiliza el puerto 3000 si no se ha configurado en las variables de entorno
const port = process.env.SERVER_PORT || 3000;

app.use('/api', alumnosRouter);
app.use('/api', empleadosRouter);

// Escucha en todas las interfaces de red (0.0.0.0) en lugar de localhost (127.0.0.1)
app.listen(port, '0.0.0.0', () => {
    console.log('Server running on port ' + port);
});
