package tpTeoriaLenguaje

class Supplier {

    static constraints = {
    }
    //private def id  //Integer
    String nombre
    String CUIT
    String direccion
    String email
    String telefono
    Set<Item> itemList

    static hasMany = ['itemList': Item]

    //static transients = ['password']

    //static mapping = {table "pa_ct"
    //id column: "id_ct"}

    static mapping = {
        //collection "Supplier"
    }
}




