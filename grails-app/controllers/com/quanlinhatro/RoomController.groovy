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
        render(template: 'formCreate', model: [ng: df != 0, region: user.currentRegion])
    }

    def formCreateMore() {
        def room = new Room(params.get("room"))
        def df = DefaultRegion.countByRegionAndUnitAndTienphong(user.currentRegion, Unit.NG, true)
        render(view: 'formCreateMore', model: [room: room, ng: df != 0, region: user.currentRegion])
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

    def saveMore() {
        def room = new Room(params.get("room"))
        room.region = user.currentRegion



        if(room.hasErrors() || !room.save(flush: true)) {
            println "errr- " + room.errors
        }

        try {
            def names = params.getList('default.name')
            def prices = params.getList('default.currentPrice')
            def specials = params.getList('special')
            println specials
            def units = params.getList('default.unit')
            names.eachWithIndex { String name, int i ->
                if ((prices[i] as long) > 0) {
                    def use = new Use(room: room, name: names[i], currentPrice: prices[i] as long, unit: Unit.valueOf(units[i]))
                    use.tiendien = (specials[i] == 'tiendien')
                    use.tienphong = (specials[i] == 'tienphong')
                    use.tiennuoc = (specials[i] == 'tiennuoc')
                    if (use.hasErrors() || !use.save(flush: true)) {
                        println('cannot save use')
                    }
                }
            }
        } catch (Exception ex) {}

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

    def addToRenter(long id) {
        def room = Room.get(id)
        println(room)
        if(room) {
            def renter = Renter.get(params.renterId as long)
            println(renter)
            println(renter && !(renter in room.renter))
            if(renter) {
                renter()
            }
        }
        return render('false')

    }
}
