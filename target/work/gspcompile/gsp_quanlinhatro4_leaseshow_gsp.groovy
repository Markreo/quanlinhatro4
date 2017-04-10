import com.quanlinhatro.Lease
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_leaseshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/lease/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'lease.label', default: 'Lease'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.show.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('message','g',11,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(5)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(6)
invokeTag('message','g',14,['code':("default.home.label")],-1)
printHtmlPart(7)
createTagBody(2, {->
invokeTag('message','g',15,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('link','g',15,['class':("list"),'action':("index")],2)
printHtmlPart(8)
createTagBody(2, {->
invokeTag('message','g',16,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',16,['class':("create"),'action':("create")],2)
printHtmlPart(9)
invokeTag('message','g',20,['code':("default.show.label"),'args':([entityName])],-1)
printHtmlPart(10)
if(true && (flash.message)) {
printHtmlPart(11)
expressionOut.print(flash.message)
printHtmlPart(12)
}
printHtmlPart(13)
if(true && (leaseInstance?.name)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("lease.name.label"),'default':("Name")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',30,['bean':(leaseInstance),'field':("name")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (leaseInstance?.note)) {
printHtmlPart(18)
invokeTag('message','g',37,['code':("lease.note.label"),'default':("Note")],-1)
printHtmlPart(19)
invokeTag('fieldValue','g',39,['bean':(leaseInstance),'field':("note")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (leaseInstance?.toDate)) {
printHtmlPart(20)
invokeTag('message','g',46,['code':("lease.toDate.label"),'default':("To Date")],-1)
printHtmlPart(21)
invokeTag('formatDate','g',48,['date':(leaseInstance?.toDate)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (leaseInstance?.fromDate)) {
printHtmlPart(22)
invokeTag('message','g',55,['code':("lease.fromDate.label"),'default':("From Date")],-1)
printHtmlPart(23)
invokeTag('formatDate','g',57,['date':(leaseInstance?.fromDate)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (leaseInstance?.room)) {
printHtmlPart(24)
invokeTag('message','g',64,['code':("lease.room.label"),'default':("Room")],-1)
printHtmlPart(25)
createTagBody(3, {->
expressionOut.print(leaseInstance?.room?.encodeAsHTML())
})
invokeTag('link','g',66,['controller':("room"),'action':("show"),'id':(leaseInstance?.room?.id)],3)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (leaseInstance?.renter)) {
printHtmlPart(26)
invokeTag('message','g',73,['code':("lease.renter.label"),'default':("Renter")],-1)
printHtmlPart(27)
for( r in (leaseInstance.renter) ) {
printHtmlPart(28)
createTagBody(4, {->
expressionOut.print(r?.encodeAsHTML())
})
invokeTag('link','g',76,['controller':("renter"),'action':("show"),'id':(r.id)],4)
printHtmlPart(29)
}
printHtmlPart(30)
}
printHtmlPart(17)
if(true && (leaseInstance?.detail)) {
printHtmlPart(31)
invokeTag('message','g',84,['code':("lease.detail.label"),'default':("Detail")],-1)
printHtmlPart(27)
for( d in (leaseInstance.detail) ) {
printHtmlPart(32)
createTagBody(4, {->
expressionOut.print(d?.encodeAsHTML())
})
invokeTag('link','g',87,['controller':("detail"),'action':("show"),'id':(d.id)],4)
printHtmlPart(29)
}
printHtmlPart(30)
}
printHtmlPart(17)
if(true && (leaseInstance?.dateCreated)) {
printHtmlPart(33)
invokeTag('message','g',95,['code':("lease.dateCreated.label"),'default':("Date Created")],-1)
printHtmlPart(34)
invokeTag('formatDate','g',97,['date':(leaseInstance?.dateCreated)],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (leaseInstance?.lastUpdated)) {
printHtmlPart(35)
invokeTag('message','g',104,['code':("lease.lastUpdated.label"),'default':("Last Updated")],-1)
printHtmlPart(36)
invokeTag('formatDate','g',106,['date':(leaseInstance?.lastUpdated)],-1)
printHtmlPart(16)
}
printHtmlPart(37)
createTagBody(2, {->
printHtmlPart(38)
createTagBody(3, {->
invokeTag('message','g',114,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',114,['class':("edit"),'action':("edit"),'resource':(leaseInstance)],3)
printHtmlPart(39)
invokeTag('actionSubmit','g',115,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(40)
})
invokeTag('form','g',117,['url':([resource:leaseInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(41)
})
invokeTag('captureBody','sitemesh',119,[:],1)
printHtmlPart(42)
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
