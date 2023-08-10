package tpTeoriaLenguaje

class Item {

    static constraints = {
        //SKU nullable: false, unique: true
        //highestEducationLevelName nullable: true, size: 0..100
        //lifeCycleType nullable: true, size: 0..50
    }

    String sku
    String codigoBarras
    Integer precio


        //static transients = ['password']

        static mapping = {
            table "Item"
            sku column: "SKU"
            codigoBarras column: " CODIGOBARRAS"
            precio column: "PRECIO"

        }

}
