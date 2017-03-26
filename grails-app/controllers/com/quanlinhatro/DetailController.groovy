package com.quanlinhatro



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DetailController extends BaseController{

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Detail.list(params), model:[detailInstanceCount: Detail.count()]
    }

    def show(Detail detailInstance) {
        respond detailInstance
    }

    def create() {
        respond new Detail(params)
    }

    @Transactional
    def save(Detail detailInstance) {
        if (detailInstance == null) {
            notFound()
            return
        }

        if (detailInstance.hasErrors()) {
            respond detailInstance.errors, view:'create'
            return
        }

        detailInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'detail.label', default: 'Detail'), detailInstance.id])
                redirect detailInstance
            }
            '*' { respond detailInstance, [status: CREATED] }
        }
    }

    def edit(Detail detailInstance) {
        respond detailInstance
    }

    @Transactional
    def update(Detail detailInstance) {
        if (detailInstance == null) {
            notFound()
            return
        }

        if (detailInstance.hasErrors()) {
            respond detailInstance.errors, view:'edit'
            return
        }

        detailInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Detail.label', default: 'Detail'), detailInstance.id])
                redirect detailInstance
            }
            '*'{ respond detailInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Detail detailInstance) {

        if (detailInstance == null) {
            notFound()
            return
        }

        detailInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Detail.label', default: 'Detail'), detailInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'detail.label', default: 'Detail'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
