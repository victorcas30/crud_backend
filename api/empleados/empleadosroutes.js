import express from 'express';
import { getLosEmpleados, createElEmpleado, setUpdateEmpleado, getEmpleado, setDeleteEmpleado, getEmpleadosPromise1 } from "./empleadoscontrollers.js";
const router = express.Router();

router.get('/empleados', getLosEmpleados);
router.get('/empleadospromise', getEmpleadosPromise1);
router.get('/empleados/:idempleado', getEmpleado);
router.post('/empleados', createElEmpleado);
router.put('/empleados', setUpdateEmpleado);
router.delete('/empleados/delete', setDeleteEmpleado);

export { router as empleadosRouter };
