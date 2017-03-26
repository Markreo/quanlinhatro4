package com.quanlinhatro



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LeaseController extends BaseController{

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Lease.list(params), model:[leaseInstanceCount: Lease.count()]
    }

    def show(Lease leaseInstance) {
        respond leaseInstance
    }

    def create() {
        respond new Lease(params)
    }

    @Transactional
    def save(Lease leaseInstance) {
        if (leaseInstance == null) {
            notFound()
            return
        }

        if (leaseInstance.hasErrors()) {
            respond leaseInstance.errors, view:'create'
            return
        }

        leaseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'lease.label', default: 'Lease'), leaseInstance.id])
                redirect leaseInstance
            }
            '*' { respond leaseInstance, [status: CREATED] }
        }
    }

    def edit(Lease leaseInstance) {
        respond leaseInstance
    }

    @Transactional
    def update(Lease leaseInstance) {
        if (leaseInstance == null) {
            notFound()
            return
        }

        if (leaseInstance.hasErrors()) {
            respond leaseInstance.errors, view:'edit'
            return
        }

        leaseInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Lease.label', default: 'Lease'), leaseInstance.id])
                redirect leaseInstance
            }
            '*'{ respond leaseInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Lease leaseInstance) {

        if (leaseInstance == null) {
            notFound()
            return
        }

        leaseInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Lease.label', default: 'Lease'), leaseInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'lease.label', default: 'Lease'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
