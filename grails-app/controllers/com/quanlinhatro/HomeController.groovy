package com.quanlinhatro

import grails.converters.JSON
import org.springframework.security.access.annotation.Secured

import static java.util.Calendar.DATE

class HomeController extends BaseController {

    def index() {
        println("indexs")
    }

    def saveFirstRegion() {
        println "save first region"
    }
}
