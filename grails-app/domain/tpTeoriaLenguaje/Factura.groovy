package tpTeoriaLenguaje

class Factura {

    static constraints = {
        //party nullable: false, unique: true
        //highestEducationLevelName nullable: true, size: 0..100
        //lifeCycleType nullable: true, size: 0..50
    }

    Supplier supplier
    Set<Item> itemList
    Integer numero

    static hasMany = ['itemList': Item]
    //private Usuario usuario

    //static transients = ['password']

    //static mapping = {table "pa_ct"
    //id column: "id_ct"}

}

