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

    const connection = dbconnection; // Abrir la conexión

    connection.query(insertQuery, values, (error, result) => {
        if (error) {
            callBack(error, result);
        } else {
            callBack(null, result);
        }
        connection.end(); // Cerrar la conexión después de la consulta
    });
}

const getEmpleados = (callBack) => {
    const myQuery = 'SELECT * FROM empleados';

    const connection = dbconnection; // Abrir la conexión

    connection.query(myQuery, (error, result) => {
        if (error) {
            callBack(error);
        } else {
            callBack(null, result);
        }
        connection.end(); // Cerrar la conexión después de la consulta
    });
}

const getEmpleadosPorBusqueda = (searchText, callBack) => {
    const myQuery = `SELECT * FROM empleados WHERE nombre LIKE '%${searchText}%' OR apellido LIKE '%${searchText}%'`;

    const connection = dbconnection; // Abrir la conexión

    connection.query(myQuery, (error, result) => {
        if (error) {
            callBack(error);
        } else {
            callBack(null, result);
        }
        connection.end(); // Cerrar la conexión después de la consulta
    });
}


const updateEmpleado = (values, callBack) => {
    const updateQuery = `
        UPDATE empleados 
            SET 
                nombre='${values.nombre}',
                apellido='${values.apellido}',
                dui='${values.dui}',
                fechanacimiento='${values.fechanacimiento}'
            WHERE id = ${values.id};`;

    const connection = dbconnection; // Abrir la conexión

    connection.query(updateQuery, (error, result) => {
        if (error) {
            callBack(error, result);
        } else {
            callBack(null, result);
        }
        connection.end(); // Cerrar la conexión después de la consulta
    });
}

const getUnEmpleado = (values, callBack) => {
    const myQuery = 'SELECT id, nombre, apellido, dui, fechanacimiento FROM empleados WHERE id = ?';

    const connection = dbconnection; // Abrir la conexión

    connection.query(myQuery, values, (error, result) => {
        if (!error) {
            callBack(null, result);
        } else {
            callBack(error);
        }
        connection.end(); // Cerrar la conexión después de la consulta
    });
}

const deleteEmpleado = (values, callBack) => {
    const updateQuery = `
        DELETE FROM empleados 
        WHERE id = ?`;

    const connection = dbconnection; // Abrir la conexión

    connection.query(updateQuery, values.id, (error, result) => {
        if (error) {
            callBack(error, result);
        } else {
            callBack(null, result);
        }
        connection.end(); // Cerrar la conexión después de la consulta
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
    getEmpleadosPorBusqueda,
    createEmpleado,
    updateEmpleado,
    getUnEmpleado,
    deleteEmpleado,
    getEmpleadosPromise
}
