<%--
  Created by IntelliJ IDEA.
  User: marcos
  Date: 10/9/19
  Time: 19:41
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="es">
<script type="text/javascript">
    //Vuelve visible el elemento del campo para que aparezca arriba del input
    function elementoVisible(elemento){
        document.getElementById(elemento).style.visibility='visible';
        document.getElementById(elemento).style.display = 'block'
    };
</script>
<style type="text/css">
.InputSinBordes {
    background-color: #eee;
    border: 0;
}
  /*Campo que ocupa  el anccho completo  del Fieldset*/

.input_sub_largo {
    width: 900px;
    height: 17px;
    border: 0;
    outline: none;
    padding-left : 20px ;
    box-shadow: -6px 6px 0px -4px #000, 6px 6px 0px -4px #000;
    text-align: left;
}
 /*Campo que ocupa la mitad del ancho del field set*/

.input_sub_corto {
    width: 445px;
    height: 17px;
    border: 0;
    outline: none;
    padding-left: 20px;
    box-shadow: -6px 6px 0px -4px #000, 6px 6px 0px -4px #000;
    text-align: left;
}

p1.centro {text-align: right}

/*Define la posicion arriba centro-izquierda*/

.izquierda {
    left: 280px;
    bottom:530px;
    position: absolute;
    color:#800080;
}

fieldset{
    border: 2px solid rgb(0,0,0);
    width: 800px;
    height:450px;
    top: 120px;
    margin:auto;
    left: 185px;
    position : absolute;
    background-color: whitesmoke;

}


select {

    border: 2px solid rgb(0,0,0);
    font-size: 14px;
    height: 30px;
    padding: 5px;
    width: 445px;
}

 /*Define las dimensiones del logo y su ubicacion (arriba izquierda)*/

.logo {
    left:185px;
    bottom:557px;
    position:absolute;
    width:85px;
    height:85px;

}
/*Define la posicion de pie, abajo izquierda*/

.pie{
    left:185px;
    bottom:25px;
    position:absolute;
    width:45px;
    height:45px;

}
.boton{
    box-shadow: 0 12px 16px 0 rgba(0,0,0,1),0 17px 50px 0 rgba(0,0,0,1);
    background-color: #9fc5f8;
    left:925px;
    position:absolute;
    bottom:30px;
    color: #000000
}
.boton:hover{
    -webkit-transform: scale(1.12,1.12);
    -webkit-transition-timing-fuction :ease-out;
    -webkit-trasition-duration: 100ms;
    -moz-transform: scale(1.12,1.12);
    -moz-transition-timing-function:ease-out;
    -moz-transition-duration: 100ms;
    background-color:#2d572c;
    color:white;
}

.zoomtexto {
    overflow:hidden;
}

.zoomTexto:hover {
    -webkit-transform:scale(1.02);
    -transform:scale(1.02);
}
/*Define la posicion del pie2 abajo centro derecha*/
.pie2{
    left:235px;
    bottom:25px;
    position:absolute;

}

 /*Define la posicion del centrada*/

.centro {
    left:460px;
    position:absolute;

}
 /*Estilo de letra de los input*/

.fuenteCursiva{
    font-size: small;
    color: #1c7430;
    font-family: cursive;
}



</style>
<head>
    <title> IkebanaERP</title>
    <link rel="stylesheet"  href ="index.css"/>
</head>
<script type="text/javascript" src="ValidarFormulario.js"></script>
<body background="${resource(dir:'images', file:'helicoptero.png')}">
<body>

<img src="${resource(dir:'images', file:'iKEBANA.png')}"  class="logo" alt="Ikebana" title="Logo"/>
<h1 class="izquierda">Get started</h1>


<fieldset>
<g:form action = "sigin" >
    <p>
        <label class="fuenteCursiva" id="texto"  style="display:none">Nombre y Apellido</label>
        <!--g:field type="text" placeholder="Nombre y Apellido"  name="nombre"/--><br>
        <g:field   id="nomyAp" class="input_sub_largo" type="text" placeholder="Nombre y Apellido"  name="nombre" onclick="elementoVisible('texto')" required ="true" />
        <br><br>
        <!--input2 type="text" class="InputSinBordes" value= "Nombre y apellido"-->
    </p>
    <label class="fuenteCursiva" id="texto2" style="display:none">Email</label><br>
    <g:field  class ="input_sub_largo" type="email" placeholder="Email"  name="email" onclick="elementoVisible('texto2')" required = "true" />

    <br><br>

    <p>
        <label class="fuenteCursiva" id="texto3" style="display:none">Nombre de la empresa</label><br>
        <g:field  class ="input_sub_corto" type="text" placeholder="Nombre de la empresa" name="nombreEmpresa" onclick="elementoVisible('texto3')"/>

        <label class="fuenteCursiva" id="texto4"   style="display:none">Telefono</label>
        <g:field align="center" class ="input_sub_corto" type="tel" placeholder="Telefono" name="telefono" onclick="elementoVisible('texto4')"/>
        <br><br><br>
    </p>
    <div class= "zoomTexto" name="Pais">Pais</div>
    <label class="centro" name="Idioma" aling="right">Idioma</label>


    </p>

    <select id="select" name="pais">
        <option value="Argentina" selected>Argentina</option>
        <option value="USA" >Usa</option>
        <option value="UK">UK</option>
    </select>


    <select id="select1" name="idioma">
        <option value="Español" selected>Español</option>
        <option value="Ingles" >Ingles</option>
    </select>


    <p>
        <label> Cantidad de empleados </label>
        <label class="centro"> Interes primario </label>
    </p>

    <select id="select3" name="empleados">
        <option value="<5"> < 5 </option>
        <option value="5-20" selected> 5-20 </option>
        <option value="20-50"> 20-50 </option>
        <option value=">250"> > 250 </option>
    </select>


    <select id="select4" name="rubro">
        <option value="Alimentos">Alimentos</option>
        <option value="IT" selected>IT</option>
    </select>

    </p>
  </fieldset>

    <!-- Imagen de una "i" relacionada a la informacion -->
    <img  class ="pie" src ="https://image.flaticon.com/icons/png/512/108/108153.png" >
    <p class="pie2">Clickeando en EmpezarAhora usted acepta los terminos y condiciones</p>
    <g:submitButton name="submit" class="boton" value="Empezar ahora"/>

</g:form>
</body>

