import com.quanlinhatro.Lease
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_lease_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/lease/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: leaseInstance, field: 'name', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("lease.name.label"),'default':("Name")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("name"),'required':(""),'value':(leaseInstance?.name)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: leaseInstance, field: 'note', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("lease.note.label"),'default':("Note")],-1)
printHtmlPart(5)
invokeTag('textField','g',19,['name':("note"),'value':(leaseInstance?.note)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: leaseInstance, field: 'toDate', 'error'))
printHtmlPart(6)
invokeTag('message','g',25,['code':("lease.toDate.label"),'default':("To Date")],-1)
printHtmlPart(2)
invokeTag('datePicker','g',28,['name':("toDate"),'precision':("day"),'value':(leaseInstance?.toDate)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: leaseInstance, field: 'fromDate', 'error'))
printHtmlPart(7)
invokeTag('message','g',34,['code':("lease.fromDate.label"),'default':("From Date")],-1)
printHtmlPart(2)
invokeTag('datePicker','g',37,['name':("fromDate"),'precision':("day"),'value':(leaseInstance?.fromDate)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: leaseInstance, field: 'room', 'error'))
printHtmlPart(8)
invokeTag('message','g',43,['code':("lease.room.label"),'default':("Room")],-1)
printHtmlPart(2)
invokeTag('select','g',46,['id':("room"),'name':("room.id"),'from':(com.quanlinhatro.Room.list()),'optionKey':("id"),'required':(""),'value':(leaseInstance?.room?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: leaseInstance, field: 'renter', 'error'))
printHtmlPart(9)
invokeTag('message','g',52,['code':("lease.renter.label"),'default':("Renter")],-1)
printHtmlPart(2)
invokeTag('select','g',55,['name':("renter"),'from':(com.quanlinhatro.Renter.list()),'multiple':("multiple"),'optionKey':("id"),'size':("5"),'required':(""),'value':(leaseInstance?.renter*.id),'class':("many-to-many")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: leaseInstance, field: 'detail', 'error'))
printHtmlPart(10)
invokeTag('message','g',61,['code':("lease.detail.label"),'default':("Detail")],-1)
printHtmlPart(11)
for( d in (leaseInstance?.detail) ) {
printHtmlPart(12)
createTagBody(2, {->
expressionOut.print(d?.encodeAsHTML())
})
invokeTag('link','g',67,['controller':("detail"),'action':("show"),'id':(d.id)],2)
printHtmlPart(13)
}
printHtmlPart(14)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'detail.label', default: 'Detail')]))
})
invokeTag('link','g',70,['controller':("detail"),'action':("create"),'params':(['lease.id': leaseInstance?.id])],1)
printHtmlPart(15)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1491812384000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
