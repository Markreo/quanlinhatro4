package com.quanlinhatro


class Use {
    String name
    Unit unit = Unit.TIME
    long currentValue = 0
    long currentPrice


    boolean tiendien = false
    boolean tiennuoc = false
    boolean tienphong = false

    Date dateCreated
    Date lastUpdated

    static belongsTo = [room: Room]


    static constraints = {
        unit nullable: false
        currentValue nullable: true
        currentPrice nullable: false
        tiendien nullable: false
        tiennuoc nullable: false
        tienphong nullable: false
        room nullable: false
        dateCreated()
    }

    static mapping = {
        table('ql_use')
    }
}
