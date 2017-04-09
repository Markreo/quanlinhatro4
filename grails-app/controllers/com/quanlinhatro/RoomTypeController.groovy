package com.quanlinhatro

class RoomTypeController extends BaseController{

    def index() {
        redirect(action: 'list')
    }

    def list() {
        def types = user.currentRegion.roomType.sort{it.name}
        render(view: 'list', model: [types: types])
    }
    def create() {
        render(template: 'edit', model: [type: new RoomType()])
    }

    def edit(long id) {
        def type = RoomType.get(id)
        if(type) {
            render(template: 'edit', model: [type: type])
        } else {
            render(view: '/notFound')
        }
    }

    def save(long id) {
        def typeInstance = id ? RoomType.get(id) : new RoomType(region: user.currentRegion, name: params.name)
        if(id) {
            typeInstance.name = params.name
        }
        if(typeInstance.hasErrors() || !typeInstance.save(flush: true)) {
            println('err - save room type: ' + typeInstance.errors)
        } else {
            if(!id) {
                user.currentRegion.defaultRegion.each {df->
                    def recommend = RecommendPrice.findOrCreateByDefaultRegionAndRoomType(df, typeInstance)
                    recommend.price = df.currentPrice
                    recommend.save(flush: true)
                }
            }
            flash.message = "Đã " + (id ? 'cập nhật!' : 'lưu!')
            return redirect(action: 'list')
        }
    }


    def delete(long id) {
        def type = RoomType.get(id)
        if(type) {
            RecommendPrice.executeUpdate("delete from RecommendPrice r where r.roomType =:type", [type: type])
            type.delete(flush: true)
            flash.warn = "Đã xóa 1 loại phòng!"
            redirect(action:'list')
        } else  {
            render(view: '/notFound')
        }
    }
}
