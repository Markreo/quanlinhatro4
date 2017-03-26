package com.quanlinhatro

import groovy.transform.ToString

@ToString(includeNames = true)
class Detail {


    String name //cho thuê gì
    long value //số lượng bao nhiêu
    long price //đơn giá

    static belongsTo = [lease: Lease]

    Date dateCreated
    Date lastUpdated

    static constraints = {
        name nullable: false
        lease nullable: false
        value nullable: true
        price nullable: true
        dateCreated()
    }


    static transients = ['total']

    long getTotal() {
        return value * price
    }

    static mapping = {
        table('ql_detail')
    }
}
