package com.quanlinhatro
/**
 * Created by giapn on 3/24/2017.
 */
//cái, máy
enum Unit {
    TIME(0, "Lần"),
    M3(1, "Mét khối"),
    KG(2, "Kilogram"),
    H(3, "Giờ"),
    NG(4, "Người"),
    PHONG(5, "Phòng"),
    CHIEC(6, "Chiếc"),
    CAI(7, "Cái"),
    MAY(8, "Máy")

    int id
    String name

    Unit(id, name){this.id = id; this.name = name}
}