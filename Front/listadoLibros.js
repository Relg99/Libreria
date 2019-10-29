
var objeto;
const xhr = new XMLHttpRequest();
xhr.onload = function () {
  console.log(this.responseText);
  objeto = JSON.parse(this.responseText);

  for (let i = 0; i < objeto.length; i++) {
    document.getElementById("insertar-libros").innerHTML +=
      `
      <div class="contenedor-libro">
      
            <h1>Titulo: ${objeto[i].titulo}</h1>
            <h2>Autor: ${objeto[i].autor}</h2>

            <form OnSubmit="borrar(${i})" method="POST">
       
              <button type="submit">
                    Borrar
              </button>
        </form>

        <form OnSubmit="verDatos(${i})" method="POST">
       
              <button type="submit">
                    Ver Info
              </button>
        </form>

        </div>

        
    `;
  }
  
};
xhr.open("POST", "/Libreria/Back/obtenerDatosLibros.php", true);
xhr.send();


function borrar(i){
    var objet;
  const xhrd = new XMLHttpRequest();
  xhrd.onload = function () {
    console.log(this.responseText);
    objet = JSON.parse(this.responseText);
  }
  
  var fd = new FormData();
  fd.append("number", i);


  xhr.open("POST", "/Libreria/Back/borrarDatosLibros.php", true);
  xhr.send(fd);
  }


  function verDatos(i){
    var objeto;
    const xhr = new XMLHttpRequest();
    xhr.onload = function () {
      console.log(this.responseText);
      objeto = JSON.parse(this.responseText);
    
      for (let i = 0; i < objeto.length; i++) {
        document.getElementById("insertar-comentarios").innerHTML +=
          `
          <div class="contenedor-libro">
          
                <h1>Titulo: ${objeto[i].titulo}</h1>
                <h2>Comentario: ${objeto[i].comentario}</h2>
                <h2>Fecha: ${objeto[i].fecha}</h2>
                <h2>Nick: ${objeto[i].nick}</h2>
    
            </div>
    
            
        `;
      }
      
    };

    var fd = new FormData();
    fd.append("number", i);

    xhr.open("POST", "/Libreria/Back/mostrarInfoLibro.php", true);
    xhr.send();
  }