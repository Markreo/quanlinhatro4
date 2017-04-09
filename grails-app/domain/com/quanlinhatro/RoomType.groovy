package com.quanlinhatro

class RoomType {

    String name
    static belongsTo = [region: Region]

    Date dateCreated
    Date lastUpdated

    static constraints = {
        name nullable: false, blank: false
        region nullable: false
    }

    static mapping = {
        sort "name"
        version(false)
        table('ql_room_type')
    }
}
