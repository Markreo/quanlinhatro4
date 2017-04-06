package com.quanlinhatro



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RenterController extends BaseController {

    static allowedMethods = [save: "POST", update: "PUT"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Renter.list(params), model:[renterInstanceCount: Renter.count()]
    }

    def show(Renter renterInstance) {
        respond renterInstance
    }

    def create() {
        respond new Renter(params)
    }

    @Transactional
    def save(Renter renterInstance) {
        println('params: ' + params)
        if (renterInstance == null) {
            notFound()
            return
        }

        renterInstance.region = user.currentRegion

        renterInstance.validate()
        if (renterInstance.hasErrors()) {
            respond renterInstance.errors, view:'create'
            return
        }

        renterInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'renter.label', default: 'Renter'), renterInstance.id])
                redirect renterInstance
            }
            '*' { respond renterInstance, [status: CREATED] }
        }
    }

    def edit(Renter renterInstance) {
        render(template: 'edit', model: [renterInstance: renterInstance])
    }

    @Transactional
    def update(Renter renterInstance) {
        if (renterInstance == null) {
            notFound()
            return
        }

        if (renterInstance.hasErrors()) {
            respond renterInstance.errors, view:'edit'
            return
        }

        renterInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = 'Thông tin đã được cập nhật!'
                redirect renterInstance
            }
            '*'{ respond renterInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Renter renterInstance) {

        if (renterInstance == null) {
            notFound()
            return
        }

        renterInstance.delete flush:true
        flash.message = "Đã xóa 1 khách thuê"
        redirect action:"index", method:"GET"
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'renter.label', default: 'Renter'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
