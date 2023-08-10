package tpTeoriaLenguaje

class PrincipalController {

    def index() {
       redirect( action: "singin")
    }
    def singin() {
        render(view: "login")
    }
    def main() {
        render(view: "menuInicial")
    }

}