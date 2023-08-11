import { getEmpleados, createEmpleado, updateEmpleado, getUnEmpleado, deleteEmpleado, getEmpleadosPromise } from "./empleadosservice.js";

const createElEmpleado = (req, res) => {
    const values = Object.values(req.body);
    createEmpleado(values, (error, results) => {
        if (error) {
            res.status(500).json({ success: false, message: 'Error al crear empleado' });
        } else {
            res.status(200).json({ success: true, message: 'Empleado creado' });
        }
    });
}

const getLosEmpleados = (req, res) => {
    getEmpleados((errors, result) => {
        if (errors) {
            return res.status(500).json({ success: false, message: errors });
        } else {
            return res.status(200).json({ success: 1, empleados: result });
        }
    });
}

const setUpdateEmpleado = (req, res) => {
    const values = req.body;
    updateEmpleado(values, (error, results) => {
        if (error) {
            res.status(500).json({ success: false, message: 'Error al actualizar empleado' });
        } else {
            res.status(200).json({ success: true, message: 'Cambios guardados' });
        }
    });
}

const getEmpleado = (req, res) => {
    const values = Object.values(req.params);
    getUnEmpleado(values, (error, result) => {
        if (error) {
            res.status(500).json({ success: false, message: 'Error al procesar la solicitud' });
        } else {
            res.status(200).json({ success: true, empleados: result });
        }
    });
}

const setDeleteEmpleado = (req, res) => {
    const values = req.body;
    deleteEmpleado(values, (error, results) => {
        if (error) {
            res.status(500).json({ success: false, message: 'Error al borrar empleado' });
        } else {
            res.status(200).json({ success: true, message: 'Empleado Eliminado' });
        }
    });
}

const getEmpleadosPromise1 = async (req, res) => {
    try {
        const rows = await getEmpleadosPromise();
        return res.json({ success: true, result: rows });
    } catch (error) {
        return res.json({ success: false, msg: "Something went wrong" });
    }
}

export {
    createElEmpleado,
    getLosEmpleados,
    setUpdateEmpleado,
    getEmpleado,
    setDeleteEmpleado,
    getEmpleadosPromise1
};
