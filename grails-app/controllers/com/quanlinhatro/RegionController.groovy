package com.quanlinhatro

class RegionController extends BaseController {

    def index() {
        redirect(action: 'list')
    }

    def list() {
        render(view: 'list', mode: [regions: user.region])
    }

    def create() {
        render (view: 'edit', model: [region: new Region()])
    }

    def edit(long id) {
        def region = Region.get(id)
        if(region) {
            render(view: 'edit', model: [region: region])
        } else {
            render(view: '/notFound')
        }

    }

    def saveFirstRegion() {
        def region = new Region(params.get('region'))
        region.user = user
        println(region)
        if(region.hasErrors() || !region.save(flush: true)) {
            println('err - ' + region.errors)

        } else {
            user.currentRegion = region
            user.save(flush: true);
            try {
                def names = params.getList('default.name')
                def prices = params.getList('default.currentPrice')
                def specials = params.getList('special')
                println specials
                def units = params.getList('default.unit')
                names.eachWithIndex { String name, int i ->
                    if ((prices[i] as long) > 0) {
                        def defaultRegion = new DefaultRegion(region: region, name: names[i], currentPrice: prices[i] as long, unit: Unit.valueOf(units[i]))
                        defaultRegion.tiendien = (specials[i] == 'tiendien')
                        defaultRegion.tienphong = (specials[i] == 'tienphong')
                        defaultRegion.tiennuoc = (specials[i] == 'tiennuoc')
                        if (defaultRegion.hasErrors() || !defaultRegion.save(flush: true)) {
                            println('cannot save default')
                        }
                    }
                }
            } catch (Exception ex) {}
            redirect(controller: 'home')
        }

}
}
