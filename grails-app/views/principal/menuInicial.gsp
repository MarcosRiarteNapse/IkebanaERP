<%--
  Created by IntelliJ IDEA.
  User: marcos
  Date: 9/7/23
  Time: 10:41
--%>
<!DOCTYPE html>
<html lang="en">
<style>

.glass {
    background-image: radial-gradient(circle closest-side, rgba(38,38,38,0.2), rgba(0,0,0,0.63));
    background-size: 100% 100%;
    border-radius: 50%;
    position: relative;
}
.glass::before {
    position: absolute;
    width: 56%;
    height: 26%;
    top: 4%;
    left: 22%;
    border-radius: 50%;
    background-image: linear-gradient(to bottom, rgba(207,207,207,0.23), rgba(30,30,30,0.06));
    content: '';
}
.glass::after {
    position: absolute;
    width: 38%;
    height: 19%;
    bottom: 3%;
    left: 31%;
    border-radius: 50%;
    background-image: linear-gradient(to bottom, rgba(93,93,93,0.1), rgba(0,0,0,0.18));
    content: '';
}
.flower {
    width: 120px;
    height: 120px;
    border-radius: 50%;
    cursor: pointer;
    position: relative;
}
.flower .spinner,
.flower .inner,
.flower .counterspin {
    height: 100%;
}
.flower .spinner {
    -webkit-animation: spin 45s infinite linear;
    animation: spin 45s infinite linear;
}
.flower .counterspin {
    -webkit-animation: counter-spin 45s infinite linear;
    animation: counter-spin 45s infinite linear;
}
.flower .cover {
    width: 120px;
    height: 120px;
    /*url("https://thumbs.dreamstime.com/z/rojo-digital-del-icono-carro-de-la-compra-101800631.jpg");*/
    background-image: url("${resource(dir:'images', file:'iKEBANA.png')}");
    background-size: 100%;
    border-radius: 50%;
    box-shadow: 0 0 2px 4px #d1d1d1, 0 0 20px 4px #000;
    position: absolute;
    top: 0;
}
.flower a {
    display: block;
}
.flower .child {
    width: 120px;
    height: 120px;
    border-radius: 50%;
    position: absolute;
    top: 0;
}
.flower .child .leaf {
    height: 100%;
    border-radius: 50%;
    visibility: hidden;
    transition: transform 3.2s ease-in-out;
}
.flower .child .leaf img {
    width: 64px;
    height: 64px;
    left: 28px;
    top: 28px;
    position: absolute;
    border: none;
}
.flower .child:nth-child(1) {
    transform: rotate(-90deg);
}
.flower .child:nth-child(1) .leaf {
    background-color: #3535e0;
    background-size: 100%;
    opacity: 0.94;
    transition: transform 3.2s ease-in-out, box-shadow 0.16s ease-in-out, visibility 3.2s linear;
}
.flower .child:nth-child(1) .leaf .glass-holder {
    height: 100%;
    transform: rotate(90deg);
}
.flower .child:nth-child(2) {
    transform: rotate(-18deg);
}
.flower .child:nth-child(2) .leaf {
    background-color: #f00;
    background-size: 100%;
    opacity: 0.94;
    transition: transform 3.2s ease-in-out, box-shadow 0.16s ease-in-out, visibility 3.2s linear;
}
.flower .child:nth-child(2) .leaf .glass-holder {
    height: 100%;
    transform: rotate(18deg);
}
.flower .child:nth-child(3) {
    transform: rotate(54deg);
}
.flower .child:nth-child(3) .leaf {
    background-color: #00bd00;
    background-size: 100%;
    opacity: 0.94;
    transition: transform 3.2s ease-in-out, box-shadow 0.16s ease-in-out, visibility 3.2s linear;
}
.flower .child:nth-child(3) .leaf .glass-holder {
    height: 100%;
    transform: rotate(-54deg);
}
.flower .child:nth-child(4) {
    transform: rotate(126deg);
}
.flower .child:nth-child(4) .leaf {
    background-color: #ff0;
    background-size: 100%;
    opacity: 0.94;
    transition: transform 3.2s ease-in-out, box-shadow 0.16s ease-in-out, visibility 3.2s linear;
}
.flower .child:nth-child(4) .leaf .glass-holder {
    height: 100%;
    transform: rotate(-126deg);
}
.flower .child:nth-child(5) {
    transform: rotate(198deg);
}
.flower .child:nth-child(5) .leaf {
    background-color: #ebe8e8;
    background-size: 100%;
    opacity: 0.94;
    transition: transform 3.2s ease-in-out, box-shadow 0.16s ease-in-out, visibility 3.2s linear;
}
.flower .child:nth-child(5) .leaf .glass-holder {
    height: 100%;
    transform: rotate(-198deg);
}
.flower .glass {
    height: 100%;
    transition: transform 3.2s ease-in-out;
}
.flower:hover {
    transform: scale(3.4);
}
.flower:hover .inner {
    transform: scale(0.294117647058824);
}
.flower:hover .leaf {
    visibility: visible;
    transform: rotate(720deg) translateX(144px) rotate(2250deg);
}
.flower:hover .leaf:hover {
    box-shadow: 0 0 34px #d3d9ff, 0 0 0 1px #000, inset 0 1px 0 rgba(255,255,255,0.2);
}
.flower:hover .leaf .glass {
    transform: rotate(-2970deg);
}
html {
    height: 100%;
    overflow: hidden;
}
body {
    background-color: #02102c;
    background-image: linear-gradient(135deg, #000080 10%, #000 90%);
    background-size: cover;
    overflow: visible;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100%;
}
a {
    outline: 0;
}
#title {
    color: #ddd;
    font-size: 18px;
    position: fixed;
    bottom: 10px;
    left: 14px;
}
@-webkit-keyframes spin {
    to {
        transform: rotate(1turn);
    }
}
@keyframes spin {
    to {
        transform: rotate(1turn);
    }
}
@-webkit-keyframes counter-spin {
    to {
        transform: rotate(-1turn);
    }
}
@keyframes counter-spin {
    to {
        transform: rotate(-1turn);
    }
}

</style>
<head>
    <meta charset="UTF-8">
    <link rel="STYLESHEET" type="text/css" href="./menuFlower.css"/>
    <title>Menu Inicial</title>
</head>
<body>

</body>
<div id="title">Elija una opción al pasar el mouse </div>
<div class="flower">
    <div class="inner">
        <div class="spinner"> 
            <div class="child"><a class="leaf" href="${createLink(controller:'item', action:'index')}" target="_blank"><img src="${resource(dir:'images', file:'ventas2.png')}"   alt="Ventas" title="Ventas"/>
                <div class="glass-holder">
                    <div class="counterspin">
                        <div class="glass"></div>
                    </div>
                </div></a></div>
            <div class="child"><a class="leaf" href="${createLink(controller:'supplier', action:'index')}" target="_blank"><img src="${resource(dir:'images', file:'compras.png')}"   alt="ordenDeCompras" title="ordenDeCompras"/>
                <div class="glass-holder">
                    <div class="counterspin">
                        <div class="glass"></div>
                    </div>
                </div></a></div>
            <div class="child"><a class="leaf" href="${createLink(controller:'factura', action:'create')}"target="_blank"><img src="${resource(dir:'images', file:'iotCloud.png')}" alt="EnergiaSolar" title="EnergiaSolar"/>
                <div class="glass-holder">
                    <div class="counterspin">
                        <div class="glass"></div>
                    </div>
                </div></a></div>
            <div class="child"><a class="leaf" href="https://www.fi.uba.ar" target="_blank"><img src="${resource(dir:'images', file:'analitycs.png')}" alt="ANALITYCS" title="ANALITYCS"/>
                <div class="glass-holder">
                    <div class="counterspin">
                        <div class="glass"></div>
                    </div>
                </div></a></div>
            <div class="child"><a class="leaf" href="${createLink(controller:'factura', action:'find')} "target="_blank"><img src="${resource(dir:'images', file:'supplyChain.png')}" alt="SupplyChain" title="SupplyChain"/>
                <div class="glass-holder">
                    <div class="counterspin">
                        <div class="glass"></div>
                    </div>
                </div></a></div>
        </div>
        <div class="cover"></div>
    </div>
</div>
</html>

