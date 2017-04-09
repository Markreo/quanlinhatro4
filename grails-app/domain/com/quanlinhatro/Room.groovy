/**
 * PHÒNG TRỌ
 */
package com.quanlinhatro

import groovy.transform.ToString

@ToString(includeNames = true)
class Room{
    enum Status {
        TRONG(0, "Đang trống", "Cho thuê"),
        DATCOC(1, "Đã đặt cọc", "Cập nhật"),
        DANGTHUE(2, "Đang cho thuê", "Cập nhật"),
        DANGSUA(3, "Đang sửa chữa", "Xong"),
        HONG(4, "Đã hỏng", "Hủy")

        int id
        String name
        String action
        Status(id, name, action) {this.id =  id; this.name = name; this.action = action}
    }

    String name
    Status status = Status.TRONG
    String note
    static belongsTo = [region: Region]
    static hasMany = [renter: Renter,
                      lease: Lease,
                      use: Use]

    long price //to service//
    long amount = 0

    RoomType type

    int dueDate = 0 //day of month
    int maxRenter

    Date dateCreated
    Date lastUpdated

    static constraints = {
        name nullable: false, unique: ['region']
        status nullable: false
        region nullable: false
        renter nullable: true
        lease nullable: true
        amount nullable: true
        price nullable: false //to service
        maxRenter nullable: true
        dueDate nullable: false
        note  nullable: true
        type nullable: true
        dateCreated()
    }

    static mapping = {
        table('ql_room')
        renter joinTable: [name: 'ql_renter',
                           key:'room_id']
    }

    static transients = ['getName', 'setName', 'getUsePhong', 'getUseDien', 'getUseNuoc']

    def setName(String name) {
        name = name.replace('Phòng', '')
        name = name.replace('phòng', '')
        name = name.replace('phong', '')
        this.name = name.trim()
    }

    String getName() {
        return 'Phòng ' + this.name
    }

    Use getUsePhong() {

    }

    Use getUseDien() {

    }

    Use getUseNuoc() {

    }
}
