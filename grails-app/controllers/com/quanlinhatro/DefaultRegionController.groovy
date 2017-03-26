package com.quanlinhatro

class DefaultRegionController extends BaseController {

    def index() { }

    def create() {
        def realy = params.getList("realy[]")
        render(template: 'create', model: [left: ['tiendien','tiennuoc', 'tienphong'] - realy])
    }

    def lineNew() {
        def defaultInstance = new DefaultRegion(params.get('default'))
        println(defaultInstance)
        render(template: 'line_special', model: [special: params.type, df: defaultInstance])
    }
}
