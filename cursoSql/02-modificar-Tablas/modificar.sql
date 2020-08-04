# RENIOMBRAR UNA TABL
# Para saber que es comando y que es contenido los comandos van
# en mayuscula y los nombres en minuscula

ALTER TABLE usuarios RENAME TO usuarios_renom;

# CAMBIAR EL NOMBRE DE UNA COLUMNA#
ALTER TABLE usuarios_renom CHANGE apellidos apellido varchar(100) null;

# Modificar columna sin cambiar nombre #
ALTER TABLE usuarios_renom MODIFY apellido char(40) not null;

# añadir coumna  #
ALTER TABLE usuarios_renom ADD website varchar(100) null;

# añadir resticcion a columna #
ALTER TABLE usuarios_renom ADD CONSTRAINT uq_email UNIQUE(email);

# BORRAR UNA COLUMNA #
ALTER TABLE usuarios_renom DROP website;