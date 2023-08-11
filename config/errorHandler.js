const errorHandler = (error, req, res, next) => {
    console.error('Error en la aplicación:', error);
    res.status(500).json({ message: 'Error en la aplicación' });
  };

  export {
    errorHandler
  }