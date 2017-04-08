/**
 * KHU/DÃY TRỌ
 */
package com.quanlinhatro

import groovy.transform.ToString

@ToString(includeNames = true)
class Region {

    String name
    String address
    String note
    static belongsTo = [user: User]
    static hasMany = [room: Room, defaultRegion: DefaultRegion, renter: Renter]

    Date dateCreated
    Date lastUpdated

    static constraints = {
        name nullable: false, blank: false
        address nullable: true
        user nullable: false
        room nullable: true
        defaultRegion nullable: true
        renter nullable: true
        note nullable: true
        dateCreated()
    }

    static mapping = {
        table('ql_region')
        note type: 'text'
    }

    static transients = ['defaultTienPhong']

    DefaultRegion getDefaultTienPhong() {
        return this.defaultRegion.find { it.tienphong }
    }
}
