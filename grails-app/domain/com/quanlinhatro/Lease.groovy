package com.quanlinhatro

import groovy.transform.ToString

@ToString(includeNames = true)
class Lease {

    String name
    String note

    Date toDate
    Date fromDate


    Room room //cho thuê phòng nào
    static hasMany = [renter: Renter, //cho những ai thuê
                      detail: Detail] //cho thuê những gì


    Date dateCreated
    Date lastUpdated

    static constraints = {
        name nullable: false
        note nullable: true
        toDate nullable: false
        fromDate nullable: false

        room nullable: false
        renter nullable: false
        detail nullable: false
        dateCreated()
    }

    static mapping = {
        note type: 'text'
        table('ql_lease')
    }

}
