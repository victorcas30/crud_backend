import express from 'express';
import { getLosAlumnos,createElAlumno,setUpdateAlumno,getAlumno,setDeleteAlumno,getAlumnosPromise1 } from "./alumnoscontrollers.js";
const router = express.Router();

router.get('/alumnos',getLosAlumnos);
router.get('/alumnospromise',getAlumnosPromise1);
router.get('/alumnos/:idalumno',getAlumno);
router.post('/alumnos',createElAlumno);
router.put('/alumnos',setUpdateAlumno);
router.put('/alumnos/delete',setDeleteAlumno);

export {router as alumnosRouter};
