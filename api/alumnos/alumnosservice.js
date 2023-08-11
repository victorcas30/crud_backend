import dbconnection from "../../config/dbconnection.js";

const createAlumno = (values,callBack)=>{
    const insertQuery = `
    INSERT INTO 
        alumnos(
        nombres,
        apellidos,
        celular,
        email
        ) VALUES(?,?,?,?);`;
    dbconnection.query(insertQuery,values,(error,result)=>{
        if(error){
            return callBack(error,result);  
        }
        return callBack(null,result);
    });
}

const getAlumnos = (callBack)=>{
    const myQuery = 'SELECT * FROM alumnos where eliminado="0"';
    dbconnection.query(myQuery,(error,result)=>{
        if(error){
            return callBack(error);
        }else{
            return callBack(error,result);
        }
    });
}

const updateAlumno= (values,callBack)=>{
    const updateQuery = `
        UPDATE alumnos 
            SET 
                nombres='${values.nombres}',
                apellidos='${values.apellidos}',
                celular='${values.celular}',
                email='${values.email}'
            WHERE idalumno = ${values.idalumno};`;
    dbconnection.query(updateQuery,(error,result)=>{
        if(error){
            callBack(error,result);
            return;
        }
        return callBack(null,result);
    });
}


const getUnAlumno = (values,callBack) =>{
    const myQuery = 'SELECT idalumno,nombres,apellidos,celular,email,eliminado FROM alumnos WHERE idalumno = ?';
    dbconnection.query(myQuery,values,(error,result)=>{
        if(!error){
           return callBack(null,result);
        }else{
            return callBack(error);
        }
    });
}

const deleteAlumno= (values,callBack)=>{
    const updateQuery = `
        UPDATE alumnos 
            SET 
                eliminado='1'
            WHERE idalumno = ${values.idalumno};`;
    dbconnection.query(updateQuery,(error,result)=>{
        if(error){
            callBack(error,result);
            return;
        }
        return callBack(null,result);
    });
}

const getAlumnosPromise = () =>{
     return new Promise((resolve,reject)=>{
        dbconnection.query("SELECT * FROM alumnos;",(error,result)=>{
            if(error) return reject(error);
            resolve(result);
        });
     });
}

export {
    getAlumnos,
    createAlumno,
    updateAlumno,
    getUnAlumno,
    deleteAlumno,
    getAlumnosPromise
}