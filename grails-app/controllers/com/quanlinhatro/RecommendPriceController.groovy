package com.quanlinhatro

class RecommendPriceController extends BaseController {

    def index() { }

    def save() {
        def ids = params.getList('id')
        def prices = params.getList('price')
        ids.eachWithIndex{ def id, int i ->
            def recommend = RecommendPrice.get(id as long)
            if(recommend) {
                recommend.price = prices[i] as long
                recommend.save(flush: true)
            }
        }

        flash.message = "Cập nhật ${"\'" + RoomType.get(params.getLong('typeId'))?.name + "\'"} thành công!"
        redirect(controller: 'roomType', action: 'list')
    }

    def getPriceCommend() {
        def commend = RecommendPrice.findByRoomTypeAndDefaultRegion(RoomType.get(params.getLong('roomType')), DefaultRegion.get(params.getLong('df')))
        if(commend) {
            return render(commend.price)
        } else {
            return render('false')
        }
    }

}
