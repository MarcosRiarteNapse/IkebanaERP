package tpTeoriaLenguaje
import tpTeoriaLenguaje.Item

class SupplierController {

    def index() {
        //def items = Item.findAll([sort: 'sku', order: 'asc'])
        def items = Item.findAll()
        render(view: "index", model: [params: params,items: items])

    }
    def save() {

        Supplier supplierInstance = new Supplier()
        //author:Author.findByName("Dan Brown"))
        supplierInstance.nombre = params.nombre
        supplierInstance.CUIT = params.CUIT
        supplierInstance.direccion = params.direccion
        supplierInstance.email = params.email
        supplierInstance.telefono = params.telefono
        Item item1 = Item.findById(params.item1)
        Item item2 = Item.findById(params.item2)
        Set<Item> itemlist = []
        itemlist.add(item1)
        itemlist.add(item2)
        supplierInstance.itemList = itemlist
        supplierInstance.save(failOnError: true, flush: true)
        render(supplierInstance.CUIT)

    }

}