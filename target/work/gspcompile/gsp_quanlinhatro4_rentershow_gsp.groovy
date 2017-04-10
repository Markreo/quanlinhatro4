import com.quanlinhatro.Renter
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_rentershow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/renter/show.gsp" }
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
createTagBody(2, {->
createClosureForHtmlPart(3, 3)
invokeTag('captureTitle','sitemesh',7,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',7,[:],2)
printHtmlPart(4)
})
invokeTag('captureHead','sitemesh',8,[:],1)
printHtmlPart(4)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('breadcrumbs','qlnhatro',10,['title':("Khách thuê"),'link':(createLink(controller: 'renter', action: 'index')),'current':(renterInstance.fullname)],-1)
printHtmlPart(5)
if(true && (flash.message)) {
printHtmlPart(6)
expressionOut.print(flash.message)
printHtmlPart(7)
}
printHtmlPart(8)
createTagBody(2, {->
printHtmlPart(9)
createClosureForHtmlPart(10, 3)
invokeTag('link','g',27,['rel':("renter_edit"),'class':("edit"),'action':("edit"),'resource':(renterInstance),'style':("margin-right: 10px")],3)
printHtmlPart(11)
createClosureForHtmlPart(12, 3)
invokeTag('link','g',28,['style':("color: #e25856"),'onclick':("return confirm('Bạn có chắc chắc là sẽ xóa?')"),'action':("delete"),'resource':(renterInstance)],3)
printHtmlPart(13)
})
invokeTag('form','g',29,['url':([resource:renterInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(14)
invokeTag('fieldValue','g',46,['bean':(renterInstance),'field':("fullname")],-1)
printHtmlPart(15)
if(true && (renterInstance?.sex)) {
printHtmlPart(16)
expressionOut.print(renterInstance.sex.name)
printHtmlPart(17)
}
printHtmlPart(18)
if(true && (renterInstance?.phone)) {
printHtmlPart(19)
invokeTag('fieldValue','g',64,['bean':(renterInstance),'field':("phone")],-1)
printHtmlPart(17)
}
printHtmlPart(18)
if(true && (renterInstance?.placeOfBirth)) {
printHtmlPart(20)
invokeTag('fieldValue','g',73,['bean':(renterInstance),'field':("placeOfBirth")],-1)
printHtmlPart(17)
}
printHtmlPart(18)
if(true && (renterInstance?.userID)) {
printHtmlPart(21)
invokeTag('fieldValue','g',82,['bean':(renterInstance),'field':("userID")],-1)
printHtmlPart(17)
}
printHtmlPart(18)
if(true && (renterInstance?.yearOfBirth)) {
printHtmlPart(22)
expressionOut.print(renterInstance.yearOfBirth)
printHtmlPart(17)
}
printHtmlPart(23)
invokeTag('set','g',119,['var':("rooms"),'value':(com.quanlinhatro.Room.list())],-1)
printHtmlPart(24)
invokeTag('set','g',120,['var':("room"),'value':(rooms?.find {renterInstance in it?.renter})],-1)
printHtmlPart(25)
invokeTag('select','g',122,['id':("renter_select_room"),'class':("form-control"),'name':("roomId"),'from':(com.quanlinhatro.Room.findAllByRegion(renterInstance.region)),'optionValue':("name"),'optionKey':("id"),'value':(room?.id),'noSelection':(['':'--Chọn phòng--'])],-1)
printHtmlPart(26)
expressionOut.print(createLink(controller: 'room', action: 'addToRenter'))
printHtmlPart(27)
expressionOut.print(renterInstance.id)
printHtmlPart(28)
})
invokeTag('captureBody','sitemesh',210,[:],1)
printHtmlPart(29)
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
