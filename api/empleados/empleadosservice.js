import dbconnection from "../../config/dbconnection.js";

const createEmpleado = (values, callBack) => {
    const insertQuery = `
    INSERT INTO 
        empleados(
        nombre,
        apellido,
        dui,
        fechanacimiento
        ) VALUES(?,?,?,?);`;
    dbconnection.query(insertQuery, values, (error, result) => {
        if (error) {
            return callBack(error, result);
        }
        return callBack(null, result);
    });
}

const getEmpleados = (callBack) => {
    const myQuery = 'SELECT * FROM empleados';
    dbconnection.query(myQuery, (error, result) => {
        if (error) {
            return callBack(error);
        } else {
            return callBack(error, result);
        }
    });
}

const updateEmpleado = (values, callBack) => {
    const updateQuery = `
        UPDATE empleados 
            SET 
                nombre='${values.nombre}',
                apellido='${values.apellido}',
                dui='${values.dui}',
                fechanacimiento='${values.fechanacimiento}',
            WHERE id = ${values.id};`;
    dbconnection.query(updateQuery, (error, result) => {
        if (error) {
            callBack(error, result);
            return;
        }
        return callBack(null, result);
    });
}

const getUnEmpleado = (values, callBack) => {
    const myQuery = 'SELECT id, nombre, apellido, dui, fechanacimiento FROM empleados WHERE id = ?';
    dbconnection.query(myQuery, values, (error, result) => {
        if (!error) {
            return callBack(null, result);
        } else {
            return callBack(error);
        }
    });
}

const deleteEmpleado = (values, callBack) => {
    const updateQuery = `
        DELETE FROM empleados 
        WHERE id = ${values.id};`;
    dbconnection.query(updateQuery, (error, result) => {
        if (error) {
            callBack(error, result);
            return;
        }
        return callBack(null, result);
    });
}

const getEmpleadosPromise = () => {
    return new Promise((resolve, reject) => {
        dbconnection.query("SELECT * FROM empleados;", (error, result) => {
            if (error) return reject(error);
            resolve(result);
        });
    });
}

export {
    getEmpleados,
    createEmpleado,
    updateEmpleado,
    getUnEmpleado,
    deleteEmpleado,
    getEmpleadosPromise
}
