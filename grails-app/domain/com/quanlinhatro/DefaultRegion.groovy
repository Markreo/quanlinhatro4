package com.quanlinhatro

import groovy.transform.ToString

@ToString(includeNames = true)
class DefaultRegion {

    String name
    Unit unit = Unit.TIME
    long currentValue = 0//removes
    long currentPrice


    boolean tiendien = false
    boolean tiennuoc = false
    boolean tienphong = false

    Date dateCreated
    Date lastUpdated


    static constraints = {
        unit nullable: false
        currentValue nullable: true
        currentPrice nullable: false
        tiendien nullable: false
        tiennuoc nullable: false
        tienphong nullable: false
        dateCreated()
    }

    static mapping = {
        table('ql_default')
    }
}
