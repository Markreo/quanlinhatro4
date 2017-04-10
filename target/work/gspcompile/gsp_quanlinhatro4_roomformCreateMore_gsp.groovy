import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_quanlinhatro4_roomformCreateMore_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/room/formCreateMore.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
createTagBody(2, {->
createClosureForHtmlPart(3, 3)
invokeTag('captureTitle','sitemesh',10,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("main")],-1)
printHtmlPart(4)
})
invokeTag('captureHead','sitemesh',12,[:],1)
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(0)
invokeTag('breadcrumbs','qlnhatro',17,['title':("Phòng"),'link':(createLink(controller: 'room', action: 'list')),'current':("Đăng kí phòng mới")],-1)
printHtmlPart(5)
createTagBody(2, {->
printHtmlPart(6)
expressionOut.print(room.name?.replace('Phòng ',''))
printHtmlPart(7)
expressionOut.print(room.price)
printHtmlPart(8)
if(true && (ng)) {
printHtmlPart(9)
expressionOut.print(room.maxRenter)
printHtmlPart(10)
}
printHtmlPart(11)
invokeTag('set','g',54,['var':("types"),'value':(com.quanlinhatro.RoomType.findAllByRegion(region))],-1)
printHtmlPart(11)
if(true && (types)) {
printHtmlPart(12)
invokeTag('select','g',59,['rel':("room_type"),'name':("room.type"),'from':(types),'optionKey':("id"),'optionValue':("name"),'class':("form-control"),'noSelection':(['':'--Loại phòng--']),'value':(room.type?.id)],-1)
printHtmlPart(13)
}
printHtmlPart(14)
invokeTag('select','g',66,['name':("room.status"),'from':(com.quanlinhatro.Room.Status.values()),'optionValue':("name"),'class':("form-control"),'value':(room.status.id)],-1)
printHtmlPart(15)
expressionOut.print(room.note)
printHtmlPart(16)
for( df in (region.defaultRegion.sort {it.id}) ) {
printHtmlPart(17)
invokeTag('render','g',98,['template':("/defaultRegion/line_special"),'model':([df: df])],-1)
printHtmlPart(11)
}
printHtmlPart(18)
})
invokeTag('form','g',106,['url':([controller: 'room', action: 'saveMore']),'class':("form-horizontal"),'id':("room_create")],2)
printHtmlPart(19)
})
invokeTag('captureBody','sitemesh',117,[:],1)
printHtmlPart(20)
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
