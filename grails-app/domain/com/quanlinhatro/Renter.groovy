/**
 * KHÁCH THUÊ TRỌ
 */
package com.quanlinhatro

import groovy.transform.ToString

@ToString(includeNames = true)
class Renter {
    enum Sex{
        MALE(0, 'Nam'),
        FEMALE(1, 'Nữ')
        int id
        String name
        Sex(id, name) {this.id = id; this.name = name}
    }

    String firstName
    String lastName
    Sex sex = Sex.MALE
    String phone
    String userID
    String placeOfBirth
    int yearOfBirth

    static belongsTo = [region: Region]

    Date dateCreated
    Date lastUpdated

    static constraints = {
        firstName nullable: false
        lastName nullable: true
        sex nullable: false
        phone nullable: false
        userID nullable: true
        placeOfBirth nullable: true
        yearOfBirth nullable: true

        region nullable: false
        dateCreated()
    }

    static mapping = {
        table('ql_renter')
    }

    static transients = ['fullname']

    String getFullname() {
        return lastName + " " + firstName
    }
}
