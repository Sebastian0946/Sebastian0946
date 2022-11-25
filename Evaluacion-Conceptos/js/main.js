
//Creamos Funcion de abrir caja
function generarRegistro(){
    //creamos las variables necesarias
    var Nombre = document.getElementById('Nombre_Cliente').value;
    var ValorBruto = document.getElementById('Valor_factura').value;
    var Html = "";
    var ValorNeto = 0;
    var valorBrutoRe = 0;
    var iva = 0.19;


    if(ValorBruto < 0){
        alert('Solo numeros mayores a 0')
        document.getElementById('Valor_factura').value = "";
    }else{

        valorBrutoRe = ValorBruto * iva;
        ValorNeto = parseInt(ValorBruto) + parseInt(valorBrutoRe);

        Html = `
        <thead>
            <tr>
                <th scope="col">Cliente</th>
                <th scope="col">Nombre</th>
                <th scope="col">Valor Venta</th>    
                <th scope="col">Descuento</th>
                <th scope="col">Valor Neto</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row">1</th>
                <td>`+Nombre+`</td>
                <td>`+ValorBruto+`</td>
                <td>0</td>
                <td>`+ValorNeto+`</td>
            </tr>
        </tbody>
    `
    document.getElementById('generarCaja').innerHTML = Html;

    }
}