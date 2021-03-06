
CREATE TABLE categorias (
  codigo          SERIAL PRIMARY KEY,
  nombre          VARCHAR(500) UNIQUE,
  fecha_actualizacion DATE DEFAULT CURRENT_DATE 
);

CREATE TABLE editoriales (
  nid	          VARCHAR(50) PRIMARY KEY,
  nombre          VARCHAR(500) UNIQUE,
  telefono		  VARCHAR(20),
  direccion		  VARCHAR(500),
  email		  	  VARCHAR(100),
  sitioweb		  VARCHAR(100),
  fecha_actualizacion DATE DEFAULT CURRENT_DATE 
);

CREATE TABLE libros (
  isbn	          	VARCHAR(50) PRIMARY KEY,
  titulo          	VARCHAR(500) not NULL,
  descripcion	  	VARCHAR(1000),
  nombre_autor	  	VARCHAR(500),
  fecha_publicacion VARCHAR(30),
  fecha_registro 	DATE DEFAULT CURRENT_DATE,
  codigo_categoria  INT,
  nid_editorial     VARCHAR(50),
  fecha_actualizacion DATE DEFAULT CURRENT_DATE,
  constraint fk_codigo_categoria foreign key (codigo_categoria) references categorias(codigo) on update restrict on delete restrict,
  constraint fk_nid_editorial foreign key (nid_editorial) references editoriales (nid) on update restrict on delete restrict
);