package com.quanlinhatro

import groovy.transform.ToString

@ToString(includeNames = true)
class DefaultRegion {

    String name
    Unit unit = Unit.TIME
    long currentPrice


    boolean tiendien = false
    boolean tiennuoc = false
    boolean tienphong = false

    Date dateCreated
    Date lastUpdated

    static belongsTo = [region: Region]


    static constraints = {
        unit nullable: false
        currentPrice nullable: false
        tiendien nullable: false
        tiennuoc nullable: false
        tienphong nullable: false
        region nullable: false
        dateCreated()
    }

    static mapping = {
        table('ql_default')
    }

    Use parseToUse(long currentValue = 0){
        return new Use(name: this.name, unit: this.unit,
                currentPrice: this.currentPrice, currentValue: currentValue,
                tiendien: this.tiendien, tienphong: this.tienphong, tiennuoc: this.tiennuoc)
    }

    static transients = ['recommend']

    long getRecommend(RoomType type) {
        return RecommendPrice.findByDefaultRegionAndRoomType(this, type).price ?: 0
    }
}
