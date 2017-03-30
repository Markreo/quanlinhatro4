package com.quanlinhatro

class RoomController extends BaseController{

    def index() {
        render(view: 'list', model: [rooms: Room.findAllByRegion(user.currentRegion)])
    }

    def edit() {
        render(view: 'edit')
    }

    def formCreate() {
        def df = DefaultRegion.countByRegionAndUnitAndTienphong(user.currentRegion, Unit.NG, true)
        render(template: 'formCreate', model: [ng: df != 0])
    }

    def save() {
        def room = new Room(params.get("room"))
        room.region = user.currentRegion



        if(room.hasErrors() || !room.save(flush: true)) {
            println "errr- " + room.errors
        }

        DefaultRegion.findAllByRegion(user.currentRegion).each { df->
            room.addToUse(df.parseToUse())
        }

        if(room.hasErrors() || !room.save(flush: true))
        {
            println ('err save use :' + room.errors)
        }

        redirect(action: 'show', model: [id: room.id])
    }

    def update(long id) {
     //to save
    }

    def show(long id) {
        def room = Room.get(id)
        if(room) {
            render(view: 'show', model: [room: room])
        } else {
            response.status = 404
            render(view: '/notFound')
        }

    }
}
