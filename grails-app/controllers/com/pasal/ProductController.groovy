package com.pasal

class ProductController {

    def index() {
        render view: 'create', model: [caller:'product']
    }

    def create() {
        println "Product new."
        println "params = $params"
    }
}
