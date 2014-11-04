package com.pasal

class DashBoardController {

    def index() {
        println "params = $params"
        render view: '../index'
    }
}
