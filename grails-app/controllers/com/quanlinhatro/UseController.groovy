package com.quanlinhatro

import org.springframework.security.access.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UseController extends BaseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Use.list(params), model:[useInstanceCount: Use.count()]
    }

    def show(Use useInstance) {
        respond useInstance
    }

    def create() {
        println("create")
        respond new Use(params)
    }

    @Transactional
    def save(Use useInstance) {
        if (useInstance == null) {
            notFound()
            return
        }

        if (useInstance.hasErrors()) {
            respond useInstance.errors, view:'create'
            return
        }

        useInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'use.label', default: 'Use'), useInstance.id])
                redirect useInstance
            }
            '*' { respond useInstance, [status: CREATED] }
        }
    }

    def edit(Use useInstance) {
        respond useInstance
    }

    @Transactional
    def update(Use useInstance) {
        if (useInstance == null) {
            notFound()
            return
        }

        if (useInstance.hasErrors()) {
            respond useInstance.errors, view:'edit'
            return
        }

        useInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Use.label', default: 'Use'), useInstance.id])
                redirect useInstance
            }
            '*'{ respond useInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Use useInstance) {

        if (useInstance == null) {
            notFound()
            return
        }

        useInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Use.label', default: 'Use'), useInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'use.label', default: 'Use'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
