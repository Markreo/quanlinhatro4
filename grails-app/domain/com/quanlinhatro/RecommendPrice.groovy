package com.quanlinhatro

import groovy.transform.ToString

@ToString(includeNames = true)
class RecommendPrice { //đưa ra những giá đề nghị cho phòng

    DefaultRegion defaultRegion
    RoomType roomType
    long price

    static constraints = {
        defaultRegion nullable: false
        roomType nullable: false
        price nullable: false
    }

    static mapping = {
        version(false)
        table('ql_remomend_type')
    }
}
