package com.pasal

class DashBoardController {


    def index() {
        //Map map = new Map()
        //map.put('caller', 'dash')
        render view: '/index', model:[caller:"dash"]
    }
}
