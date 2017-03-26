package com.quanlinhatro

import org.springframework.security.access.annotation.Secured


@Secured('IS_AUTHENTICATED_FULLY')
class BaseController {
    def springSecurityService
    User user

    def beforeInterceptor = [action: this.&baseBefore, except: 'createFirstRegion']

    def baseBefore() {
        println("${request.xhr ? 'AJAX' : ''} ${request.method} ${controllerName}.${actionName} --- params:${params}")
        user = springSecurityService.currentUser as User
        if(controllerName == 'defaultRegion' & actionName == 'create') {
            return true
        }
        if(controllerName == 'defaultRegion' & actionName == 'lineNew') {
            return true
        }
        if(user) {
            session.user = user
            println(user)
            if(!user.currenRegion) {
                redirect(action: 'createFirstRegion')
                return false
            }
        }
    }

    def createFirstRegion() {
        render(view: '/base/createFirstRegion', model: [user: springSecurityService.currentUser as User])
    }
}
