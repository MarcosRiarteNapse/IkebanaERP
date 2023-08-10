package tpTeoriaLenguaje
import tpTeoriaLenguaje.Item

class ItemController {
        //static scaffolding = true
        def index() {
            render(view: "create")
        }

        def save() {

            def itemInstance = new Item(sku:params.SKU, codigoBarras:params.CodigoDeBarras,precio:params.Precio)
            itemInstance.save flush:true
            render(itemInstance.precio)
        }
}
