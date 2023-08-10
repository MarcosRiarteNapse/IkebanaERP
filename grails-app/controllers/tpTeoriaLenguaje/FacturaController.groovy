package tpTeoriaLenguaje
import tpTeoriaLenguaje.Supplier

class FacturaController {

    def index() {
       redirect(action:"create")
    }
    def create(){
        def suppliers = Supplier.findAll()
        def items = Item.findAll()
        render (view:"create", model: [params: params,items: items,suppliers:suppliers]) }

    def find(){
        def suppliers = Supplier.findAll()
        render(view: "find", model: [params: params,suppliers: suppliers])}

    def save(){
        def itemList =[]
        Supplier proveedor = Supplier.findById(params.proveedor)
        itemList << Item.findById(params.item1 )<< Item.findById(params.item2) // << params.item3
        def facturaInstance = new Factura(supplier: proveedor, numero:params.numeroFactura,itemList: itemList)
        facturaInstance.save(failOnError: true, flush: true)
        render(facturaInstance)
    }

    def search(){
        Factura factura = Factura.findByNumero(params.nroFactura)
        if (factura){
            render(view: "search", model: [params: params,factura: factura])
        }
        else{
            Supplier supplier = Supplier.findByNombre(params.proveedor)
            Factura facturaProveedor = Factura.findBySupplier(supplier)
            if (facturaProveedor){
                render(view: "search", model: [params: params,factura: facturaProveedor])
            }
            else {render ("No existe la factura con ese numero o proveedor")}
        }

    }
}
